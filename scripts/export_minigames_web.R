# ==============================================================================
# Exporta o grao oficial dos Minigames Data Zoom Amazonia para JSON estatico
# ==============================================================================
#
# Seguindo a arquitetura de dados web do Data Zoom Amazonia
# (ver datazoom_viz/data-raw/ARQUITETURA_dados_web.md e GUIA_base_long_para_json.md):
#   1. "Uma base, muitas derivacoes" / "Enviar o grao, nao a resposta":
#      O R pre-processa e cruza os .rds oficiais (gerados pelo pacote
#      datazoom.amazonia) para os 772 municipios oficiais da Amazonia Legal
#      (legal_amazon == 1) e seus 9 estados, exportando um unico arquivo JSON
#      enxuto e auditado. O navegador deriva os desafios diarios (Grid 3x3,
#      Versus Diario e Modo Streak) em tempo de execucao.
#   2. "Os dados precisam fazer sentido":
#      - Filtro estrito de Amazonia Legal: 772 municipios (exclui os 36
#        municipios do leste do Maranhao com legal_amazon == 0).
#      - Apenas anos completos consolidados: em COMEX, filtra explicitamente
#        !ano_parcial (usando 2025, ultimo ano fechado); no PRODES incremento,
#        usa o ultimo ano com medicao consolidada nao-zerada (2023).
#      - Nomes acentuados oficiais extraidos de mapbiomas_cobertura_munic.rds.
#
# Como rodar (a partir da raiz do repositorio amazonia-site):
#   Rscript scripts/export_minigames_web.R
#
# Variaveis de ambiente opcionais:
#   DATAZOOM_VIZ_DIR : caminho para o repositorio datazoom_viz
#                      (default: "../datazoom_viz")
#   AMAZONIA_PKG_DIR : caminho para o repositorio datazoom.amazonia
#                      (default: "../datazoom.amazonia")
#   OUT_JSON_PATH    : caminho do JSON de saida
#                      (default: "assets/data/minigames_data.json")
# ==============================================================================

suppressPackageStartupMessages({
  library(dplyr)
  library(tidyr)
  library(jsonlite)
})

viz_dir <- Sys.getenv("DATAZOOM_VIZ_DIR", unset = "../datazoom_viz")
pkg_dir <- Sys.getenv("AMAZONIA_PKG_DIR", unset = "../datazoom.amazonia")
out_path <- Sys.getenv("OUT_JSON_PATH", unset = "assets/data/minigames_data.json")

data_dir <- file.path(viz_dir, "data")
if (!dir.exists(data_dir)) {
  stop("Diretorio de dados .rds nao encontrado em: ", normalizePath(data_dir, mustWork = FALSE))
}

cat("Lendo referencia oficial de municipios da Amazonia Legal...\n")
mun_rda_path <- file.path(pkg_dir, "data", "municipalities.rda")
if (file.exists(mun_rda_path)) {
  load(mun_rda_path)
} else if (requireNamespace("datazoom.amazonia", quietly = TRUE)) {
  municipalities <- datazoom.amazonia::municipalities
} else {
  stop("Arquivo municipalities.rda nao encontrado em ", mun_rda_path)
}

legal_munis <- municipalities %>%
  filter(legal_amazon == 1) %>%
  transmute(
    cod_ibge = as.character(code_muni),
    uf = as.character(abbrev_state),
    state_name = case_when(
      abbrev_state == "AC" ~ "Acre",
      abbrev_state == "AM" ~ "Amazonas",
      abbrev_state == "AP" ~ "Amap\u00e1",
      abbrev_state == "MA" ~ "Maranh\u00e3o",
      abbrev_state == "MT" ~ "Mato Grosso",
      abbrev_state == "PA" ~ "Par\u00e1",
      abbrev_state == "RO" ~ "Rond\u00f4nia",
      abbrev_state == "RR" ~ "Roraima",
      abbrev_state == "TO" ~ "Tocantins",
      TRUE ~ as.character(abbrev_state)
    ),
    name_fallback = as.character(municipality_mapbiomas)
  )

stopifnot("Amazonia Legal deve ter exatamente 772 municipios" = nrow(legal_munis) == 772)

# ------------------------------------------------------------------------------
# 1. MapBiomas Cobertura do Solo (2024) - load_mapbiomas()
#    Unidade original no .rds: Forest/Pasture/Agriculture em ha -> /100 para km2
# ------------------------------------------------------------------------------
cat("1/7 Processando MapBiomas Cobertura (mapbiomas_cobertura_munic.rds)...\n")
mb_raw <- readRDS(file.path(data_dir, "mapbiomas_cobertura_munic.rds"))
mb_year <- max(as.integer(mb_raw$time), na.rm = TRUE)

mb_final <- mb_raw %>%
  filter(as.integer(time) == mb_year) %>%
  transmute(
    cod_ibge = as.character(municipality_code),
    name_accented = sub(" - .*$", "", as.character(group)),
    area_km2 = round(as.numeric(area_km2), 1),
    forest_km2 = round(coalesce(as.numeric(Forest), 0) / 100, 1),
    pasture_km2 = round(coalesce(as.numeric(Pasture), 0) / 100, 1),
    agri_km2 = round(coalesce(as.numeric(Agriculture), 0) / 100, 1)
  ) %>%
  mutate(
    forest_pct = round(pmin(100, pmax(0, 100 * forest_km2 / pmax(1, area_km2))), 1)
  ) %>%
  distinct(cod_ibge, .keep_all = TRUE)

# ------------------------------------------------------------------------------
# 2. PPM Efetivo da Pecuaria (2024) - load_ppm()
#    num_v2670 = Efetivo de bovinos (cabecas)
# ------------------------------------------------------------------------------
cat("2/7 Processando IBGE PPM (ppm_municipality_livestock_inventory.rds)...\n")
ppm_raw <- readRDS(file.path(data_dir, "ppm_municipality_livestock_inventory.rds"))
ppm_year <- max(as.integer(ppm_raw$time), na.rm = TRUE)

ppm_final <- ppm_raw %>%
  filter(as.integer(time) == ppm_year) %>%
  transmute(
    cod_ibge = as.character(geo_id),
    cattle = round(coalesce(as.numeric(num_v2670), 0))
  ) %>%
  distinct(cod_ibge, .keep_all = TRUE)

# ------------------------------------------------------------------------------
# 3. PAM Producao Agricola Municipal (2024) - load_pam()
#    quant_v40124 = Soja (ton), quant_v40122 = Milho (ton),
#    quant_v40119 = Mandioca (ton), quant_v40102 = Arroz (ton)
# ------------------------------------------------------------------------------
cat("3/7 Processando IBGE PAM (pam_municipality_all_crops2024.rds)...\n")
pam_raw <- readRDS(file.path(data_dir, "pam_municipality_all_crops2024.rds"))
pam_year <- max(as.integer(pam_raw$ano), na.rm = TRUE)

pam_final <- pam_raw %>%
  filter(as.integer(ano) == pam_year) %>%
  transmute(
    cod_ibge = as.character(geo_id),
    soy = round(coalesce(as.numeric(quant_v40124), 0)),
    corn = round(coalesce(as.numeric(quant_v40122), 0)),
    cassava = round(coalesce(as.numeric(quant_v40119), 0)),
    rice = round(coalesce(as.numeric(quant_v40102), 0))
  ) %>%
  distinct(cod_ibge, .keep_all = TRUE)

# ------------------------------------------------------------------------------
# 4. Comex Stat Exportacoes Municipais - load_br_trade()
#    Filtra ultimo ano COMPLETO (!ano_parcial) para nao usar ano incompleto
# ------------------------------------------------------------------------------
cat("4/7 Processando MDIC Comex Stat (comex_exp_munic_base.rds)...\n")
comex_raw <- readRDS(file.path(data_dir, "comex_exp_munic_base.rds"))
comex_year <- max(as.integer(comex_raw$ano[!comex_raw$ano_parcial]), na.rm = TRUE)

comex_final <- comex_raw %>%
  filter(as.integer(ano) == comex_year, !ano_parcial) %>%
  group_by(cod_ibge = as.character(cod_municipio)) %>%
  summarise(exports_usd = round(sum(as.numeric(valor_fob), na.rm = TRUE)), .groups = "drop")

# ------------------------------------------------------------------------------
# 5. PRODES Desmatamento (INPE) - load_prodes()
#    Combina acumulado ate 2021 (prodes.rds) com incrementos 2022-2023
#    (prodes_2022_2024.rds, onde 2023 e o ultimo ano consolidado > 0)
# ------------------------------------------------------------------------------
cat("5/7 Processando INPE PRODES (prodes.rds + prodes_2022_2024.rds)...\n")
prodes_acc <- readRDS(file.path(data_dir, "prodes.rds")) %>%
  filter(as.integer(ano) == 2021) %>%
  transmute(
    cod_ibge = as.character(cod_munic_ibge),
    deforest_2021 = coalesce(as.numeric(desmatado), 0)
  ) %>%
  distinct(cod_ibge, .keep_all = TRUE)

prodes_inc_raw <- readRDS(file.path(data_dir, "prodes_2022_2024.rds")) %>%
  mutate(
    ano_int = as.integer(ano),
    desm = coalesce(as.numeric(desmatamento_km2), 0)
  )

prodes_valid_years <- prodes_inc_raw %>%
  group_by(ano_int) %>%
  summarise(tot = sum(desm, na.rm = TRUE), .groups = "drop") %>%
  filter(tot > 0)
prodes_last_year <- max(prodes_valid_years$ano_int, na.rm = TRUE)

prodes_inc_sum <- prodes_inc_raw %>%
  filter(ano_int <= prodes_last_year) %>%
  group_by(cod_ibge = as.character(cod_ibge)) %>%
  summarise(
    inc_22_23 = sum(desm, na.rm = TRUE),
    deforest_inc_km2 = sum(desm[ano_int == prodes_last_year], na.rm = TRUE),
    .groups = "drop"
  )

# ------------------------------------------------------------------------------
# 6. PIB Municipal, Populacao e CEMPRE (dz_munic.rds - 2020)
#    Remove coluna geometry antes de manipular (padrao ARQUITETURA_dados_web.md)
# ------------------------------------------------------------------------------
cat("6/7 Processando IBGE PIB/Pop/CEMPRE (dz_munic.rds)...\n")
dz_munic <- as.data.frame(readRDS(file.path(data_dir, "dz_munic.rds")))
dz_munic$geometry <- NULL
dz_munic$year <- as.integer(format(dz_munic$ano, "%Y"))
dz_year <- max(dz_munic$year[!is.na(dz_munic$pop)], na.rm = TRUE)

dz_final <- dz_munic %>%
  filter(!is.na(cod_ibge), year == dz_year) %>%
  transmute(
    cod_ibge = as.character(cod_ibge),
    pop = round(coalesce(as.numeric(pop), 0)),
    gdp_mil = round(coalesce(as.numeric(gdp), 0)),
    gd_ppc = round(coalesce(as.numeric(gd_ppc), 0)),
    empresas = round(coalesce(as.numeric(cempre_n_empresas_organizacoes), 0)),
    ocupados = round(coalesce(as.numeric(cempre_n_ocupados), 0))
  ) %>%
  distinct(cod_ibge, .keep_all = TRUE)

# ------------------------------------------------------------------------------
# 7. IPS Amazonia (ips_2021.rds - IMAZON / IPS Brasil)
# ------------------------------------------------------------------------------
cat("7/7 Processando IPS Amazonia (ips_2021.rds)...\n")
ips_final <- readRDS(file.path(data_dir, "ips_2021.rds")) %>%
  transmute(
    cod_ibge = as.character(cod_ibge),
    ips = round(coalesce(as.numeric(ips_amazonia_2021), 0), 1)
  ) %>%
  distinct(cod_ibge, .keep_all = TRUE)

# ------------------------------------------------------------------------------
# Consolidacao da Tabela de Municipios (772 linhas)
# ------------------------------------------------------------------------------
muni_table <- legal_munis %>%
  left_join(mb_final, by = "cod_ibge") %>%
  left_join(dz_final, by = "cod_ibge") %>%
  left_join(ppm_final, by = "cod_ibge") %>%
  left_join(pam_final, by = "cod_ibge") %>%
  left_join(comex_final, by = "cod_ibge") %>%
  left_join(prodes_acc, by = "cod_ibge") %>%
  left_join(prodes_inc_sum, by = "cod_ibge") %>%
  left_join(ips_final, by = "cod_ibge") %>%
  mutate(
    name = coalesce(name_accented, name_fallback),
    cattle = coalesce(cattle, 0),
    soy = coalesce(soy, 0),
    corn = coalesce(corn, 0),
    cassava = coalesce(cassava, 0),
    rice = coalesce(rice, 0),
    exports_usd = coalesce(exports_usd, 0),
    deforest_acc_km2 = round(coalesce(deforest_2021, 0) + coalesce(inc_22_23, 0), 1),
    deforest_inc_km2 = round(coalesce(deforest_inc_km2, 0), 1)
  ) %>%
  select(
    id = cod_ibge,
    name,
    uf,
    pop,
    area_km2,
    gdp_mil,
    gd_ppc,
    cattle,
    soy,
    corn,
    cassava,
    rice,
    exports_usd,
    forest_km2,
    forest_pct,
    pasture_km2,
    agri_km2,
    deforest_acc_km2,
    deforest_inc_km2,
    ips,
    empresas,
    ocupados
  ) %>%
  arrange(uf, name)

# ------------------------------------------------------------------------------
# Consolidacao da Tabela dos 9 Estados (agregacao oficial da Amazonia Legal)
# Nota: calcula medias ponderadas ANTES de sobrescrever `pop` e `area_km2`.
# ------------------------------------------------------------------------------
state_table <- muni_table %>%
  left_join(distinct(legal_munis, uf, state_name), by = "uf") %>%
  group_by(uf, name = state_name) %>%
  summarise(
    n_munis = n(),
    ips_weighted = round(sum(ips * pop, na.rm = TRUE) / sum(pop, na.rm = TRUE), 1),
    pop_sum = sum(pop, na.rm = TRUE),
    area_sum = round(sum(area_km2, na.rm = TRUE), 1),
    gdp_mil_sum = sum(gdp_mil, na.rm = TRUE),
    gd_ppc_calc = round((sum(gdp_mil, na.rm = TRUE) * 1000) / sum(pop, na.rm = TRUE)),
    cattle = sum(cattle, na.rm = TRUE),
    soy = sum(soy, na.rm = TRUE),
    corn = sum(corn, na.rm = TRUE),
    cassava = sum(cassava, na.rm = TRUE),
    rice = sum(rice, na.rm = TRUE),
    exports_usd = sum(exports_usd, na.rm = TRUE),
    forest_km2 = round(sum(forest_km2, na.rm = TRUE), 1),
    forest_pct = round(100 * sum(forest_km2, na.rm = TRUE) / sum(area_km2, na.rm = TRUE), 1),
    pasture_km2 = round(sum(pasture_km2, na.rm = TRUE), 1),
    agri_km2 = round(sum(agri_km2, na.rm = TRUE), 1),
    deforest_acc_km2 = round(sum(deforest_acc_km2, na.rm = TRUE), 1),
    deforest_inc_km2 = round(sum(deforest_inc_km2, na.rm = TRUE), 1),
    empresas = sum(empresas, na.rm = TRUE),
    ocupados = sum(ocupados, na.rm = TRUE),
    .groups = "drop"
  ) %>%
  transmute(
    uf,
    name,
    n_munis,
    pop = pop_sum,
    area_km2 = area_sum,
    gdp_mil = gdp_mil_sum,
    gd_ppc = gd_ppc_calc,
    cattle,
    soy,
    corn,
    cassava,
    rice,
    exports_usd,
    forest_km2,
    forest_pct,
    pasture_km2,
    agri_km2,
    deforest_acc_km2,
    deforest_inc_km2,
    ips = ips_weighted,
    empresas,
    ocupados
  ) %>%
  arrange(name)

# ------------------------------------------------------------------------------
# Validacoes de Sanidade ("os dados precisam fazer sentido")
# ------------------------------------------------------------------------------
stopifnot(
  "Devem existir exatamente 772 municipios na Amazonia Legal" = nrow(muni_table) == 772,
  "Devem existir exatamente 9 estados na Amazonia Legal" = nrow(state_table) == 9,
  "Nenhum NA permitido na tabela de municipios" = sum(is.na(muni_table)) == 0,
  "Nenhum NA permitido na tabela de estados" = sum(is.na(state_table)) == 0,
  "IPS estadual deve estar entre 40 e 80" = all(state_table$ips >= 40 & state_table$ips <= 80),
  "IPS municipal deve estar entre 30 e 85" = all(muni_table$ips >= 30 & muni_table$ips <= 85),
  "Percentual de floresta deve estar entre 0 e 100" = all(muni_table$forest_pct >= 0 & muni_table$forest_pct <= 100),
  "Populacao positiva em todos os municipios" = all(muni_table$pop > 0)
)

# ------------------------------------------------------------------------------
# Metadados e Dicionario de Indicadores
# ------------------------------------------------------------------------------
payload <- list(
  meta = list(
    generated_at = format(Sys.time(), "%Y-%m-%dT%H:%M:%SZ", tz = "UTC"),
    package = "datazoom.amazonia",
    scope = "Amaz\u00f4nia Legal (772 munic\u00edpios oficiais - legal_amazon == 1)",
    n_states = nrow(state_table),
    n_municipalities = nrow(muni_table),
    years = list(
      mapbiomas = mb_year,
      ppm = ppm_year,
      pam = pam_year,
      comex = comex_year,
      prodes_acc = prodes_last_year,
      prodes_inc = prodes_last_year,
      pib_cempre = dz_year,
      ips = 2021L
    )
  ),
  dictionary = list(
    pop = list(label = "Popula\u00e7\u00e3o Residente", unit = "hab.", year = dz_year, source = "IBGE / Estimativas & Censo (load_population)", fn = "load_population"),
    area_km2 = list(label = "\u00c1rea Territorial", unit = "km\u00b2", year = mb_year, source = "MapBiomas / IBGE (load_mapbiomas)", fn = "load_mapbiomas"),
    gdp_mil = list(label = "PIB Municipal Total", unit = "Mil R$", year = dz_year, source = "IBGE / PIB dos Munic\u00edpios (load_pibmunic)", fn = "load_pibmunic"),
    gd_ppc = list(label = "PIB per capita", unit = "R$", year = dz_year, source = "IBGE / PIB dos Munic\u00edpios (load_pibmunic)", fn = "load_pibmunic"),
    cattle = list(label = "Efetivo de Bovinos", unit = "cabe\u00e7as", year = ppm_year, source = "IBGE / Pesquisa da Pecu\u00e1ria Municipal - PPM (load_ppm)", fn = "load_ppm"),
    soy = list(label = "Produ\u00e7\u00e3o de Soja", unit = "toneladas", year = pam_year, source = "IBGE / Produ\u00e7\u00e3o Agr\u00edcola Municipal - PAM (load_pam)", fn = "load_pam"),
    corn = list(label = "Produ\u00e7\u00e3o de Milho", unit = "toneladas", year = pam_year, source = "IBGE / Produ\u00e7\u00e3o Agr\u00edcola Municipal - PAM (load_pam)", fn = "load_pam"),
    cassava = list(label = "Produ\u00e7\u00e3o de Mandioca", unit = "toneladas", year = pam_year, source = "IBGE / Produ\u00e7\u00e3o Agr\u00edcola Municipal - PAM (load_pam)", fn = "load_pam"),
    rice = list(label = "Produ\u00e7\u00e3o de Arroz", unit = "toneladas", year = pam_year, source = "IBGE / Produ\u00e7\u00e3o Agr\u00edcola Municipal - PAM (load_pam)", fn = "load_pam"),
    exports_usd = list(label = "Exporta\u00e7\u00f5es Totais (FOB)", unit = "US$ FOB", year = comex_year, source = "MDIC / Comex Stat (load_br_trade)", fn = "load_br_trade"),
    forest_km2 = list(label = "Cobertura Florestal Natural", unit = "km\u00b2", year = mb_year, source = "MapBiomas Cole\u00e7\u00e3o 9 (load_mapbiomas)", fn = "load_mapbiomas"),
    forest_pct = list(label = "Propor\u00e7\u00e3o de Cobertura Florestal", unit = "% da \u00e1rea", year = mb_year, source = "MapBiomas Cole\u00e7\u00e3o 9 (load_mapbiomas)", fn = "load_mapbiomas"),
    pasture_km2 = list(label = "\u00c1rea de Pastagem", unit = "km\u00b2", year = mb_year, source = "MapBiomas Cole\u00e7\u00e3o 9 (load_mapbiomas)", fn = "load_mapbiomas"),
    agri_km2 = list(label = "\u00c1rea Agropecu\u00e1ria Total", unit = "km\u00b2", year = mb_year, source = "MapBiomas Cole\u00e7\u00e3o 9 (load_mapbiomas)", fn = "load_mapbiomas"),
    deforest_acc_km2 = list(label = "Desmatamento Acumulado PRODES", unit = "km\u00b2", year = prodes_last_year, source = "INPE / PRODES (load_prodes)", fn = "load_prodes"),
    deforest_inc_km2 = list(label = "Incremento Anual de Desmatamento", unit = "km\u00b2", year = prodes_last_year, source = "INPE / PRODES (load_prodes)", fn = "load_prodes"),
    ips = list(label = "\u00cdndice de Progresso Social (IPS)", unit = "pontos (0-100)", year = 2021L, source = "IMAZON / IPS Amaz\u00f4nia (load_ips)", fn = "load_ips"),
    empresas = list(label = "Empresas e Organiza\u00e7\u00f5es Ativas", unit = "unidades", year = dz_year, source = "IBGE / CEMPRE (load_cempre)", fn = "load_cempre"),
    ocupados = list(label = "Pessoal Ocupado Total", unit = "pessoas", year = dz_year, source = "IBGE / CEMPRE (load_cempre)", fn = "load_cempre")
  ),
  states = state_table,
  municipalities = muni_table
)

dir.create(dirname(out_path), recursive = TRUE, showWarnings = FALSE)
json_txt <- toJSON(
  payload,
  dataframe = "rows",
  auto_unbox = TRUE,
  digits = 1,
  na = "null",
  pretty = FALSE
)
writeLines(json_txt, out_path, useBytes = TRUE)

size_kb <- round(file.info(out_path)$size / 1024, 1)
cat(sprintf(
  "Sucesso! Exportado %s (%s KB) com %d estados e %d municipios.\n",
  out_path, size_kb, nrow(state_table), nrow(muni_table)
))

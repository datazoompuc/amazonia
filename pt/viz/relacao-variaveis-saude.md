---
layout: default
lang: pt
title: "Relação entre Variáveis de Saúde"
description: "Gráfico de dispersão de relação entre variáveis sociodemográficas, de desmatamento e de saúde"
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style="max-width: 1000px"> Explore Relação entre Variáveis de Saúde nos Municípios da Amazônia Legal</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center">
  Em nosso gráfico dinâmico, onde cada círculo corresponde a um município, é possível selecionar diversas variáveis de várias fontes. 
  Nos dois eixos é possível escolher os dados do INPE, IBGE, DATASUS e IMAZON, e assim, observar a relação entre eles. 
  Aqui, as variáveis de relacionadas a saúde ganham destaque
  Além disso, existe a opção de colocar em escala log essas variáveis. Por fim, o usuário consegue selecionar a cor do marcador e tamanho do marcador com base nesses banco de dados.
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_bubble_dz_munic_saude/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Relação entre variáveis: Saúde — Data Zoom Amazônia"
  ></iframe>
</div>

<br>
<br>
<div class="container my-4">
  <div class="row">
    <div class="col-md-3" style="text-align:left;">
      <h2 style="font-size:20px;line-height:1.5">
        INFORMAÇÕES SOBRE A BASE DE DADOS UTILIZADA NESSA VISUALIZAÇÃO
      </h2><br><br><br>
    </div>
    <div class="col-md-9">
     <div class="rodape_viz">
       <!-- descrição dos dados usados-->
       <p>
        <b>Censo Demográfico:</b> É uma grande pesquisa que ocorre a cada 10 anos, onde recenseadores vão de casa em casa preenchendo um enorme cadastro com informações detalhadas sobre a população do país.<br><br>
        <b>DATASUS:</b> Órgão da Secretaria de Gestão Estratégica e Participativa do Ministério da Saúde, com a responsabilidade de coletar, processar e disseminar informações sobre saúde.<br><br>
        <b>PRODES:</b> O projeto utiliza satélites para monitorar o desmatamento na Amazônia Legal brasileira. Os dados brutos relatam a área desmatada com corte raso total e incremental ano a ano em nível de município.<br><br>
        <b>CEMPRE:</b> Carrega informações sobre empresas e demais organizações e suas respectivas unidades locais formalmente constituídas, cadastradas no CNPJ – Cadastro Nacional de Pessoas Jurídicas.<br><br>
        <b>PPM:</b> Os dados reúnem informações sobre os efetivos da pecuária existentes no município, além da produção de origem animal, e o valor da produção durante o ano de referência. Os dados disponíveis têm uma frequência anual e estão disponíveis a partir do ano de 1945. <br><br>
        <b>PAM:</b> Pesquisa anual de informações sobre produtos agrícolas como quantidade produzida, área cultivada e colhida, quantidade média de produto e valor monetário de cada cultura. <br><br>
        Quer explorar mais? Acesse o nosso <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Atenção</strong>: Esta visualização é alimentada por dados compilados de diversas fontes e tratados através do pacote 
        <code class = "code_viz">datazoom.amazonia</code> no <code class = "code_viz">R</code> (funções <code class = "code_viz">load_prodes()</code>, <code class = "code_viz">load_cempre()</code>, <code class = "code_viz">load_population()</code>, <code class = "code_viz">load_ppm()</code> e <code class = "code_viz">load_pam()</code>),
        do pacote <code class = "code_viz">datazoom.saude</code> no <code class = "code_viz">R</code> (funções <code class = "code_viz">load_mortality()</code> e <code class = "code_viz">load_hospital_beds()</code>)
        e do pacote <code class = "code_viz">datazoom_social_Stata</code> no <code class = "code_viz">STATA</code> (função <code class = "code_viz">datazoom_censo</code>) 
        e está sujeita a erro diante de 
        alterações nas fontes externas. Caso o usuário identifique alguma discrepância de informação, solicitamos que reporte nos 
        <a href="https://github.com/datazoompuc/datazoom.amazonia/issues" target="_blank" rel="noreferrer noopener">Issues do GitHub</a>.
      </p>
       <br><br>
       <p>
        <a href="{{ site.baseurl }}/pt/viz/">&lt; Voltar para Visualizações</a>
       </p>
     </div>

      
   </div>
  </div>
</div>

<!-- Ajustes simples para a altura do iframe em telas menores -->
<style>
  @media (max-width: 992px) { .container-fluid iframe { height: 78vh !important; } }
  @media (max-width: 576px) { .container-fluid iframe { height: 82vh !important; } }
</style>
<br><br>

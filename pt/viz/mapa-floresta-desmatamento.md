---
layout: default
lang: pt
title: "Mapa de Área de Floresta ou Desmatada"
description: "Mapa dos municípios da Amazônia Legal por área de floresta ou desmatada"
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style = "margin: 0px 200px;">Mapa de Área de Floresta ou Área Desmatada por Município da Amazônia Legal</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center" style="font-size:18px;color:#3f8513; margin:20px 300px;">
  Em nosso mapa, selecione a variável de interesse - área de floresta, não-floresta, desmatatada, incremento de desmatamento e hidrografia.
  Também é possível escolher as variáveis como proporção da área dos municípios.
  Aperte o play para ver como o mapa muda ao longo dos anos.
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_map_dz_munic_prodes/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Mapas: desmatamento - Data Zoom Amazônia"
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
        Dados coletados do <a href="https://www.gov.br/inpe/" target="_blank" rel="noreferrer noopener">Instituto Nacional de Pesquisas Espaciais (INPE)</a>.<br>
        O projeto PRODES usa satélites para monitorar o desmatamento na Amazônia Legal brasileira. Os dados brutos relatam a área desmatada com corte raso total e incremental ano a ano em nível de município. <br><br>
        Quer explorar mais? Acesse o nosso <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Atenção</strong>: Esta visualização é alimentada por dados tratados através do pacote 
        <code class = "code_viz">datazoom.amazonia</code> no <code class = "code_viz">R</code> (função <code class = "code_viz">load_prodes()</code>) e está sujeita a erro diante de 
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

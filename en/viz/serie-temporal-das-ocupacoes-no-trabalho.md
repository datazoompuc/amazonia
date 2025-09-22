---
layout: default
lang: en
title: "Labour Occupations Time Series"
description: "Labour Occupations Time Series"
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style="max-width: 1000px">Labour Occupations Time Series</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center">
  On our dynamic graph, it is possible to change variables and choose information about the types of occupation in the labor market of the PNAD Contínua – IBGE. It is possible to choose one type of occupation for each state and observe the temporal evolution of indicators such as the number of employed, average income, and salary mass.
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_ts_ibge_pnadc_cod_en"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Labour Occupations Time Series"
  ></iframe>
</div>

<br>
<br>
<div class="container my-4">
  <div class="row">
    <div class="col-md-3" style="text-align:left;">
      <h2 style="font-size:20px;line-height:1.5">
        INFORMATION ABOUT THE DATABASE USED IN THIS VISUALIZATION
      </h2><br><br><br>
    </div>
    <div class="col-md-9">
     <div class="rodape_viz">
       <!-- descrição dos dados usados-->
      <p>
        Data collected from the <a href="https://www.ibge.gov.br/estatisticas/sociais/trabalho/17270-pnad-continua">Continuous National Household Sample Survey – IBGE)</a>. 
        PNAD “Contínua” is a survey in which each household is interviewed for five consecutive trimesters.<br><br>
        Want to explore more? Access our <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Attention</strong>: This visualization is fed by data processed through the 
        <code class = "code_viz">datazoom_social</code> package in <code class = "code_viz">Stata</code> (<code class = "code_viz">datazoom_pnadcontinua [ , options]</code> function) and is subject to error due to changes in external sources. If the user identifies any discrepancy in information, we request that you report it in
        <a href="https://github.com/datazoompuc/datazoom_social_Stata/issues" target="_blank" rel="noreferrer noopener">GitHub Issues</a>.
      </p>
       <br><br>
       <p>
        <a href="{{ site.baseurl }}/en/viz/">&lt; Back to Visualizations</a>
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

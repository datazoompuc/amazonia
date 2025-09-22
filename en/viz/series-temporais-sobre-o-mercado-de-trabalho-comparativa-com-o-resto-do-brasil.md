---
layout: default
lang: en
title: "Labor Market Time Series"
description: "Labor Market Time Series"
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style="max-width: 1000px">Labor Market Time Series</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center">
  On our dynamic graph, it is possible to change the variables and choose information about the labor market from the PNAD Contínua – IBGE. Additionally, there is the option to select the regional cut and group by age range, years of study or gender of your preference.
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_ts_ibge_pnadc_trabalho_en"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Time Series: Labor Market"
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

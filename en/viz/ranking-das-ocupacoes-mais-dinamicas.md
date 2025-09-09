---
layout: default
lang: en
title: "Ranking of the Most Dynamic Occupations"
description: "Ranking of the Most Dynamic Occupations"
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style = "margin: 0px 200px;">Ranking of the Most Dynamic Occupations</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center" style="font-size:18px;color:#3f8513; margin:20px 300px;">
  On our dynamic graph, it is possible to change the variables, and select different types of employed people. In addition, each color of the chart represents an economic activity, and you can choose the period you want.  Have you tried pressing the play button to see the graph change over time?
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_rk_ibge_pnadc_cod/_en"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Ranking of the Most Dynamic Occupations"
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

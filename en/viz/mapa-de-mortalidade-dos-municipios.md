---
layout: default
lang: en
title: "Municipalities’ Mortality Map"
description: "Health conditions at Amazon: Mortality at the municipal level"
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style = "margin: 0px 200px;">Municipalities’ Mortality Map</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center" style="font-size:18px;color:#3f8513; margin:20px 300px;">
  In our chart, it is possible to change the variable, which makes the user able to pick different death causes. In addition, the option of selecting the year in which the analysis is desired exists.<br>
  Have you tried pressing play to see the chart changing over time?
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_ts_saude_municipality_eng/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Health conditions at Amazon: Mortality at the municipal level"
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
        Data harvested and treated by <a href="https://datasus.saude.gov.br/">DATASUS</a>. 
        It is an organ of the Strategic and Participatory Management Office of the Ministry of Health, that deals with the processes of collecting, processing, and disseminating health data and informations. <br><br>
        Want to explore more? Access our <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Attention</strong>: This visualization is fed by data processed through the 
        <code class = "code_viz">datazoom.amazonia</code> package in <code class = "code_viz">R</code> (<code class = "code_viz">datasus_sim_do()</code> function) and is subject to error due to changes in external sources. If the user identifies any discrepancy in information, we request that you report it in
        <a href="https://github.com/datazoompuc/datazoom.amazonia/issues" target="_blank" rel="noreferrer noopener">GitHub Issues</a>.
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

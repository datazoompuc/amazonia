---
layout: default
lang: en
title: "Municipalities’ Land Coverage Time Series"
description: "Dynamic map with annual land usage and coverage in Brazil."
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style="max-width: 1000px">Municipalities’ Land Coverage Time Series</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center">
  On our dynamic chart, it is possible to change the variables and choose information about MAPBIOMAS. In addition, there is the option to use a log scale and/or proportional to the initial year. Finally, the user can select the desired geographical subdivision.
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_ts_mapbiomas_cobertura_munic_en/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Maps: deforestation — Data Zoom Amazônia"
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
        Data collected from <a href="https://brasil.mapbiomas.org/" target="_blank" rel="noreferrer noopener">MAPBIOMAS</a>. 
        MAPBIOMAS is a multi-institutional project involving universities, NGOs and technology companies that promotes annual mapping of land cover and use in Brazil over the last three decades and provides open and free data and maps. <br><br>
        Want to explore more? Access our <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Attention</strong>: This visualization is fed by data processed through the 
        <code class = "code_viz">datazoom.amazonia</code> package in <code class = "code_viz">R</code> (<code class = "code_viz">load_mapbiomas()</code> function) and is subject to error due to changes in external sources. If the user identifies any discrepancy in information, we request that you report it in
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

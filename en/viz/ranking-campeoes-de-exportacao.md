---
layout: default
lang: en
title: "Exports Champion Municipalities"
description: "Time Series of Total Exports Value by Destination Country"
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style = "margin: 0px 200px;"> Time Series of Total Exports Value by Destination Country</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center" style="font-size:18px;color:#3f8513; margin:20px 300px;">
  In our dynamic graph, follow which municipalities in the Legal Amazon are champions in exports in each year.
  You can select the desired goods category.
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_rk_comex_exp_munic_produtosamz_en/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Time series: foreign trade — Data Zoom Amazônia"
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
        Data collected and treated by <a href="https://www.gov.br/mdic/pt-br/assuntos/comercio-exterior/estatisticas/base-de-dados-bruta/">Comex Stat</a>. 
        The Comex data set gathers data extracted from Siscomex (Integrated Foreign Trade System), which is a database containing information on all products imported or exported from Brazil.<br><br>
        Want to explore more? Access our <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Attention</strong>: This visualization is fed by data processed through the 
        <code class = "code_viz">datazoom.amazonia</code> package in <code class = "code_viz">R</code> (<code class = "code_viz">load_br_trade()</code> function) and is subject to error due to changes in external sources. If the user identifies any discrepancy in information, we request that you report it in
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

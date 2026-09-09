---
layout: default
lang: en
title: "Exports by Municipality"
description: "Foreign Trade in the Legal Amazon: ranking, composition, and evolution of exports by municipality and product category"
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style="max-width: 1000px">Legal Amazon Exports by Municipality and Product Category</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center">
  Explore the Legal Amazon's foreign trade across seven views: ranking of exporting municipalities by year, export composition by product category — for the whole region or for a single municipality —, change between two years, long-term trends by municipality, comparison across selected municipalities, and a municipality ranking for one specific product (among more than a thousand categories). Values are reported in US$.
</p>
<br>
<!-- link do app -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.com.br/datazoom_viz_web/ts_comex_exp_municipio/?lang=en"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Legal Amazon exports by municipality and product category — Data Zoom Amazônia"
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

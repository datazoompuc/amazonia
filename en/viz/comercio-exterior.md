---
layout: default
title: Foreign Trade
lang: en
description: "Foreign trade in the Legal Amazon: export value and quantity by municipality, product and destination country"
---

<link rel="stylesheet" href="style.css">

<br>

<h1 class="title-about">Foreign Trade</h1>

<br>

<p class="text-center" style="max-width: 900px; margin: 0 auto;">
  Explore the Legal Amazon's exports from 1997 to today: municipality ranking,
  composition by product category, year-over-year change, trends, free comparison
  and a map. Switch between <strong>value</strong> in dollars and
  <strong>quantity</strong> in kilos, and break the data down by municipality,
  product or destination country.
</p>

<br>

<!-- The static app, served by GitHub Pages from the datazoom_viz repository -->
<div class="container-fluid p-0">
  <iframe
    class="viz-embed"
    src="{{ site.viz_app_base }}/comex_exp_municipio/?lang=en"
    width="100%"
    frameborder="0"
    allowfullscreen
    loading="lazy"
    title="Foreign trade in the Legal Amazon — Data Zoom"
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
      <p>
        Data collected and treated by <a href="https://www.gov.br/mdic/pt-br/assuntos/comercio-exterior/estatisticas/base-de-dados-bruta/" target="_blank" rel="noreferrer noopener">Comex Stat</a>.
        The Comex data set gathers data extracted from Siscomex (Integrated Foreign Trade System), which is a database
        containing information on all products imported or exported from Brazil.<br><br>
        Want to explore more? Access our <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Attention</strong>: This visualization is fed by data processed through the
        <code class="code_viz">datazoom.amazonia</code> package in <code class="code_viz">R</code>
        (<code class="code_viz">load_br_trade()</code> function) and is subject to error due to changes in external sources.
        The most recent year may be incomplete, in which case the app labels how many months have been published so far.
        If the user identifies any discrepancy in information, we request that you report it in
        <a href="https://github.com/datazoompuc/datazoom.amazonia/issues" target="_blank" rel="noreferrer noopener">GitHub Issues</a>.
      </p>
     </div>
   </div>
  </div>
</div>

<br>

<h2 class="title-about" style="font-size: 28px;">Other foreign trade visualizations</h2>

<br>

<div class="imagens-container">
   <div class="icone-bloco">
    <a href="{{ site.baseurl }}/en/viz/sankey-do-volume-de-exportacao-da-amazonia-por-pais-de-destino" target="_blank" rel="noopener noreferrer">
      <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_sankey_exp.jpg" alt="viz icon">
    </a><br>
    <p>Sankeys of Export Volume per Destination Country</p>
   </div>

   <div class="icone-bloco">
    <a href="{{ site.baseurl }}/en/viz/ranking-prop-exportacoes-mundiais-amazonia" target="_blank" rel="noopener noreferrer">
      <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_rk_prop_exp.jpg" alt="viz icon">
    </a><br>
    <p>Ranking of Products by World Exportation from Legal Amazon</p>
   </div>

   <div class="icone-bloco">
    <a href="{{ site.baseurl }}/en/viz/series-temporais-exportacao-pais" target="_blank" rel="noopener noreferrer">
      <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_ts_bens_paises_exp.png" alt="viz icon">
    </a><br>
    <p>Time Series of the Legal Amazon's Export Value by Destination Country</p>
   </div>

   <div class="icone-bloco">
    <a href="{{ site.baseurl }}/en/viz/series-temporais-valores-exportacao-destino" target="_blank" rel="noopener noreferrer">
      <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_series-temporais-valores-exportacao-destino.png" alt="viz icon">
    </a><br>
    <p>Time Series of Total Exports Value by Destination Country</p>
   </div>

   <div class="icone-bloco">
    <a href="{{ site.baseurl }}/en/viz/ranking-campeoes-de-importacao" target="_blank" rel="noopener noreferrer">
      <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_ranking-campeoes-de-importacao.png" alt="viz icon">
    </a><br>
    <p>Ranking of Countries that Import from the Legal Amazon</p>
   </div>
</div>

<!-- The app is a dashboard with a sidebar: it needs height, not the 800px band
     the older visualizations used. vh to fill the screen, with a floor for short ones. -->
<style>
  .viz-embed { height: calc(100vh - 180px); min-height: 760px; display: block; }
  @media (max-width: 992px) { .viz-embed { height: 80vh !important; min-height: 620px; } }
  @media (max-width: 576px) { .viz-embed { height: 85vh !important; min-height: 560px; } }
</style>

<br><br>

---
layout: default
lang: en
title: "Cattle and Pasture Map"
description: "Map of Cattle Heads and Pasture Area by Municipality in the Legal Amazon"
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style="max-width: 1000px"> Cattle Heads and Pasture Area Map</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center">
  In our map, choose either cattle heads or pasture area.
  Data can also be visualized as heads of cattle per pasture hectare.
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_map_cattle_en/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Maps: agriculture — Data Zoom Amazônia"
  ></iframe>
</div>

<br>
<br>
<div class="container my-4">
  <div class="row">
    <div class="col-md-3" style="text-align:left;">
      <h2 style="font-size:20px;line-height:1.5">
        INFORMATION ABOUT THE DATASET USED IN THIS VISUALIZATION
      </h2><br><br><br>
    </div>
    <div class="col-md-9">
     <div class="rodape_viz">
       <!-- descrição dos dados usados-->
      <p>
        Data collected from <a href="https://brasil.mapbiomas.org/" target="_blank" rel="noreferrer noopener">MapBiomas</a> 
        and from <a href="https://censoagro2017.ibge.gov.br/" target="_blank" rel="noreferrer noopener">2017 Agro Census</a> conducted by <a href="https://www.ibge.gov.br/" target="_blank" rel="noreferrer noopener">IBGE</a>. 
        MapBiomas is a collaborative initiative integrated by university, NGOs and tech companies, dedicated to mapping land use and cover.
        It uses satellite images and remote sensoting to generate panel data.
        The Agro Census investigates characteristics and production in all agriculture establishments in Brazil. <br><br>
        Want to explore more? Acess our <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Attention</strong>: This visualization is powered by data processed through the
        <code class = "code_viz">datazoom.amazonia</code> package in <code class = "code_viz">R</code> (funções <code class = "code_viz">load_mapbiomas()</code> and <code class = "code_viz">load_censoagro()</code>) and may contain errors if external sources change.
        If you identify any discrepancies in the information, please report them in the 
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

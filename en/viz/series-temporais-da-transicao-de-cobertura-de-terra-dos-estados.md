---
layout: default
lang: en
title: "Time Series of Land Cover Transition in States"
description: "Time Series of Land Cover Transition in States"
---
<br><br>
<!-- visualization title without quotes -->
<h1 class="title-about" style="margin: 0px 200px;">Time Series of Land Cover Transition in States</h1>
<br>
<!-- instructions about the chart -->
<p class="text-center" style="font-size:18px;color:#3f8513; margin:20px 300px;">
  In our dynamic chart, it is possible to change the variables, allowing you to choose information from MapBiomas. Additionally, there is an option to set a log scale and/or scale relative to the initial year. Finally, the user can select the desired geographic subdivision.
</p>
<br>
<!-- shinyapps link -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_ts_mapbiomas_transicao_est_en/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Time Series of Land Cover Transition in States"
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
       <!-- description of the data used -->
      <p>
        Data collected from <a href="https://brasil.mapbiomas.org/" target="_blank" rel="noreferrer noopener">MapBiomas</a>. 
        MapBiomas is a collaborative network formed by NGOs, universities, and tech startups that produces an annual mapping of land cover and land use in Brazil. <br><br>
        Want to explore more? Access our <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Attention</strong>: This visualization is powered by data processed through the 
        <code class="code_viz">datazoom.amazonia</code> package in <code class="code_viz">R</code> (function <code class="code_viz">load_mapbiomas()</code>) and is subject to errors due to changes in external sources. If the user identifies any data discrepancies, please report them in the 
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

<!-- Simple adjustments for iframe height on smaller screens -->
<style>
  @media (max-width: 992px) { .container-fluid iframe { height: 78vh !important; } }
  @media (max-width: 576px) { .container-fluid iframe { height: 82vh !important; } }
</style>
<br><br>

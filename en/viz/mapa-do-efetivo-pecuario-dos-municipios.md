---
layout: default
lang: en
title: "Map of Municipal Livestock Herds"
description: "Map of Municipal Livestock Herds"
---
<br><br>
<!-- chart title without quotes -->
<h1 class="title-about" style="margin: 0px 200px;">Map of Municipal Livestock Herds</h1>
<br>
<!-- chart instructions -->
<p class="text-center" style="font-size:18px;color:#3f8513; margin:20px 300px;">
  In our interactive chart, you can change the variables, selecting information about the livestock herds in each municipality, in addition to animal production and the production value for the reference year. You can also select the year you wish to analyze. Have you tried pressing play to see the chart change over time?
</p>
<br>
<!-- shinyapps link -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_map_dz_munic_ppm_en/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Map of Municipal Livestock Herds"
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
        <!-- description of data used -->
        <p>
          Data collected from <a href="https://basedosdados.org/dataset/f7df4160-7a6f-4658-a287-3a73d412ed10?table=707b3dee-88a2-424d-a790-7216eb431c78" target="_blank" rel="noreferrer noopener">PPM-IBGE</a>. 
          The Municipal Livestock Survey (PPM) gathers information about livestock herds in each municipality, as well as animal production and the production value for the reference year. The available data has an annual frequency and is available starting from 1945.<br><br>
          Want to explore more? Access our <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">GitHub</a>.
        </p>
        <br>
        <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
          <strong>Attention</strong>: This visualization is powered by data processed through the 
          <code class="code_viz">datazoom.amazonia</code> package in <code class="code_viz">R</code> (function <code class="code_viz">load_ppm()</code>) 
          and may contain errors if external sources change. If you identify any discrepancies in the information, please report them in the 
          <a href="https://github.com/datazoompuc/datazoom.amazonia/issues" target="_blank" rel="noreferrer noopener">GitHub Issues</a>.
        </p>
        <br><br>
        <p>
          <a href="{{ site.baseurl }}/pt/viz/">&lt; Back to Visualizations</a>
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

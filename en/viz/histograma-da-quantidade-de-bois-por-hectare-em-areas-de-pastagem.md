---
layout: default
lang: en
title: "Histogram of the Number of Cattle per Hectare in Pasture Areas"
description: "Histogram of the Number of Cattle per Hectare in Pasture Areas"
---
<br><br>
<!-- visualization title without quotes -->
<h1 class="title-about" style="max-width: 1000px">Histogram of the Number of Cattle per Hectare in Pasture Areas</h1>
<br>
<!-- chart instructions -->
<p class="text-center">
  In our chart, the x-axis represents the log of (number of cattle per hectare + 1), and the y-axis represents the number of municipalities that fall within each interval of the x-axis variable. In addition, you can choose the desired period. It is also possible to filter by region, by state, and for the Legal Amazon. Have you tried pressing play to see how the chart changes over time?
</p>
<br>
<!-- shinyapps link -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_hist_mapbiomas_bovinos_en/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Distribution of Municipalities According to Cattle/Hectares of Pasture Area"
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
        MapBiomas is a collaborative network, formed by NGOs, universities, and technology startups, that produces annual mapping of land cover and land use in Brazil. <br><br>
        Want to explore more? Check out our <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Attention</strong>: This visualization is powered by data processed through the 
        <code class = "code_viz">datazoom.amazonia</code> package in <code class = "code_viz">R</code> (function <code class = "code_viz">load_mapbiomas()</code>) and is subject to errors due to 
        changes in external sources. If the user identifies any discrepancies in the information, we kindly ask that you report them in the 
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

---
layout: default
lang: en
title: "Time Series of Greenhouse Gas Emissions in Agriculture"
description: "Time Series of Greenhouse Gas Emissions in Agriculture"
---
<br><br>
<!-- visualization title without quotes-->
<h1 class="title-about" style = "margin: 0px 200px;">Time Series of Greenhouse Gas Emissions in Agriculture</h1>
<br>
<!-- instructions about the chart-->
<p class="text-center" style="font-size:18px;color:#3f8513; margin:20px 300px;">
  In our interactive chart, you can view information on greenhouse gas emissions by State from SEEG. 
  In addition, there is the option to display the data in log scale and/or proportional to the initial year.
</p>
<br>
<!-- shinyapps link -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_ts_seeg_state_farming/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Greenhouse Gas Emissions in Agriculture at the State Level"
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
       <!-- description of the data used-->
      <p>
        Data collected from <a href="https://seeg.eco.br/" target="_blank" rel="noreferrer noopener">SEEG</a>. 
        SEEG is a multi-institutional project involving universities, NGOs, and technology companies, which promotes the mapping of greenhouse gas emissions for all Brazilian municipalities and makes the data and maps openly and freely available. <br><br>
        Want to explore more? Visit our <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Attention</strong>: This visualization is powered by data processed with the 
        <code class = "code_viz">datazoom.amazonia</code> package in <code class = "code_viz">R</code> (function <code class = "code_viz">load_seeg()</code>) and is subject to error if external sources change. 
        If the user identifies any discrepancies in the information, we kindly ask you to report them in the 
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

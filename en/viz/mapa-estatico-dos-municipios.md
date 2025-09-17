---
layout: default
lang: en
title: "Static Map of Data for Municipalities in the Legal Amazon"
description: "Static Map of Data for Municipalities in the Legal Amazon"
---
<br><br>
<!-- visualization title without quotes -->
<h1 class="title-about" style="margin: 0px 200px;">Static Map of Data for Municipalities in the Legal Amazon</h1>
<br>
<!-- chart instructions -->
<p class="text-center" style="font-size:18px;color:#3f8513; margin:20px 300px;">
  In our static chart, it is possible to change the variables, selecting information from the 2000 Census, 2010 Census, and the Social Progress Index (SPI) for the years 2014 and 2018.
</p>
<br>
<!-- shinyapps link -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_mapstatic_ips_2021_en/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Static Map of Data for Municipalities in the Legal Amazon"
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
        Data collected from the 2000 and 2010 Censuses, the <a href="https://ipsbrasil.org.br/pt" target="_blank" rel="noreferrer noopener">Social Progress Index (SPI)</a>, and the <a href="https://imazon.org.br/" target="_blank" rel="noreferrer noopener">Amazon Institute of People and the Environment (Imazon)</a>. 
        The Census is a survey conducted every 10 years, in which enumerators go door-to-door filling out a detailed registry with information about the country’s population. The SPI and Imazon provide information on the socio-environmental performance of the Legal Amazon. <br><br>
        Want to explore more? Check out our <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Attention</strong>: This visualization is powered by data processed through the 
        <code class = "code_viz">datazoom.amazonia</code> package in <code class = "code_viz">R</code> (function <code class = "code_viz">load_ips()</code>) and the <code class = "code_viz">datazoom_social</code> package in <code class = "code_viz">Stata</code> (function <code class = "code_viz">load_censo[,options]</code>) and is subject to errors due to 
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

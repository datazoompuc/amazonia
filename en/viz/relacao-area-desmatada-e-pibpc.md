---
layout: default
lang: en
title: "Relationship between Cattle Herds and GDP per Capita"
description: "Relationship between Cattle Herds and GDP per Capita"
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style = "margin: 0px 200px;">Relationship between Cattle Herds and GDP per Capita</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center" style="font-size:18px;color:#3f8513; margin:20px 300px;">
  On our dynamic chart, where each circle corresponds to a municipality, it is possible to change the variables and choose information from various sources. On both axes, it is possible to choose data from the 2000 Census, 2010 Census, PRODES, CEMPRE, 2014 IPS, 2018 IPS, and PPM, and thus observe the relationship between them. In addition, there is the option to put these variables on a log scale. Finally, the user can select the marker color and size based on these databases.
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_bubble_dz_munic_en/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Relationship between Cattle Herds and GDP per Capita"
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
        <b>Census:</b>  It is a large research that occurs every 10 years, where enumerators go from house to house filling out a huge registry with detailed information about the country’s population.<br><br>

<b>IPS (Social Progress Index):</b> It carries information about the socio-environmental performance of the Brazilian Amazonia Legal.<br><br>

<b>PRODES:</b> The project uses satellites to monitor deforestation in the Brazilian Amazonia Legal. The raw data reports the area of deforestation with total and incremental clear-cutting year after year at the municipality level.<br><br>

<b>CEMPRE:</b> It carries information about companies and other organizations and their respective formally constituted local units, registered in the CNPJ – National Registry of Legal Entities.<br><br>

<b>PPM:</b> The data gathers information about the livestock existing in the municipality, as well as produdction from animal origin, and the value of production during the reference year. The available data has an annual frequency and is available from the year 1945. <br><br>
        Want to explore more? Access our <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Attention</strong>: This visualization is fed by data processed through the 
        <code class = "code_viz">datazoom.amazonia</code> package in <code class = "code_viz">R</code> (<code class = "code_viz">load_ips()</code>, <code class = "code_viz">load_prodes()</code>, <code class = "code_viz">load_cempre()</code> e <code class = "code_viz">load_ppm()</code> functions)
        and the <code class = "code_viz">datazoom_social_Stata</code> package in <code class = "code_viz">STATA</code> (<code class = "code_viz">datazoom_censo</code> function) and is subject to error due to changes in external sources. If the user identifies any discrepancies in information, we request that you report it in
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

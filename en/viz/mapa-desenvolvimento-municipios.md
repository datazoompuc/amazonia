---
layout: default
lang: en
title: "Development by Municipality"
description: "Map of Development by Municipality in the Legal Amazon"
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style="max-width: 1000px">Map of Development by Municipality in the Legal Amazon</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center">
  In our map of municipalities in the Legal Amazon, choose the variable of interest: information from the 2000 or 2010 Census or 2014 or 2018 the Social Progress Index (IPS).
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_mapstatic_dz_munic_en/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Maps: development - Data Zoom Amazônia"
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
        Data collected from 2000 and 2010 Census by <a href="https://www.ibge.gov.br/estatisticas/sociais/saude/22827-censo-demografico-2022.html" target="_blank" rel="noreferrer noopener">Brazilian Institute of Geography and Statistics (IBGE)</a> 
        and from the <a href="https://ipsbrasil.org.br/pt" target="_blank" rel="noreferrer noopener">Social Progress Index (IPS) </a> elaborated by <a href="https://imazon.org.br/" target="_blank" rel="noreferrer noopener">Instituto do Homem e Meio Ambiente da Amazônia (Imazon)</a> 
        IPS is an index of social progress in the Legal Amazon. <br><br>
        Want to explore more? Check out our <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Atenção</strong>:  This visualization is powered by data processed through the 
        <code class = "code_viz">datazoom.amazonia</code> package in <code class = "code_viz">R</code> (function <code class = "code_viz">load_ips()</code>) 
        and from the <code class = "code_viz">datazoom_social</code> package in <code class = "code_viz">Stata</code> (function <code class = "code_viz">load_censo[,options]</code>)
        and is subject to errors due to changes in external sources. If the user identifies any discrepancies in the information, we kindly ask that you report them in the 
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

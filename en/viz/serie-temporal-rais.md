---
layout: default
lang: en
title: "Time Series of Formal Employment (RAIS)"
description: "Interactive chart showing the evolution of average wages, number of jobs, and job tenure from RAIS data."
---
<br><br>
<!-- title of the visualization -->
<h1 class="title-about" style="max-width: 1000px">Time Series of Formal Employment (RAIS)</h1>
<br>
<!-- instructions about the chart -->
<p class="text-center">
  In our interactive chart, you can change the variables, selecting information on the formal labor market from RAIS – Ministry of Labor. 
  It is possible to select the geographic scope, as well as characteristics such as gender, race, education, economic sector, and occupation, and observe the temporal evolution of indicators such as average wages, number of jobs, and job tenure.
</p>
<br>
<!-- link to shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_ts_rais/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Time Series of Formal Employment (RAIS)"
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
       <!-- dataset description -->
      <p>
        Data from the <a href="https://www.gov.br/trabalho-e-emprego/pt-br/assuntos/estatisticas/rais" target="_blank" rel="noreferrer noopener">Relação Anual de Informações Sociais (RAIS)</a>, 
        an administrative dataset from the Ministry of Labor that compiles information on all formal employment relationships in Brazil.<br><br>
        Want to explore more? Access our <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">GitHub</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Attention</strong>: This visualization is powered by data processed by the Department of Economics at PUC-Rio and may be subject to adjustments due to changes in the original sources. 
        If you identify any discrepancies in the information, please report them in the 
        <a href="https://github.com/datazoompuc/datazoom_social_Stata/issues" target="_blank" rel="noreferrer noopener">GitHub Issues</a>.
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

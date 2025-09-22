---
layout: default
lang: en
title: "Time Series of Isolated Systems"
description: "Interactive chart with time series of isolated systems in the Legal Amazon and Brazil."
---
<br><br>
<h1 class="title-about" style="margin: 0px 200px;">Time Series of Isolated Systems</h1>
<br>
<p class="text-center">
  In our interactive chart, you can change the variables, selecting various information about the Isolated Systems of the Legal Amazon. 
  Choose variables related to electricity consumption, number of consumers, system expenses, annual subsidy budgets, and follow the evolution over time.
</p>
<br>
<!-- Embed in full width, as in the previous page -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_ts_sistemas_isolados_en/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Time series: energy — Data Zoom Amazon"
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
        <p>
          Data collected from <a href="https://www.gov.br/aneel/pt-br" target="_blank" rel="noreferrer noopener">ANEEL</a> and <a href="https://www.epe.gov.br/" target="_blank" rel="noreferrer noopener">EPE</a>. 
          The National Electric Energy Agency (ANEEL) is an autonomous federal agency under special regime, linked to the Ministry of Mines and Energy, headquartered in the Federal District. 
          The Energy Research Company (EPE) is a Brazilian public company, also linked to the Ministry of Mines and Energy, responsible for conducting studies and research in electric energy and renewable energy. <br><br>
          Want to explore more? Access our <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">GitHub</a>.
        </p>
        <br>
        <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
          <strong>Attention</strong>: This visualization is powered by data processed through the 
          <code class="code_viz">datazoom.amazonia</code> package in <code class="code_viz">R</code> (functions <code class="code_viz">load_aneel()</code> and <code class="code_viz">load_epe()</code>) 
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

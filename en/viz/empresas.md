---
layout: default
title: Companies
lang: en
description: "Firms and formal employment in the Legal Amazon: establishments, employed persons and payroll by municipality"
---

<link rel="stylesheet" href="style.css">

<br>

<h1 class="title-about">Companies</h1>

<br>

<p class="text-center" style="max-width: 900px; margin: 0 auto;">
  A map of formal employment in the Legal Amazon, from 2006 to 2020: number of
  establishments, employed persons, paid employees and payroll, municipality by
  municipality. See it as a <strong>total</strong>, <strong>per inhabitant</strong>
  or as a <strong>share of municipal GDP</strong>, and compare two years side by
  side.
</p>

<br>

<!-- The static app, served from the GitHub Pages of the datazoom_viz repository.
     ?embed=1 hides what this page already shows: branding, description, logo and the
     language toggle (the nav bar owns language here, reloading the whole page;
     the app's own toggle would switch only the iframe). -->
<div class="container-fluid p-0">
  <iframe
    class="viz-embed"
    src="{{ site.viz_app_base }}/map_dz_munic_cempre/?lang=en&amp;embed=1"
    width="100%"
    frameborder="0"
    allowfullscreen
    loading="lazy"
    title="Firms and formal employment in the Legal Amazon — Data Zoom"
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
        Data from <a href="https://www.ibge.gov.br/en/statistics/economic/trade/19623-central-register-of-enterprises.html" target="_blank" rel="noreferrer noopener">CEMPRE</a>,
        IBGE's Central Register of Enterprises, which covers formally constituted companies
        and other organizations, with their employed persons and wages paid. The register
        records an establishment at its tax-ID address, so the payroll of an administration
        headquartered in a state capital shows up entirely in that municipality.
      </p>

      <p>
        <strong>Want the data behind this map?</strong> It comes from our
        <strong>datazoom.amazonia</strong> package, in <strong>R</strong>. In your console:
      </p>
      <pre class="dzam-code"><code>install.packages("datazoom.amazonia")

data &lt;- datazoom.amazonia::load_cempre(
  dataset     = "cempre",
  geo_level   = "municipality",
  time_period = 2006:2020,
  language    = "eng"
)</code></pre>
      <p>
        The per-inhabitant and share-of-GDP measures use
        <code class="code_viz">load_population()</code> and <code class="code_viz">load_pibmunic()</code>
        from the same package. The full list, with examples, is in
        <a href="{{ site.baseurl }}/en/codigos-e-dados/">Codes and Data</a>; the package source
        is on <a href="https://github.com/datazoompuc/datazoom.amazonia" target="_blank" rel="noreferrer noopener">GitHub</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Warning</strong>: This visualization is powered by data processed through the
        <code class="code_viz">datazoom.amazonia</code> package in <code class="code_viz">R</code> (function <code class="code_viz">load_cempre()</code>)
        and is subject to error in the face of changes in external sources. Values are nominal, not adjusted
        for inflation. Should the user identify any discrepancy, we ask that it be reported in the
        <a href="https://github.com/datazoompuc/datazoom.amazonia/issues" target="_blank" rel="noreferrer noopener">GitHub Issues</a>.
      </p>
     </div>
   </div>
  </div>
</div>

<!-- The app is a panel with a sidebar: it needs height, not the 800px strip the
     older visualizations used. vh to fill the screen, with a floor for short
     screens. -->
<style>
  /* same code block used in Codes and Data */
  .dzam-code { background:#f6f8fa; border:1px solid #e1e4e8; border-radius:8px; padding:12px; overflow:auto; }
  .viz-embed { height: calc(100vh - 180px); min-height: 760px; display: block; }
  @media (max-width: 992px) { .viz-embed { height: 80vh !important; min-height: 620px; } }
  @media (max-width: 576px) { .viz-embed { height: 85vh !important; min-height: 560px; } }
</style>

<br><br>

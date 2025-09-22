---
layout: default
lang: en
title: "Relationship among Health Variables"
description: "Dispersion graph for sociodemographic, deforestation and health variables"
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style="max-width: 1000px">Explore the Relationship among Health Variables in Legal Amazon's Municipalities</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center">
  In our graph, where each circle corresponds to a municipality in the Legal Amazon, select variables from various sources.
  In both axis, you may choose data from INPE, IBGE, IMAZON and DATASUS. 
  Here, health related variables are highlighted.
  Also, you may choose to visualize the data in log scale. Finally, the user may select color and size according to variables in this dataset.
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_bubble_dz_munic_saude_en/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Relationship between variables: Health — Data Zoom Amazônia"
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
       <!-- descrição dos dados usados-->
      <p>
        <b>Demographic Census:</b> Every 10 years, collects detailed information on the population.<br><br>
        <b>DATASUS:</b> Part of the Secretaria de Gestão Estratégica e Participativa from the Ministry of Health, with the responsability to collect, process and disseminate data on health.<br><br>
        <b>PRODES:</b> The project uses satellites to monitor deforestation in the Brazilian Legal Amazon.<br><br>
        <b>CEMPRE:</b> Information on companies and organizations and their respective formal local units, registered at the CNPJ - National Company Registration Number.<br><br>
        <b>PPM:</b> Data on cattle herds in the municipality, production of animal origin and value of production for each year. Yearly available from 1945 onwards.<br><br>
        <b>PAM:</b> nationwide annual survey which provides information on agricultural products, such as quantity produced, area planted and harvested, average quantity of output and monetary value of such output.<br><br>
        Want to explore more? Acess our <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Attention</strong>: This visualization is powered by data processed through the 
        <code class = "code_viz">datazoom.amazonia</code> package on <code class = "code_viz">R</code> (functions <code class = "code_viz">load_prodes()</code>, <code class = "code_viz">load_cempre()</code>, <code class = "code_viz">load_population()</code>, <code class = "code_viz">load_ppm()</code> and <code class = "code_viz">load_pam()</code>),
        and the <code class = "code_viz">datazoom.saude</code> package on <code class = "code_viz">R</code> (functions <code class = "code_viz">load_mortality()</code> and <code class = "code_viz">load_hospital_beds()</code>)
        and the <code class = "code_viz">datazoom_social_Stata</code> package on <code class = "code_viz">STATA</code> (função <code class = "code_viz">datazoom_censo</code>) 
        and may contain errors if external sources change. If you identify any discrepancies in the information, please report them in the
        <a href="https://github.com/datazoompuc/datazoom.amazonia/issues" target="_blank" rel="noreferrer noopener">GitHub Issues</a>.
      </p>
       <br><br>
       <p>
        <a href="{{ site.baseurl }}/pt/viz/">&lt; Voltar para Visualizações</a>
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

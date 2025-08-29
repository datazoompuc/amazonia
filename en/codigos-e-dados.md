---
layout: default
title: Codes and Data
lang: en
permalink: en/codigos-e-dados/
---

<header class="entry-header has-text-align-center header-footer-group">
  <div class="entry-header-inner section-inner medium">
    <h1 class="entry-title"><strong>Codes and Data</strong></h1>
  </div>
</header>

<!-- HERO -->
<div class="hero hero-docs" style="background-image:url('{{ site.baseurl }}/assets/img/CapaDocumentacao.png'); background-position: 52% 29%; min-height: 500px; display:flex; align-items:center; justify-content:center; padding: 2rem;">
  <div class="hero-content" style="max-width: 840px; background: rgba(255,255,255,0.0);">
    <p style="font-size: 27px;">
      <strong>Data Zoom Amazônia</strong> developed the <strong>datazoom.amazonia</strong> package in the <strong><a href="https://www.r-project.org/" target="_blank" rel="noreferrer noopener">R</a></strong> statistical program for the extraction and cleaning of data directly from its original sources. It allows access to various databases related to the Brazilian Amazon, always seeking to facilitate users' lives and streamline research processes. The package adopts the philosophy of open source in such a way that everyone can learn and contribute to the development of the project.
    </p>

    <div style="display:flex; gap:12px; justify-content:center; flex-wrap:wrap; margin-top: 16px;">
      <a class="cta-button" href="https://github.com/datazoompuc/datazoom.amazonia" target="_blank" rel="noreferrer noopener">acesse nosso github</a>
      <a class="cta-button is-outline" href="https://datazoompuc.github.io/datazoom.amazonia/" target="_blank" rel="noreferrer noopener">baixe a documentação (.PDF)</a>
    </div>
  </div>
</div>



<!-- GRID: imagem + descrição -->
<style>
  .dzam-grid{display:grid;grid-template-columns:1fr 2fr;gap:2rem;align-items:start;max-width:1100px;margin:2rem auto;padding:0 1rem}
  @media (max-width: 900px){.dzam-grid{grid-template-columns:1fr}}
  .dzam-figure{margin:0}
  .dzam-figure img{max-width:100%;height:auto;display:block}
  .dzam-title{margin:0}
  .dzam-code{background:#f6f8fa;border:1px solid #e1e4e8;border-radius:8px;padding:12px;overflow:auto}
</style>

<!-- Bloco 1: imagem + descrição -->
<section class="dzam-grid">
  <figure class="dzam-figure">
    <a href="https://github.com/datazoompuc/datazoom.amazonia" target="_blank" rel="noreferrer noopener">
      <img src="https://raw.githubusercontent.com/datazoompuc/datazoom.amazonia/master/logo.png"
           alt="Logotipo do Data Zoom Amazônia" loading="lazy" decoding="async">
    </a>
  </figure>

  <div>
    <p>The <strong>Data Zoom Amazônia</strong> project was developed by the Department of Economics at PUC-Rio with the aim of providing free access to databases on the Legal Amazon. <strong>Data Zoom Amazônia</strong> aims to facilitate and speed up academic research on the region with the creation of the package <code>datazoom.amazonia</code> on <code>R</code>. Through an approach focused on simplicity and organization, users will not need to dedicate their time to database preparation.</p>
  </div>
</section>

<!-- Bloco 2: título + instruções de instalação -->
<section class="dzam-grid">
  <div>
    <h4 class="dzam-title" id="instalacao-r">INSTALLATION ON R</h4>
  </div>

  <div>
    <p>You can install the <strong>datazoom.amazonia</strong> package released on <a href="https://cran.r-project.org/web/packages/datazoom.amazonia/index.html" target="_blank" rel="noreferrer noopener">CRAN</a> by typing directly into your <strong>R</strong> console:</p>
    <pre class="dzam-code"><code>install.packages("datazoom.amazonia")</code></pre>

    <p>Alternatively, you can install the development version from <a href="https://github.com/datazoompuc/datazoom.amazonia" target="_blank" rel="noreferrer noopener">GitHub</a>.You need to install the <strong>devtools</strong> package and then run in the <strong>R</strong> console:</p>
    <pre class="dzam-code"><code>devtools::install_github("datazoompuc/datazoom.amazonia")</code></pre>
  </div>
</section>

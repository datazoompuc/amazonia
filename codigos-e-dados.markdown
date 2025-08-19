---
layout: default
title: Códigos e Dados
lang: pt
permalink: /codigos-e-dados/
---

<header class="entry-header has-text-align-center header-footer-group">
  <div class="entry-header-inner section-inner medium">
    <h1 class="entry-title">Códigos e Dados</h1>
  </div>
</header>

<!-- HERO -->
<div class="hero hero-docs" style="background-image:url('{{ site.baseurl }}/assets/img/CapaDocumentacao.png'); background-position: 52% 29%; min-height: 500px; display:flex; align-items:center; justify-content:center; padding: 2rem;">
  <div class="hero-content" style="max-width: 840px; background: rgba(255,255,255,0.0);">
    <p style="font-size: 27px;">
      O <strong>Data Zoom Amazônia</strong> desenvolveu o pacote <strong>datazoom.amazonia</strong> no programa estatístico <strong><a href="https://www.r-project.org/" target="_blank" rel="noreferrer noopener">R</a></strong> para a extração e limpeza dos dados diretamente das suas fontes originais. O pacote <strong>datazoom.amazonia</strong> permite acesso a diversas bases de dados relacionadas à Amazônia brasileira, buscando sempre facilitar a vida dos usuários e agilizar os processos de pesquisa. O pacote adota a filosofia de códigos abertos de tal forma que todos possam aprender e contribuir para o desenvolvimento do projeto.
    </p>

    <div style="display:flex; gap:12px; justify-content:center; flex-wrap:wrap; margin-top: 16px;">
      <a class="cta-button" href="https://github.com/datazoompuc/datazoom.amazonia" target="_blank" rel="noreferrer noopener">acesse nosso github</a>
      <a class="cta-button is-outline" href="https://datazoompuc.github.io/datazoom.amazonia/" target="_blank" rel="noreferrer noopener">baixe a documentação (.PDF)</a>
    </div>
  </div>
</div>



<!-- GRID: imagem + descrição -->
<div class="grid two-col" style="max-width:1100px; margin: 2rem auto; display:grid; grid-template-columns: repeat(12, 1fr); gap: 24px;">
  <div style="grid-column: span 4;">
    <a href="https://github.com/datazoompuc/datazoom.amazonia">
    </a>
  </div>

  <div class="wp-block-jetpack-layout-grid-column wp-block-jetpack-layout-grid__padding-none">
<p>O projeto<strong> Data Zoom Amazônia</strong> foi desenvolvido pelo Departamento de Economia da PUC-Rio com o objetivo de disponibilizar gratuitamente o acesso à bases de dados sobre a Amazônia Legal. O Data Zoom Amazônia visa facilitar e agilizar pesquisas acadêmicas sobre a região com a criação do pacote <code>datazoom.amazonia</code> no <code>R</code>. Com uma abordagem focada na simplicidade e organização, os usuários não precisarão dedicar o seu tempo na preparação das bases de dados. O pacote disponibiliza todas as bases limpas e intuitivas, poupando o trabalho manual dos pesquisadores.</p>



<p></p>



<div class="wp-block-buttons is-layout-flex wp-block-buttons-is-layout-flex"></div>



<div style="height:60px" aria-hidden="true" class="wp-block-spacer"></div>
</div>

<!-- INSTALAÇÃO NO R -->
<div class="grid two-col" style="max-width:1100px; margin: 0 auto 2rem auto; display:grid; grid-template-columns: repeat(12, 1fr); gap: 24px;">
  <div style="grid-column: span 4;">
    <h4 class="has-text-align-left wp-block-heading" id="inpe-prodes">INSTALAÇÃO NO R</h4>
  </div>
  

  <div style="grid-column: span 8;" markdown="1">
    Você pode instalar a versão estável do **datazoom.amazonia** do
    [CRAN](https://cran.r-project.org/web/packages/datazoom.amazonia/index.html){:target="_blank" rel="noreferrer noopener"}
    executando no console do R:
install.packages("datazoom.amazonia")

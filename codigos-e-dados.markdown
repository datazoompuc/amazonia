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
<div class="wp-block-jetpack-layout-grid alignfull column1-desktop-grid__span-3 column1-desktop-grid__start-3 column1-desktop-grid__row-1 column2-desktop-grid__span-4 column2-desktop-grid__start-6 column2-desktop-grid__row-1 column1-tablet-grid__span-3 column1-tablet-grid__row-1 column2-tablet-grid__span-5 column2-tablet-grid__start-4 column2-tablet-grid__row-1 column1-mobile-grid__span-4 column1-mobile-grid__row-1 column2-mobile-grid__span-4 column2-mobile-grid__row-2">
  <div class="wp-block-jetpack-layout-grid-column wp-block-jetpack-layout-grid__padding-none is-vertically-aligned-top">
    <figure class="wp-block-image size-large">
      <a href="https://web.archive.org/web/20250206232656/https://github.com/datazoompuc/datazoom.amazonia">
        <img decoding="async" src="https://web.archive.org/web/20250206232656im_/http://datazoomamazonia.com.br/wp-content/uploads/2021/12/DZAM-HexSticker_3x_AF.png" alt="Logotipo do Data Zoom Amazônia">
      </a>
    </figure>
  </div>

  <div class="wp-block-jetpack-layout-grid-column wp-block-jetpack-layout-grid__padding-none">
    <p>O projeto <strong>Data Zoom Amazônia</strong> foi desenvolvido pelo Departamento de Economia da PUC-Rio com o objetivo de disponibilizar gratuitamente o acesso a bases de dados sobre a Amazônia Legal. O Data Zoom Amazônia visa facilitar e agilizar pesquisas acadêmicas sobre a região por meio do pacote <code>datazoom.amazonia</code> em <code>R</code>. Com uma abordagem focada na simplicidade e na organização, os usuários não precisarão dedicar tempo à preparação das bases de dados. O pacote disponibiliza as bases limpas e intuitivas, poupando trabalho manual dos pesquisadores.</p>

    <div class="wp-block-buttons is-layout-flex wp-block-buttons-is-layout-flex"></div>
    <div style="height:60px" aria-hidden="true" class="wp-block-spacer"></div>
  </div>
</div>

<div class="wp-block-jetpack-layout-grid alignfull column1-desktop-grid__span-3 column1-desktop-grid__start-3 column1-desktop-grid__row-1 column2-desktop-grid__span-4 column2-desktop-grid__start-6 column2-desktop-grid__row-1 column1-tablet-grid__span-3 column1-tablet-grid__row-1 column2-tablet-grid__span-5 column2-tablet-grid__start-4 column2-tablet-grid__row-1 column1-mobile-grid__span-4 column1-mobile-grid__row-1 column2-mobile-grid__span-4 column2-mobile-grid__row-2">
  <div class="wp-block-jetpack-layout-grid-column wp-block-jetpack-layout-grid__padding-none is-vertically-aligned-top">
    <h4 class="has-text-align-left wp-block-heading" id="inpe-prodes">INSTALAÇÃO NO R</h4>
  </div>

  <div class="wp-block-jetpack-layout-grid-column wp-block-jetpack-layout-grid__padding-none">
    <p>Você pode instalar a versão estável do <strong>datazoom.amazonia</strong> pelo <a rel="noreferrer noopener" href="https://web.archive.org/web/20250206232656/https://cran.r-project.org/web/packages/datazoom.amazonia/index.html" target="_blank">CRAN</a> executando no console do <strong>R</strong>:</p>
    <p><code>install.packages("datazoom.amazonia")</code></p>

    <p>Alternativamente, é possível instalar a versão de desenvolvimento a partir do <a rel="noreferrer noopener" href="https://web.archive.org/web/20250206232656/https://github.com/datazoompuc/datazoom.amazonia" target="_blank">GitHub</a>. É preciso instalar o pacote <strong>devtools</strong> e, em seguida, executar no console do <strong>R</strong>:</p>
    <p><code>devtools::install_github("datazoompuc/datazoom.amazonia")</code></p>
  </div>
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

---
layout: default
title: Códigos e Dados
lang: pt
permalink: /codigos-e-dados/
---

<header class="entry-header has-text-align-center header-footer-group">
  <div class="entry-header-inner section-inner medium">
    <h1 class="entry-title"><strong>Códigos e Dados</strong></h1>
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
<style>
  .dzam-grid{display:grid;grid-template-columns:1fr 2fr;gap:2rem;align-items:start;max-width:1100px;margin:2rem auto;padding:0 1rem}
  @media (max-width: 900px){.dzam-grid{grid-template-columns:1fr}}
  .dzam-figure{margin:0}
  .dzam-figure img{max-width:100%;height:auto;display:block}
  .dzam-title{margin:0}
  .dzam-code{background:#f6f8fa;border:1px solid #e1e4e8;border-radius:8px;padding:12px;overflow:auto}
  .dzam-buttons{display:flex;flex-wrap:wrap;gap:.75rem;margin-top:1rem}
  .dzam-btn{display:inline-block;padding:.6rem 1rem;border-radius:999px;border:1px solid #cfd8dc;text-decoration:none}
</style>

<!-- Bloco 1: imagem + descrição -->
<section class="dzam-grid">
  <figure class="dzam-figure">
    <a href="https://github.com/datazoompuc/datazoom.amazonia" target="_blank" rel="noreferrer noopener">
      <img src="https://web.archive.org/web/20250206232656im_/http://datazoomamazonia.com.br/wp-content/uploads/2021/12/DZAM-HexSticker_3x_AF.png" alt="Logotipo do Data Zoom Amazônia">
    </a>
  </figure>

  <div>
    <p>O projeto <strong>Data Zoom Amazônia</strong> foi desenvolvido pelo Departamento de Economia da PUC-Rio com o objetivo de disponibilizar gratuitamente o acesso a bases de dados sobre a Amazônia Legal. O Data Zoom Amazônia visa facilitar e agilizar pesquisas acadêmicas sobre a região por meio do pacote <code>datazoom.amazonia</code> em <code>R</code>. Com uma abordagem focada na simplicidade e na organização, os usuários não precisam dedicar tempo à preparação das bases de dados. O pacote disponibiliza as bases limpas e intuitivas, poupando trabalho manual dos pesquisadores.</p></section>

<!-- Bloco 2: título + instruções de instalação -->
<section class="dzam-grid">
  <div>
    <h3 class="dzam-title" id="instalacao-r"><strong>INSTALAÇÃO NO R</strong></h3>
  </div>

  <div>
    <p>Você pode instalar a versão estável do <strong>datazoom.amazonia</strong> pelo <a href="https://cran.r-project.org/web/packages/datazoom.amazonia/index.html" target="_blank" rel="noreferrer noopener">CRAN</a> executando no console do <strong>R</strong>:</p>
    <pre class="dzam-code"><code>install.packages("datazoom.amazonia")</code></pre>

    <p>Alternativamente, é possível instalar a versão de desenvolvimento a partir do <a href="https://github.com/datazoompuc/datazoom.amazonia" target="_blank" rel="noreferrer noopener">GitHub</a>. É preciso instalar o pacote <strong>devtools</strong> e, em seguida, executar no console do <strong>R</strong>:</p>
    <pre class="dzam-code"><code>devtools::install_github("datazoompuc/datazoom.amazonia")</code></pre>
  </div>
</section>

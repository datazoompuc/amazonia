---
layout: default
title: Comércio Exterior
lang: pt
description: "Comércio exterior na Amazônia Legal: valor e quantidade exportados por município, produto e país de destino"
---

<link rel="stylesheet" href="style.css">

<br>

<h1 class="title-about">Comércio Exterior</h1>

<br>

<p class="text-center" style="max-width: 900px; margin: 0 auto;">
  Explore as exportações da Amazônia Legal de 1997 a hoje: ranking de municípios,
  composição por categoria de produto, variação entre dois anos, tendências,
  comparação livre e mapa. Alterne entre <strong>valor</strong> em dólares e
  <strong>quantidade</strong> em quilos, e recorte por município, produto ou país de destino.
</p>

<br>

<!-- O app estático, servido pelo GitHub Pages do repositório datazoom_viz -->
<div class="container-fluid p-0">
  <iframe
    class="viz-embed"
    src="{{ site.viz_app_base }}/comex_exp_municipio/"
    width="100%"
    frameborder="0"
    allowfullscreen
    loading="lazy"
    title="Comércio exterior na Amazônia Legal — Data Zoom"
  ></iframe>
</div>

<br>
<br>

<div class="container my-4">
  <div class="row">
    <div class="col-md-3" style="text-align:left;">
      <h2 style="font-size:20px;line-height:1.5">
        INFORMAÇÕES SOBRE A BASE DE DADOS UTILIZADA NESSA VISUALIZAÇÃO
      </h2><br><br><br>
    </div>
    <div class="col-md-9">
     <div class="rodape_viz">
      <p>
        Dados coletados e tratados pela <a href="https://www.gov.br/produtividade-e-comercio-exterior/pt-br/assuntos/comercio-exterior/estatisticas/base-de-dados-bruta/" target="_blank" rel="noreferrer noopener">Comex Stat</a>.
        O conjunto de dados Comex reúne dados extraídos do Siscomex (Sistema Integrado de Comércio Exterior), que é um banco de dados
        contendo informações de todos os produtos importados ou exportados do Brasil.<br><br>
        Quer explorar mais? Acesse o nosso <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Atenção</strong>: Esta visualização é alimentada por dados tratados através do pacote
        <code class="code_viz">datazoom.amazonia</code> no <code class="code_viz">R</code> (função <code class="code_viz">load_br_trade()</code>)
        e está sujeita a erro diante de alterações nas fontes externas. O ano mais recente pode estar incompleto, e nesse caso o app
        marca quantos meses já foram publicados. Caso o usuário identifique alguma discrepância de informação, solicitamos que reporte nos
        <a href="https://github.com/datazoompuc/datazoom.amazonia/issues" target="_blank" rel="noreferrer noopener">Issues do GitHub</a>.
      </p>
     </div>
   </div>
  </div>
</div>

<br>

<h2 class="title-about" style="font-size: 28px;">Outras visualizações de comércio exterior</h2>

<br>

<div class="imagens-container">
   <div class="icone-bloco">
    <a href="{{ site.baseurl }}/pt/viz/sankey-do-volume-de-exportacao-da-amazonia-por-pais-de-destino" target="_blank" rel="noopener noreferrer">
      <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_sankey_exp.jpg" alt="ícone viz">
    </a><br>
    <p>Sankeys do Volume de Exportação da Amazônia por País de Destino</p>
   </div>

   <div class="icone-bloco">
    <a href="{{ site.baseurl }}/pt/viz/ranking-prop-exportacoes-mundiais-amazonia" target="_blank" rel="noopener noreferrer">
      <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_rk_prop_exp.jpg" alt="ícone viz">
    </a><br>
    <p>Ranking da Proporção das Exportações Mundiais Oriundas da Amazônia Legal</p>
   </div>

   <div class="icone-bloco">
    <a href="{{ site.baseurl }}/pt/viz/series-temporais-exportacao-pais" target="_blank" rel="noopener noreferrer">
      <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_ts_bens_paises_exp.png" alt="ícone viz">
    </a><br>
    <p>Séries Temporais do Valor Exportado pela Amazônia Legal por País de Destino</p>
   </div>

   <div class="icone-bloco">
    <a href="{{ site.baseurl }}/pt/viz/series-temporais-valores-exportacao-destino" target="_blank" rel="noopener noreferrer">
      <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_series-temporais-valores-exportacao-destino.png" alt="ícone viz">
    </a><br>
    <p>Séries Temporais de Valor Total Exportado por País de Destino</p>
   </div>

   <div class="icone-bloco">
    <a href="{{ site.baseurl }}/pt/viz/ranking-campeoes-de-importacao" target="_blank" rel="noopener noreferrer">
      <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_ranking-campeoes-de-importacao.png" alt="ícone viz">
    </a><br>
    <p>Ranking de Países que Mais Importam da Amazônia Legal</p>
   </div>
</div>

<!-- O app é um painel com barra lateral: precisa de altura, não da faixa de 800px
     que as visualizações antigas usavam. vh para preencher a tela, com um piso para
     telas baixas. -->
<style>
  .viz-embed { height: calc(100vh - 180px); min-height: 760px; display: block; }
  @media (max-width: 992px) { .viz-embed { height: 80vh !important; min-height: 620px; } }
  @media (max-width: 576px) { .viz-embed { height: 85vh !important; min-height: 560px; } }
</style>

<br><br>

---
layout: default
title: Visualizações
lang: pt
---

<link rel="stylesheet" href="style.css">

<br>

<h1 class="title-about">Visualizações</h1>

<br>
<br>

<div style="max-width:570px; margin:0 auto;">
  <h2 class="selecao_por_tema">SELEÇÃO POR TEMA DA VISUALIZAÇÃO</h2>
    <div class="botoes-container">
      <a href="{{ site.baseurl }}/pt/viz/comercio-exterior" class="botao">COMÉRCIO EXTERIOR</a>
      <a href="{{ site.baseurl }}/pt/viz/desenvolvimento" class="botao">DESENVOLVIMENTO</a>
      <a href="{{ site.baseurl }}/pt/viz/desmatamento" class="botao">DESMATAMENTO</a>
      <a href="{{ site.baseurl }}/pt/viz/energia" class="botao">ENERGIA</a>
      <a href="{{ site.baseurl }}/pt/viz/saude" class="botao">SAÚDE</a>
      <a href="{{ site.baseurl }}/pt/viz/mercado-de-trabalho" class="botao">MERCADO DE TRABALHO</a>
      <a href="{{ site.baseurl }}/pt/viz/agropecuaria" class="botao">AGROPECUÁRIA</a>
    </div>
</div>

  <br>


   <h2 class="selecao_por_tema">VISUALIZAÇÕES MAIS ACESSADAS</h2>
<br>

  <div class="imagens-container">
  <button class="carousel-btn prev" aria-label="Anterior">&#10094;</button>
  
  <div class="imagens-track">
   <div class="icone-bloco">
    <a href="{{ site.baseurl }}/pt/viz/ranking-atividades-economicas-mais-dinamicas" target="_blank" rel="noopener noreferrer">
      <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_rk_atividades_dinamicas.png" alt="ícone ranking das atividades mais dinâmicas">
    </a><br>
    <p>Ranking das Atividades Econômicas mais Dinâmicas</p>
   </div>
   <div class="icone-bloco">
    <a href="{{ site.baseurl }}/pt/viz/series-temporais-da-producao-consumo-e-consumidores-de-energia" target="_blank" rel="noopener noreferrer">
      <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_ts_prod_con.jpg" alt="ícone séries temporais produção e consumo de energia 2">
    </a><br>
    <p>Séries Temporais de Produção, Consumo e Consumidores de Energia</p>
   </div>
   <div class="icone-bloco">
    <a href="{{ site.baseurl }}/pt/viz/ranking-da-potencia-outorgada-dos-estados-da-amazonia-legal" target="_blank" rel="noopener noreferrer">
      <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_pot_outorgada.jpg" alt="ícone ranking potência outorgada">
    </a><br>
    <p>Ranking de Potência Outorgada</p>
   </div>
    <div class="icone-bloco">
    <a href="{{ site.baseurl }}/pt/viz/series-temporais-dos-sistemas-isolados" target="_blank" rel="noopener noreferrer">
      <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_ts_sis_isolados.png" alt="ícone série temporais de sistemas isolados">
    </a><br>
    <p>Séries Temporais dos Sistemas Isolados de Energia</p>
   </div>
   <div class="icone-bloco">
    <a href="{{ site.baseurl }}/pt/viz/series-temporais-da-geracao-distribuida" target="_blank" rel="noopener noreferrer">
      <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_ts_ger_distribuida.jpg" alt="ícone séries temporais da geração distribuída">
    </a><br>
    <p>Séries Temporais da Geração Distribuída</p>
   </div>
   <div class="icone-bloco">
    <a href="{{ site.baseurl }}/pt/viz/mapa-floresta-desmatamento" target="_blank" rel="noopener noreferrer">
      <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_ts_mapa_evolucao_desmatamento.jpg" alt="ícone mapa de área de floresta ou desmatada">
    </a><br>
    <p>Mapa de Área de Floresta ou Desmatada</p>
   </div>
  </div>

  <button class="carousel-btn next" aria-label="Próximo">&#10095;</button>
</div>

<br>
<br>
<br>
<br>

<script>
(function () {
  const container = document.querySelector('.imagens-container');
  if (!container) return;

  const track = container.querySelector('.imagens-track');
  const cards = Array.from(track.children);
  const prev = container.querySelector('.carousel-btn.prev');
  const next = container.querySelector('.carousel-btn.next');

  let index = 0;

  function stepSize() {
    const first = cards[0];
    const rect = first.getBoundingClientRect();
    const style = getComputedStyle(first);
    const ml = parseFloat(style.marginLeft) || 0;
    const mr = parseFloat(style.marginRight) || 0;
    return rect.width + ml + mr + parseFloat(getComputedStyle(track).gap || 0);
  }

  function update() {
    const x = -index * stepSize();
    track.style.transform = `translateX(${x * -1 < 0 ? 0 : -index * stepSize()}px)`; // keep negative translate
    track.style.transform = `translateX(${-index * stepSize()}px)`;
    prev.disabled = index <= 0;
    next.disabled = index >= cards.length - 1;
  }

  next.addEventListener('click', () => {
    if (index < cards.length - 1) { index++; update(); }
  });

  prev.addEventListener('click', () => {
    if (index > 0) { index--; update(); }
  });

  // teclado 
  container.addEventListener('keydown', (e) => {
    if (e.key === 'ArrowRight') next.click();
    if (e.key === 'ArrowLeft') prev.click();
  });
  container.tabIndex = 0; // para receber foco

  // recalc em resize
  window.addEventListener('resize', update);

  update();
})();
</script>

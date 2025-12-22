---
layout: default
title: Visualizations
lang: en
---

<link rel="stylesheet" href="{{ site.baseurl }}/assets/css/style.css">

<br>

<h1 class="title-about">Visualizations</h1>

<br>
<br>

<div style="max-width:570px; margin:0 auto;">
  <h2 class="selecao_por_tema">MOST VIEWED VISUALIZATIONS</h2>
    <div class="botoes-container">
      <a href="{{ site.baseurl }}/en/viz/comercio-exterior" class="botao">FOREIGN TRADE</a>
      <a href="{{ site.baseurl }}/en/viz/desenvolvimento" class="botao">DEVELOPMENT</a>
      <a href="{{ site.baseurl }}/en/viz/desmatamento" class="botao">DEFORESTATION</a>
      <a href="{{ site.baseurl }}/en/viz/energia" class="botao">ENERGY</a>
      <a href="{{ site.baseurl }}/en/viz/saude" class="botao">HEALTH</a>
      <a href="{{ site.baseurl }}/en/viz/mercado-de-trabalho" class="botao">LABOR MARKET</a>
      <a href="{{ site.baseurl }}/en/viz/agropecuaria" class="botao">AGRICULTURE</a>
    </div>
</div>
  <br>
  

   <h2 class="selecao_por_tema">MAIN AVAILABLE VISUALIZATIONS</h2>
  <br>

  <div class="imagens-container">
    <button class="carousel-btn prev" aria-label="Previous">&#10094;</button>

    <div class="imagens-track">
      <div class="icone-bloco">
        <a href="{{ site.baseurl }}/en/viz/ranking-atividades-economicas-mais-dinamicas" target="_blank" rel="noopener noreferrer">
          <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_rk_atividades_dinamicas.png" alt="icon of rankings of most dynamic economic activities">
        </a><br>
        <p>Rankings of Most Dynamic Economic Activities</p>
      </div>
      <div class="icone-bloco">
        <a href="{{ site.baseurl }}/en/viz/series-temporais-da-producao-consumo-e-consumidores-de-energia" target="_blank" rel="noopener noreferrer">
          <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_ts_prod_con.jpg" alt="icon of time series of energy production, consumption, and consumers">
        </a><br>
        <p>Time Series of Energy Production, Consumption, and Consumers</p>
      </div>
      <div class="icone-bloco">
        <a href="{{ site.baseurl }}/en/viz/ranking-da-potencia-outorgada-dos-estados-da-amazonia-legal" target="_blank" rel="noopener noreferrer">
          <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_pot_outorgada.jpg" alt="icon of ranking of outorged power">
        </a><br>
        <p>Rankings of Outorged Power</p>
      </div>
      <div class="icone-bloco">
        <a href="{{ site.baseurl }}/en/viz/series-temporais-dos-sistemas-isolados" target="_blank" rel="noopener noreferrer"> 
        <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_ts_sis_isolados.jpg" alt="icon of time series of isolated power systems"> 
        </a>
        <br> 
        <p>Time Series of Isolated Power Systems</p> 
      </div> 
      <div class="icone-bloco"> 
        <a href="{{ site.baseurl }}/en/viz/series-temporais-da-geracao-distribuida" target="_blank" rel="noopener noreferrer"> 
        <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_ts_ger_distribuida.jpg" alt="icon of time series of distributed generation"> </a>
        <br> 
        <p>Time Series of Distributed Generation</p> 
      </div> 
      <div class="icone-bloco"> 
        <a href="{{ site.baseurl }}/en/viz/mapa-floresta-desmatamento" target="_blank" rel="noopener noreferrer"> 
        <img src="{{ site.baseurl }}/assets/img/icons_viz/icon_ts_mapa_evolucao_desmatamento.png" alt="icon of map of forested and deforested areas"> 
        </a>
        <br>
        <p>Map of Forested and Deforested Areas</p> 
      </div> 
  </div>

  <button class="carousel-btn next" aria-label="Next">&#10095;</button>
  </div>

<br>
<br>
<br>
<br>



<script>
(function () {
  const AUTOPLAY_MS = 4000;
  const RESPECTS_REDUCED_MOTION = window.matchMedia('(prefers-reduced-motion: reduce)').matches;

  const container = document.querySelector('.imagens-container');
  if (!container) return;

  const track = container.querySelector('.imagens-track');
  const originals = Array.from(track.children); // guarda os cards originais
  const prev = container.querySelector('.carousel-btn.prev');
  const next = container.querySelector('.carousel-btn.next');

  let index = 0;        // índice no trilho COM clones
  let vis = 1;          // quantos cards cabem na viewport
  let autoplayId = null;
  let isHoveringOrFocusing = false;
  let STEP = 0;         // tamanho de um passo (distância entre cards)

  // Mede a distância horizontal entre dois cards consecutivos
  function computeStep() {
    const children = track.children;
    if (children.length >= 2) {
      const r1 = children[0].getBoundingClientRect();
      const r2 = children[1].getBoundingClientRect();
      STEP = r2.left - r1.left;
    } else if (children.length === 1) {
      const r = children[0].getBoundingClientRect();
      STEP = r.width;
    } else {
      STEP = 0;
    }
  }

  function stepSize() {
    return STEP || 0;
  }

  function visibleCount() {
    // lê diretamente do CSS (variável --cards-per-view)
    const rootStyles = getComputedStyle(document.documentElement);
    const v = parseInt(rootStyles.getPropertyValue('--cards-per-view'), 10);
    return Number.isNaN(v) ? 1 : v;
  }


  function setTransform(noAnim = false) {
    if (noAnim) track.style.transition = 'none';
    track.style.transform = `translateX(${-index * stepSize()}px)`;
    if (noAnim) {
      // força reflow e reativa animação
      track.offsetHeight;
      track.style.transition = 'transform 0.4s ease-in-out';
    }
  }

    // constrói/Reconstrói o trilho infinito com clones
  function build() {
    const currentVis = visibleCount();

    track.innerHTML = '';
    vis = currentVis;

    // clones: últimos vis no início, originais, primeiros vis no fim
    const head = originals.slice(-vis).map(n => n.cloneNode(true));
    const tail = originals.slice(0, vis).map(n => n.cloneNode(true));

    head.forEach(n => track.appendChild(n));
    originals.forEach(n => track.appendChild(n));
    tail.forEach(n => track.appendChild(n));

    // mede o passo real agora que o trilho está montado
    computeStep();

    // ajusta o viewport para caber exatamente "vis" passos
    if (STEP > 0) {
      container.style.maxWidth = (STEP * vis) + 'px';
    }

    // começamos sempre no primeiro original (à esquerda)
    index = vis;
    setTransform(true);
    updateButtons();
  }



  function updateButtons() {
    // em loop infinito não desabilitamos setas
    prev.disabled = false;
    next.disabled = false;
  }

  function goNext() {
    index++;
    setTransform();
  }

  function goPrev() {
    index--;
    setTransform();
  }

  // quando a transição termina, checa se estamos nos clones e "teleporta"
  track.addEventListener('transitionend', () => {
    const total = originals.length;
    // faixa de originais: [vis, vis + total - 1]
    if (index >= vis + total) {
      // saiu pelo fim -> volta para início dos originais
      index = vis;
      setTransform(true);
    } else if (index < vis) {
      // saiu pelo começo -> vai para final dos originais
      index = vis + total - 1;
      setTransform(true);
    }
  });

  // eventos de controle
  next.addEventListener('click', () => { goNext(); restartAutoplay(); });
  prev.addEventListener('click', () => { goPrev(); restartAutoplay(); });

  // teclado
  container.addEventListener('keydown', (e) => {
    if (e.key === 'ArrowRight') { goNext(); restartAutoplay(); }
    if (e.key === 'ArrowLeft')  { goPrev();  restartAutoplay(); }
  });
  container.tabIndex = 0;

  // pausa em hover/focus
  container.addEventListener('mouseenter', () => { isHoveringOrFocusing = true; stopAutoplay(); });
  container.addEventListener('mouseleave', () => { isHoveringOrFocusing = false; startAutoplay(); });
  container.addEventListener('focusin',  () => { isHoveringOrFocusing = true; stopAutoplay(); });
  container.addEventListener('focusout', () => { isHoveringOrFocusing = false; startAutoplay(); });

  // pausa quando a aba perde foco
  document.addEventListener('visibilitychange', () => {
    if (document.hidden) stopAutoplay(); else startAutoplay();
  });

  // autoplay
  function startAutoplay() {
    if (RESPECTS_REDUCED_MOTION) return;
    if (isHoveringOrFocusing) return;
    if (autoplayId) return;
    autoplayId = setInterval(goNext, AUTOPLAY_MS);
  }
  function stopAutoplay() {
    if (autoplayId) { clearInterval(autoplayId); autoplayId = null; }
  }
  function restartAutoplay() { stopAutoplay(); startAutoplay(); }

  // rebuild em resize (com debounce simples)
  let resizeTimer;
  window.addEventListener('resize', () => {
    clearTimeout(resizeTimer);
    resizeTimer = setTimeout(() => { build(); restartAutoplay(); }, 120);
  });

  // boot
  build();
  startAutoplay();
})();
</script>

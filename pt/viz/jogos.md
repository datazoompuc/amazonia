---
layout: default
title: Jogos Interativos de Dados
lang: pt
description: "Jogos diários educativos baseados nos microdados da Amazônia Legal do Data Zoom (PUC-Rio)"
---

<style>
  :root {
    --green-main: #2f7d32;
    --green-btn: #3f8513;
    --green-hover: #26590b;
    --green-soft: #73c373;
    --border-tech: #d1dfd1;
  }

  .jogos-wrapper {
    max-width: 1140px;
    margin: 0 auto;
    padding: 24px 16px 60px 16px;
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
  }

  /* ABAS PRINCIPAIS (DATAGRID vs VERSUS) */
  .hub-switcher {
    display: flex;
    justify-content: center;
    gap: 8px;
    margin: 20px 0 28px 0;
  }
  .hub-btn {
    font-family: 'Inter', sans-serif;
    font-size: 13px;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 0.5px;
    padding: 11px 22px;
    background: #ffffff;
    color: var(--green-btn);
    border: 2px solid var(--green-btn);
    border-radius: 3px;
    cursor: pointer;
    transition: all 0.15s ease;
  }
  .hub-btn:hover {
    background: #f0f7f0;
  }
  .hub-btn.active {
    background: var(--green-btn);
    color: #ffffff;
  }

  .game-panel {
    display: none;
    background: #ffffff;
    border: 1px solid var(--border-tech);
    border-radius: 4px;
    padding: 22px;
  }
  .game-panel.active {
    display: block;
  }

  /* SELETOR DIÁRIO (1 a 5 no Grid, 1 a 20 no Versus) */
  .daily-selector-bar {
    display: flex;
    align-items: center;
    justify-content: center;
    flex-wrap: wrap;
    gap: 6px;
    margin-bottom: 20px;
    background: #f9fbf9;
    border: 1px solid #dbe6db;
    border-radius: 3px;
    padding: 10px 14px;
  }
  .daily-pill-btn {
    font-family: 'JetBrains Mono', monospace;
    font-size: 11px;
    font-weight: 700;
    padding: 5px 11px;
    border: 1px solid #c2d6c2;
    background: #ffffff;
    color: #2b3a42;
    border-radius: 3px;
    cursor: pointer;
    transition: all 0.12s ease;
  }
  .daily-pill-btn:hover {
    background: #eef6ee;
    border-color: var(--green-btn);
  }
  .daily-pill-btn.active {
    background: var(--green-main);
    color: #ffffff;
    border-color: var(--green-main);
  }

  /* BARRA DE STATUS TÉCNICA */
  .status-bar-tech {
    background: #f8faf8;
    border: 1px solid #dbe6db;
    border-left: 4px solid var(--green-btn);
    border-radius: 3px;
    padding: 10px 16px;
    margin-bottom: 20px;
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: space-between;
    gap: 12px;
  }
  .status-metrics {
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    gap: 14px;
    font-size: 13px;
  }
  .badge-timer {
    font-family: 'JetBrains Mono', monospace;
    font-weight: 700;
    color: #1a4d1a;
    background: #e4f3e4;
    padding: 3px 8px;
    border-radius: 3px;
    border: 1px solid #b7deb7;
    display: inline-flex;
    align-items: center;
    gap: 5px;
  }
  .badge-score {
    font-family: 'JetBrains Mono', monospace;
    font-weight: 700;
    color: var(--green-main);
    background: #e9f5e9;
    padding: 2px 7px;
    border-radius: 3px;
    border: 1px solid #cce5cc;
  }
  .badge-penalty {
    font-family: 'JetBrains Mono', monospace;
    font-weight: 700;
    color: #c53030;
    background: #feebee;
    padding: 2px 7px;
    border-radius: 3px;
    border: 1px solid #fcc;
  }

  /* =========================================================
     TABULEIRO 3x3 DO DATAGRID
     ========================================================= */
  .grid-board {
    display: grid;
    grid-template-columns: 140px repeat(3, 1fr);
    gap: 8px;
    margin: 0 auto 24px auto;
    max-width: 900px;
  }
  @media (max-width: 768px) {
    .grid-board {
      grid-template-columns: 90px repeat(3, 1fr);
      gap: 5px;
    }
  }

  .corner-box {
    background: #f4f8f4;
    border: 1px solid #d2e2d2;
    border-radius: 3px;
    padding: 8px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    font-size: 11px;
    font-weight: 700;
    color: var(--green-main);
  }

  .header-box-col {
    background: #f4f8f4;
    border: 1px solid #d2e2d2;
    border-top: 3px solid var(--green-btn);
    border-radius: 3px;
    padding: 8px 6px;
    min-height: 80px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    text-align: center;
  }
  .header-tag {
    font-size: 10px;
    font-weight: 800;
    color: var(--green-soft);
    text-transform: uppercase;
  }
  .header-name {
    font-size: 12px;
    font-weight: 700;
    color: #111111;
    margin-top: 2px;
    line-height: 1.25;
  }
  .header-desc {
    font-size: 11px;
    color: #555555;
    margin-top: 2px;
  }

  .header-box-row {
    background: #f4f8f4;
    border: 1px solid #d2e2d2;
    border-left: 3px solid var(--green-btn);
    border-radius: 3px;
    padding: 8px 6px;
    min-height: 100px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    text-align: left;
  }

  .grid-cell {
    background: #ffffff;
    border: 1.5px solid #d8e5d8;
    border-radius: 3px;
    min-height: 100px;
    padding: 8px;
    cursor: pointer;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    transition: border-color 0.15s, background-color 0.15s;
    text-align: left;
  }
  .grid-cell:hover {
    background: #f9fdf9;
    border-color: var(--green-btn);
  }
  .grid-cell.filled {
    background: #f2f9f2;
    border: 2px solid var(--green-btn);
    cursor: default;
  }
  .cell-coord {
    font-size: 10px;
    font-family: 'JetBrains Mono', monospace;
    color: #888888;
  }
  .cell-empty-cta {
    font-size: 12px;
    font-weight: 600;
    color: var(--green-btn);
    text-align: center;
  }
  .cell-val-title {
    font-size: 13px;
    font-weight: 800;
    color: #1a4d1a;
  }
  .cell-val-badge {
    font-size: 10px;
    font-family: 'JetBrains Mono', monospace;
    font-weight: 700;
    background: #dbeef0;
    color: #0d4b52;
    padding: 1px 5px;
    border-radius: 2px;
    display: inline-block;
  }

  /* =========================================================
     MODO VERSUS (20 DESAFIOS DIÁRIOS)
     ========================================================= */
  .versus-container {
    max-width: 860px;
    margin: 0 auto;
    text-align: center;
  }
  .versus-category-tag {
    font-size: 11px;
    font-weight: 800;
    color: var(--green-soft);
    text-transform: uppercase;
    letter-spacing: 0.5px;
  }
  .versus-question-title {
    font-size: 20px;
    font-weight: 800;
    color: #111111;
    margin: 6px 0 20px 0;
    line-height: 1.3;
  }

  .versus-arena {
    display: grid;
    grid-template-columns: 1fr 60px 1fr;
    gap: 12px;
    align-items: center;
    margin-bottom: 22px;
  }
  @media (max-width: 680px) {
    .versus-arena {
      grid-template-columns: 1fr;
      gap: 10px;
    }
  }

  .versus-card {
    background: #ffffff;
    border: 2px solid #d5e5d5;
    border-radius: 4px;
    padding: 24px 18px;
    cursor: pointer;
    transition: all 0.15s ease;
    text-align: center;
    position: relative;
    min-height: 170px;
    display: flex;
    flex-direction: column;
    justify-content: center;
  }
  .versus-card:hover {
    border-color: var(--green-btn);
    background: #f7fbf7;
    transform: translateY(-2px);
    box-shadow: 0 4px 14px rgba(47, 125, 50, 0.12);
  }
  .versus-card.correct {
    border-color: var(--green-main) !important;
    background: #eef7ee !important;
  }
  .versus-card.wrong {
    border-color: #c53030 !important;
    background: #fdf2f2 !important;
  }

  .versus-state-badge {
    font-family: 'JetBrains Mono', monospace;
    font-size: 11px;
    font-weight: 700;
    color: var(--green-main);
    background: #e8f5e8;
    padding: 2px 7px;
    border-radius: 2px;
    display: inline-block;
    margin-bottom: 6px;
  }
  .versus-name {
    font-size: 18px;
    font-weight: 800;
    color: #111111;
  }
  .versus-value-reveal {
    font-family: 'JetBrains Mono', monospace;
    font-size: 14px;
    font-weight: 700;
    color: var(--green-btn);
    margin-top: 8px;
  }

  .versus-divider {
    font-size: 16px;
    font-weight: 800;
    color: #8da1af;
    background: #f4f8f4;
    border: 1px solid #d2e2d2;
    border-radius: 50%;
    width: 44px;
    height: 44px;
    margin: 0 auto;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .versus-insight-card {
    background: #f4f9f4;
    border: 1px solid #c8e0c8;
    border-left: 4px solid var(--green-btn);
    border-radius: 3px;
    padding: 14px 18px;
    text-align: left;
    font-size: 13px;
    color: #1a4d1a;
    line-height: 1.5;
    margin-bottom: 20px;
  }

  /* Conexão com os Dashboards */
  .connected-viz-banner {
    margin-top: 26px;
    background: #f7faf7;
    border: 1px solid #d5e5d5;
    border-radius: 3px;
    padding: 14px 18px;
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: space-between;
    gap: 12px;
    text-align: left;
  }
  .connected-viz-title {
    font-size: 14px;
    font-weight: 700;
    color: var(--green-main);
  }
  .connected-viz-desc {
    font-size: 12px;
    color: #555555;
    margin-top: 2px;
  }

  /* Modal de Busca Grid */
  .modal-overlay {
    position: fixed;
    inset: 0;
    background: rgba(0,0,0,0.5);
    z-index: 2000;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 14px;
  }
  .modal-window {
    background: #ffffff;
    width: 100%;
    max-width: 500px;
    border-radius: 3px;
    border: 1px solid #c5d8c5;
    box-shadow: 0 10px 30px rgba(0,0,0,0.15);
    overflow: hidden;
    text-align: left;
  }
  .modal-top {
    background: #f4f8f4;
    border-bottom: 1px solid #dce8dc;
    padding: 10px 14px;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .modal-title {
    font-size: 12px;
    font-weight: 800;
    color: var(--green-main);
    text-transform: uppercase;
  }
  .modal-body {
    padding: 14px;
  }
  .search-box {
    width: 100%;
    padding: 9px 12px;
    font-size: 13px;
    border: 1.5px solid var(--green-soft);
    border-radius: 3px;
    outline: none;
    font-family: 'Inter', sans-serif;
  }
  .suggest-list {
    margin-top: 10px;
    max-height: 220px;
    overflow-y: auto;
    border: 1px solid #e2ece2;
    border-radius: 3px;
  }
  .suggest-item {
    padding: 8px 12px;
    border-bottom: 1px solid #eef4ee;
    display: flex;
    justify-content: space-between;
    align-items: center;
    cursor: pointer;
    font-size: 12px;
  }
  .suggest-item:hover {
    background: #f4f9f4;
  }
  .suggest-item.used {
    background: #f9f9f9;
    opacity: 0.5;
    cursor: not-allowed;
  }
</style>

<div class="jogos-wrapper">

  <br>
  <h1 class="title-about">Jogos de Dados da Amazônia Legal</h1>
  <br>

  <!-- ABAS DOS JOGOS (DATAGRID vs VERSUS) -->
  <div class="hub-switcher">
    <button id="tab-btn-grid" onclick="switchGameMode('grid')" class="hub-btn active">
      1. Modo Grid (5 Desafios Diários)
    </button>
    <button id="tab-btn-versus" onclick="switchGameMode('versus')" class="hub-btn">
      2. Modo Versus (20 Desafios Diários)
    </button>
  </div>

  <!-- ========================================================
       PAINEL 1: MODO GRID (5 GRIDS DIÁRIOS)
       ======================================================== -->
  <div id="panel-grid" class="game-panel active">
    
    <!-- Seletor dos 5 Grids Diários -->
    <div class="daily-selector-bar">
      <span style="font-size:12px; font-weight:700; color:#2f7d32; margin-right:8px;">SELECIONE O GRID DO DIA:</span>
      <button onclick="selectGridPuzzle(0)" id="grid-btn-0" class="daily-pill-btn active">Grid #1 (Estados)</button>
      <button onclick="selectGridPuzzle(1)" id="grid-btn-1" class="daily-pill-btn">Grid #2 (Pecuária)</button>
      <button onclick="selectGridPuzzle(2)" id="grid-btn-2" class="daily-pill-btn">Grid #3 (Capital Humano)</button>
      <button onclick="selectGridPuzzle(3)" id="grid-btn-3" class="daily-pill-btn">Grid #4 (Municípios PA)</button>
      <button onclick="selectGridPuzzle(4)" id="grid-btn-4" class="daily-pill-btn">Grid #5 (Polos 809)</button>
    </div>

    <h3 id="current-grid-title" style="font-size:16px; font-weight:800; color:#111; margin-bottom:14px; text-align:center;">
      Grid Diário #01
    </h3>

    <!-- Status Bar Técnica com Timer -->
    <div class="status-bar-tech">
      <div class="status-metrics">
        <span>⏱️ Tempo: <strong id="grid-timer" class="badge-timer">00:00</strong></span>
        <span>Pontos: <strong id="grid-score" class="badge-score">1000 pts</strong></span>
        <span>Células: <strong id="grid-progress">0 / 9</strong></span>
        <span>Penalidades: <span id="grid-penalties" class="badge-penalty">0 (-0 pts)</span></span>
        <span>Raridade: <strong id="grid-rarity">--</strong></span>
      </div>
      <div>
        <button onclick="resetCurrentGrid()" class="btn btn-sm btn-default" style="border-radius:3px; font-weight:600;">Reiniciar</button>
        <button id="btn-share-grid" onclick="shareGridResult()" class="btn btn-sm btn-success" style="border-radius:3px; font-weight:700; background:#3f8513; border:none;" disabled>Copiar Resultado</button>
      </div>
    </div>

    <!-- Grade 3x3 -->
    <div class="grid-board">
      <div class="corner-box">
        <span>DATAZOOM</span>
        <span style="font-size:9px; color:#555;">Microdados</span>
      </div>
      <div id="col-0" class="header-box-col"></div>
      <div id="col-1" class="header-box-col"></div>
      <div id="col-2" class="header-box-col"></div>

      <div id="row-0" class="header-box-row"></div>
      <div id="cell-0-0" onclick="handleGridCellClick(0,0)" class="grid-cell"></div>
      <div id="cell-0-1" onclick="handleGridCellClick(0,1)" class="grid-cell"></div>
      <div id="cell-0-2" onclick="handleGridCellClick(0,2)" class="grid-cell"></div>

      <div id="row-1" class="header-box-row"></div>
      <div id="cell-1-0" onclick="handleGridCellClick(1,0)" class="grid-cell"></div>
      <div id="cell-1-1" onclick="handleGridCellClick(1,1)" class="grid-cell"></div>
      <div id="cell-1-2" onclick="handleGridCellClick(1,2)" class="grid-cell"></div>

      <div id="row-2" class="header-box-row"></div>
      <div id="cell-2-0" onclick="handleGridCellClick(2,0)" class="grid-cell"></div>
      <div id="cell-2-1" onclick="handleGridCellClick(2,1)" class="grid-cell"></div>
      <div id="cell-2-2" onclick="handleGridCellClick(2,2)" class="grid-cell"></div>
    </div>

  </div>

  <!-- ========================================================
       PAINEL 2: MODO VERSUS (20 DESAFIOS DIÁRIOS)
       ======================================================== -->
  <div id="panel-versus" class="game-panel">
    
    <!-- Seletor dos 20 Desafios Diários -->
    <div class="daily-selector-bar" style="gap:4px;">
      <span style="font-size:12px; font-weight:700; color:#2f7d32; width:100%; margin-bottom:4px;">20 DESAFIOS DO DIA (HIGHER OR LOWER):</span>
      <div id="versus-pill-buttons" style="display:flex; flex-wrap:wrap; gap:4px; justify-content:center;">
        <!-- Renderizado dinamicamente de 1 a 20 -->
      </div>
    </div>

    <!-- Status Bar Técnica Versus com Timer -->
    <div class="status-bar-tech">
      <div class="status-metrics">
        <span>⏱️ Tempo: <strong id="versus-timer" class="badge-timer">00:00</strong></span>
        <span>Acertos: <strong id="versus-score-badge" class="badge-score">0 / 20</strong></span>
      </div>
      <div>
        <button onclick="resetVersusGame()" class="btn btn-sm btn-default" style="border-radius:3px; font-weight:600;">Reiniciar Desafios</button>
      </div>
    </div>

    <div class="versus-container">
      
      <span id="versus-category" class="versus-category-tag">CATEGORIA</span>
      <h3 id="versus-question" class="versus-question-title">Carregando pergunta...</h3>

      <!-- Arena dos dois cards -->
      <div class="versus-arena">
        
        <!-- Opção Esquerda -->
        <div id="versus-card-left" class="versus-card" onclick="makeVersusGuess('left')">
          <div>
            <span id="left-state-badge" class="versus-state-badge">UF</span>
            <div id="left-name" class="versus-name">Opção A</div>
          </div>
          <div id="left-val" class="versus-value-reveal" style="display:none;">---</div>
        </div>

        <!-- Divisor VS -->
        <div class="versus-divider">VS</div>

        <!-- Opção Direita -->
        <div id="versus-card-right" class="versus-card" onclick="makeVersusGuess('right')">
          <div>
            <span id="right-state-badge" class="versus-state-badge">UF</span>
            <div id="right-name" class="versus-name">Opção B</div>
          </div>
          <div id="right-val" class="versus-value-reveal" style="display:none;">---</div>
        </div>

      </div>

      <!-- Insight Box (Pós-resposta) -->
      <div id="versus-insight" class="versus-insight-card" style="display:none;">
        <!-- Texto explicativo econométrico + link para viz oficial -->
      </div>

      <!-- Barra de Controle do Versus -->
      <div style="display:flex; justify-content:center; gap:10px;">
        <button id="versus-next-btn" onclick="nextVersusChallenge()" class="btn btn-success" style="background:#3f8513; border:none; padding:10px 24px; font-weight:700; display:none;">
          Próximo Desafio Diário →
        </button>
      </div>

    </div>

  </div>

  <!-- CONEXÃO COM VISUALIZAÇÕES -->
  <div class="connected-viz-banner">
    <div>
      <div class="connected-viz-title">Gostou das análises apresentadas nos jogos?</div>
      <div class="connected-viz-desc">Todos os dados derivam do pacote R datazoom.amazonia e alimentam os dashboards e rankings interativos.</div>
    </div>
    <div style="display:flex; gap:8px;">
      <a href="{{ site.baseurl }}/pt/viz/ranking-de-campeoes-de-desmatamento" class="botao" style="font-size:11px; padding:7px 11px;">
        Ranking Desmatamento ↗
      </a>
      <a href="{{ site.baseurl }}/pt/viz/mapa-do-efetivo-pecuario-dos-municipios" class="botao" style="font-size:11px; padding:7px 11px;">
        Mapa Pecuária ↗
      </a>
    </div>
  </div>

</div>

<!-- MODAL DE BUSCA GRID -->
<div id="search-modal" class="modal-overlay" style="display:none;">
  <div class="modal-window">
    <div class="modal-top">
      <span class="modal-title" id="modal-grid-target">ESCOLHER RESPOSTA</span>
      <button onclick="closeGridModal()" style="background:none; border:none; font-size:18px; cursor:pointer;">&times;</button>
    </div>
    <div class="modal-body">
      <div id="modal-criteria-desc" style="font-size:12px; color:#444; margin-bottom:10px; line-height:1.4;"></div>
      <input type="text" id="grid-search-input" class="search-box" placeholder="Digite pelo menos 2 letras... (ex: Man, Alt, Bel)" oninput="filterGridSuggestions(this.value)">
      <div id="modal-error-alert" style="display:none; color:#9b1c1c; background:#fdf2f2; border:1px solid #f8b4b4; padding:8px; font-size:12px; border-radius:3px; margin-top:8px;"></div>
      <div class="suggest-list" id="modal-suggest-list"></div>
    </div>
  </div>
</div>

<script>
const MUNICS_DATA = [{"id": "1100015", "name": "Alta Floresta D'Oeste", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1100023", "name": "Ariquemes", "uf": "RO", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1100031", "name": "Cabixi", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1100049", "name": "Cacoal", "uf": "RO", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1100056", "name": "Cerejeiras", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1100064", "name": "Colorado do Oeste", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1100072", "name": "Corumbiara", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1100080", "name": "Costa Marques", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1100098", "name": "Espigão D'Oeste", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1100106", "name": "Guajará-Mirim", "uf": "RO", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1100114", "name": "Jaru", "uf": "RO", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1100122", "name": "Ji-Paraná", "uf": "RO", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1100130", "name": "Machadinho D'Oeste", "uf": "RO", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1100148", "name": "Nova Brasilândia D'Oeste", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1100155", "name": "Ouro Preto do Oeste", "uf": "RO", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1100189", "name": "Pimenta Bueno", "uf": "RO", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1100205", "name": "Porto Velho", "uf": "RO", "in_arco": true, "pop30": true, "rarity": 55}, {"id": "1100254", "name": "Presidente Médici", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1100262", "name": "Rio Crespo", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1100288", "name": "Rolim de Moura", "uf": "RO", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1100296", "name": "Santa Luzia D'Oeste", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1100304", "name": "Vilhena", "uf": "RO", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1100320", "name": "São Miguel do Guaporé", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1100338", "name": "Nova Mamoré", "uf": "RO", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1100346", "name": "Alvorada D'Oeste", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1100379", "name": "Alto Alegre dos Parecis", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1100403", "name": "Alto Paraíso", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1100452", "name": "Buritis", "uf": "RO", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1100502", "name": "Novo Horizonte do Oeste", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1100601", "name": "Cacaulândia", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1100700", "name": "Campo Novo de Rondônia", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1100809", "name": "Candeias do Jamari", "uf": "RO", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1100908", "name": "Castanheiras", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1100924", "name": "Chupinguaia", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1100940", "name": "Cujubim", "uf": "RO", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1101005", "name": "Governador Jorge Teixeira", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1101104", "name": "Itapuã do Oeste", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1101203", "name": "Ministro Andreazza", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1101302", "name": "Mirante da Serra", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1101401", "name": "Monte Negro", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1101435", "name": "Nova União", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1101450", "name": "Parecis", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1101468", "name": "Pimenteiras do Oeste", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1101476", "name": "Primavera de Rondônia", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1101484", "name": "São Felipe D'Oeste", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1101492", "name": "São Francisco do Guaporé", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1101500", "name": "Seringueiras", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1101559", "name": "Teixeirópolis", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1101609", "name": "Theobroma", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1101708", "name": "Urupá", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1101757", "name": "Vale do Anari", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1101807", "name": "Vale do Paraíso", "uf": "RO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1200013", "name": "Acrelândia", "uf": "AC", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1200054", "name": "Assis Brasil", "uf": "AC", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1200104", "name": "Brasiléia", "uf": "AC", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1200138", "name": "Bujari", "uf": "AC", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1200179", "name": "Capixaba", "uf": "AC", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1200203", "name": "Cruzeiro do Sul", "uf": "AC", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1200252", "name": "Epitaciolândia", "uf": "AC", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1200302", "name": "Feijó", "uf": "AC", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1200328", "name": "Jordão", "uf": "AC", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1200336", "name": "Mâncio Lima", "uf": "AC", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1200344", "name": "Manoel Urbano", "uf": "AC", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1200351", "name": "Marechal Thaumaturgo", "uf": "AC", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1200385", "name": "Plácido de Castro", "uf": "AC", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1200393", "name": "Porto Walter", "uf": "AC", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1200401", "name": "Rio Branco", "uf": "AC", "in_arco": true, "pop30": false, "rarity": 55}, {"id": "1200427", "name": "Rodrigues Alves", "uf": "AC", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1200435", "name": "Santa Rosa do Purus", "uf": "AC", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1200450", "name": "Senador Guiomard", "uf": "AC", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1200500", "name": "Sena Madureira", "uf": "AC", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1200609", "name": "Tarauacá", "uf": "AC", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1200708", "name": "Xapuri", "uf": "AC", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1200807", "name": "Porto Acre", "uf": "AC", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1300029", "name": "Alvarães", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1300060", "name": "Amaturá", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1300086", "name": "Anamã", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1300102", "name": "Anori", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1300144", "name": "Apuí", "uf": "AM", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1300201", "name": "Atalaia do Norte", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1300300", "name": "Autazes", "uf": "AM", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1300409", "name": "Barcelos", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1300508", "name": "Barreirinha", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1300607", "name": "Benjamin Constant", "uf": "AM", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1300631", "name": "Beruri", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1300680", "name": "Boa Vista do Ramos", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1300706", "name": "Boca do Acre", "uf": "AM", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1300805", "name": "Borba", "uf": "AM", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1300839", "name": "Caapiranga", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1300904", "name": "Canutama", "uf": "AM", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1301001", "name": "Carauari", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1301100", "name": "Careiro", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1301159", "name": "Careiro da Várzea", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1301209", "name": "Coari", "uf": "AM", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1301308", "name": "Codajás", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1301407", "name": "Eirunepé", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1301506", "name": "Envira", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1301605", "name": "Fonte Boa", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1301654", "name": "Guajará", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1301704", "name": "Humaitá", "uf": "AM", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1301803", "name": "Ipixuna", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1301852", "name": "Iranduba", "uf": "AM", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1301902", "name": "Itacoatiara", "uf": "AM", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1301951", "name": "Itamarati", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1302009", "name": "Itapiranga", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1302108", "name": "Japurá", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1302207", "name": "Juruá", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1302306", "name": "Jutaí", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1302405", "name": "Lábrea", "uf": "AM", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1302504", "name": "Manacapuru", "uf": "AM", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1302553", "name": "Manaquiri", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1302603", "name": "Manaus", "uf": "AM", "in_arco": false, "pop30": true, "rarity": 55}, {"id": "1302702", "name": "Manicoré", "uf": "AM", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1302801", "name": "Maraã", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1302900", "name": "Maués", "uf": "AM", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1303007", "name": "Nhamundá", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1303106", "name": "Nova Olinda do Norte", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1303205", "name": "Novo Airão", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1303304", "name": "Novo Aripuanã", "uf": "AM", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1303403", "name": "Parintins", "uf": "AM", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1303502", "name": "Pauini", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1303536", "name": "Presidente Figueiredo", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1303569", "name": "Rio Preto da Eva", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1303601", "name": "Santa Isabel do Rio Negro", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1303700", "name": "Santo Antônio do Içá", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1303809", "name": "São Gabriel da Cachoeira", "uf": "AM", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1303908", "name": "São Paulo de Olivença", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1303957", "name": "São Sebastião do Uatumã", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1304005", "name": "Silves", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1304062", "name": "Tabatinga", "uf": "AM", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1304104", "name": "Tapauá", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1304203", "name": "Tefé", "uf": "AM", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1304237", "name": "Tonantins", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1304260", "name": "Uarini", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1304302", "name": "Urucará", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1304401", "name": "Urucurituba", "uf": "AM", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1400027", "name": "Amajari", "uf": "RR", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1400050", "name": "Alto Alegre", "uf": "RR", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1400100", "name": "Boa Vista", "uf": "RR", "in_arco": false, "pop30": true, "rarity": 55}, {"id": "1400159", "name": "Bonfim", "uf": "RR", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1400175", "name": "Cantá", "uf": "RR", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1400209", "name": "Caracaraí", "uf": "RR", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1400233", "name": "Caroebe", "uf": "RR", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1400282", "name": "Iracema", "uf": "RR", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1400308", "name": "Mucajaí", "uf": "RR", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1400407", "name": "Normandia", "uf": "RR", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1400456", "name": "Pacaraima", "uf": "RR", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1400472", "name": "Rorainópolis", "uf": "RR", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1400506", "name": "São João da Baliza", "uf": "RR", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1400605", "name": "São Luiz do Anauá", "uf": "RR", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1400704", "name": "Uiramutã", "uf": "RR", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1500107", "name": "Abaetetuba", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1500131", "name": "Abel Figueiredo", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1500206", "name": "Acará", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1500305", "name": "Afuá", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1500347", "name": "Água Azul do Norte", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1500404", "name": "Alenquer", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1500503", "name": "Almeirim", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1500602", "name": "Altamira", "uf": "PA", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1500701", "name": "Anajás", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1500800", "name": "Ananindeua", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1500859", "name": "Anapu", "uf": "PA", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1500909", "name": "Augusto Corrêa", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1500958", "name": "Aurora do Pará", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1501006", "name": "Aveiro", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1501105", "name": "Bagre", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1501204", "name": "Baião", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1501253", "name": "Bannach", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1501303", "name": "Barcarena", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1501402", "name": "Belém", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 55}, {"id": "1501451", "name": "Belterra", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1501501", "name": "Benevides", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1501576", "name": "Bom Jesus do Tocantins", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1501600", "name": "Bonito", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1501709", "name": "Bragança", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1501725", "name": "Brasil Novo", "uf": "PA", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1501758", "name": "Brejo Grande do Araguaia", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1501782", "name": "Breu Branco", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1501808", "name": "Breves", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1501907", "name": "Bujaru", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1501956", "name": "Cachoeira do Piriá", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1502004", "name": "Cachoeira do Arari", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1502103", "name": "Cametá", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1502152", "name": "Canaã dos Carajás", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1502202", "name": "Capanema", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1502301", "name": "Capitão Poço", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1502400", "name": "Castanhal", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1502509", "name": "Chaves", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1502608", "name": "Colares", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1502707", "name": "Conceição do Araguaia", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1502756", "name": "Concórdia do Pará", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1502764", "name": "Cumaru do Norte", "uf": "PA", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1502772", "name": "Curionópolis", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1502806", "name": "Curralinho", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1502855", "name": "Curuá", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1502905", "name": "Curuçá", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1502939", "name": "Dom Eliseu", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1502954", "name": "Eldorado do Carajás", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1503002", "name": "Faro", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1503044", "name": "Floresta do Araguaia", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1503077", "name": "Garrafão do Norte", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1503093", "name": "Goianésia do Pará", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1503101", "name": "Gurupá", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1503200", "name": "Igarapé-Açu", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1503309", "name": "Igarapé-Miri", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1503408", "name": "Inhangapi", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1503457", "name": "Ipixuna do Pará", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1503507", "name": "Irituia", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1503606", "name": "Itaituba", "uf": "PA", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1503705", "name": "Itupiranga", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1503754", "name": "Jacareacanga", "uf": "PA", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1503804", "name": "Jacundá", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1503903", "name": "Juruti", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1504000", "name": "Limoeiro do Ajuru", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1504059", "name": "Mãe do Rio", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1504109", "name": "Magalhães Barata", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1504208", "name": "Marabá", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1504307", "name": "Maracanã", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1504406", "name": "Marapanim", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1504422", "name": "Marituba", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1504455", "name": "Medicilândia", "uf": "PA", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1504505", "name": "Melgaço", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1504604", "name": "Mocajuba", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1504703", "name": "Moju", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1504752", "name": "Mojuí dos Campos", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1504802", "name": "Monte Alegre", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1504901", "name": "Muaná", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1504950", "name": "Nova Esperança do Piriá", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1504976", "name": "Nova Ipixuna", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1505007", "name": "Nova Timboteua", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1505031", "name": "Novo Progresso", "uf": "PA", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1505064", "name": "Novo Repartimento", "uf": "PA", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1505106", "name": "Óbidos", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1505205", "name": "Oeiras do Pará", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1505304", "name": "Oriximiná", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1505403", "name": "Ourém", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1505437", "name": "Ourilândia do Norte", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1505486", "name": "Pacajá", "uf": "PA", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1505494", "name": "Palestina do Pará", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1505502", "name": "Paragominas", "uf": "PA", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1505536", "name": "Parauapebas", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1505551", "name": "Pau D'Arco", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1505601", "name": "Peixe-Boi", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1505635", "name": "Piçarra", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1505650", "name": "Placas", "uf": "PA", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1505700", "name": "Ponta de Pedras", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1505809", "name": "Portel", "uf": "PA", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1505908", "name": "Porto de Moz", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1506005", "name": "Prainha", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1506104", "name": "Primavera", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1506112", "name": "Quatipuru", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1506138", "name": "Redenção", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1506161", "name": "Rio Maria", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1506187", "name": "Rondon do Pará", "uf": "PA", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1506195", "name": "Rurópolis", "uf": "PA", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1506203", "name": "Salinópolis", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1506302", "name": "Salvaterra", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1506351", "name": "Santa Bárbara do Pará", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1506401", "name": "Santa Cruz do Arari", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1506500", "name": "Santa Izabel do Pará", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1506559", "name": "Santa Luzia do Pará", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1506583", "name": "Santa Maria das Barreiras", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1506609", "name": "Santa Maria do Pará", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1506708", "name": "Santana do Araguaia", "uf": "PA", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1506807", "name": "Santarém", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1506906", "name": "Santarém Novo", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1507003", "name": "Santo Antônio do Tauá", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1507102", "name": "São Caetano de Odivelas", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1507151", "name": "São Domingos do Araguaia", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1507201", "name": "São Domingos do Capim", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1507300", "name": "São Félix do Xingu", "uf": "PA", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1507409", "name": "São Francisco do Pará", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1507458", "name": "São Geraldo do Araguaia", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1507466", "name": "São João da Ponta", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1507474", "name": "São João de Pirabas", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1507508", "name": "São João do Araguaia", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1507607", "name": "São Miguel do Guamá", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1507706", "name": "São Sebastião da Boa Vista", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1507755", "name": "Sapucaia", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1507805", "name": "Senador José Porfírio", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1507904", "name": "Soure", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1507953", "name": "Tailândia", "uf": "PA", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1507961", "name": "Terra Alta", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1507979", "name": "Terra Santa", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1508001", "name": "Tomé-Açu", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1508035", "name": "Tracuateua", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1508050", "name": "Trairão", "uf": "PA", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "1508084", "name": "Tucumã", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1508100", "name": "Tucuruí", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1508126", "name": "Ulianópolis", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1508159", "name": "Uruará", "uf": "PA", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "1508209", "name": "Vigia", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1508308", "name": "Viseu", "uf": "PA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1508357", "name": "Vitória do Xingu", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1508407", "name": "Xinguara", "uf": "PA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1600055", "name": "Serra do Navio", "uf": "AP", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1600105", "name": "Amapá", "uf": "AP", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1600154", "name": "Pedra Branca do Amapari", "uf": "AP", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1600204", "name": "Calçoene", "uf": "AP", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1600212", "name": "Cutias", "uf": "AP", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1600238", "name": "Ferreira Gomes", "uf": "AP", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1600253", "name": "Itaubal", "uf": "AP", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1600279", "name": "Laranjal do Jari", "uf": "AP", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1600303", "name": "Macapá", "uf": "AP", "in_arco": false, "pop30": true, "rarity": 55}, {"id": "1600402", "name": "Mazagão", "uf": "AP", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1600501", "name": "Oiapoque", "uf": "AP", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1600535", "name": "Porto Grande", "uf": "AP", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1600550", "name": "Pracuúba", "uf": "AP", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1600600", "name": "Santana", "uf": "AP", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1600709", "name": "Tartarugalzinho", "uf": "AP", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1600808", "name": "Vitória do Jari", "uf": "AP", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1700251", "name": "Abreulândia", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1700301", "name": "Aguiarnópolis", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1700350", "name": "Aliança do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1700400", "name": "Almas", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1700707", "name": "Alvorada", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1701002", "name": "Ananás", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1701051", "name": "Angico", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1701101", "name": "Aparecida do Rio Negro", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1701309", "name": "Aragominas", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1701903", "name": "Araguacema", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1702000", "name": "Araguaçu", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1702109", "name": "Araguaína", "uf": "TO", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1702158", "name": "Araguanã", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1702208", "name": "Araguatins", "uf": "TO", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1702307", "name": "Arapoema", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1702406", "name": "Arraias", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1702554", "name": "Augustinópolis", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1702703", "name": "Aurora do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1702901", "name": "Axixá do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1703008", "name": "Babaçulândia", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1703057", "name": "Bandeirantes do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1703073", "name": "Barra do Ouro", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1703107", "name": "Barrolândia", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1703206", "name": "Bernardo Sayão", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1703305", "name": "Bom Jesus do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1703602", "name": "Brasilândia do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1703701", "name": "Brejinho de Nazaré", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1703800", "name": "Buriti do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1703826", "name": "Cachoeirinha", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1703842", "name": "Campos Lindos", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1703867", "name": "Cariri do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1703883", "name": "Carmolândia", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1703891", "name": "Carrasco Bonito", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1703909", "name": "Caseara", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1704105", "name": "Centenário", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1704600", "name": "Chapada de Areia", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1705102", "name": "Chapada da Natividade", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1705508", "name": "Colinas do Tocantins", "uf": "TO", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1705557", "name": "Combinado", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1705607", "name": "Conceição do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1706001", "name": "Couto Magalhães", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1706100", "name": "Cristalândia", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1706258", "name": "Crixás do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1706506", "name": "Darcinópolis", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1707009", "name": "Dianópolis", "uf": "TO", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1707108", "name": "Divinópolis do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1707207", "name": "Dois Irmãos do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1707306", "name": "Dueré", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1707405", "name": "Esperantina", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1707553", "name": "Fátima", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1707652", "name": "Figueirópolis", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1707702", "name": "Filadélfia", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1708205", "name": "Formoso do Araguaia", "uf": "TO", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1708254", "name": "Tabocão", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1708304", "name": "Goianorte", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1709005", "name": "Goiatins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1709302", "name": "Guaraí", "uf": "TO", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1709500", "name": "Gurupi", "uf": "TO", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1709807", "name": "Ipueiras", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1710508", "name": "Itacajá", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1710706", "name": "Itaguatins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1710904", "name": "Itapiratins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1711100", "name": "Itaporã do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1711506", "name": "Jaú do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1711803", "name": "Juarina", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1711902", "name": "Lagoa da Confusão", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1711951", "name": "Lagoa do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1712009", "name": "Lajeado", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1712157", "name": "Lavandeira", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1712405", "name": "Lizarda", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1712454", "name": "Luzinópolis", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1712504", "name": "Marianópolis do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1712702", "name": "Mateiros", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1712801", "name": "Maurilândia do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1713205", "name": "Miracema do Tocantins", "uf": "TO", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1713304", "name": "Miranorte", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1713601", "name": "Monte do Carmo", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1713700", "name": "Monte Santo do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1713809", "name": "Palmeiras do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1713957", "name": "Muricilândia", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1714203", "name": "Natividade", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1714302", "name": "Nazaré", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1714880", "name": "Nova Olinda", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1715002", "name": "Nova Rosalândia", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1715101", "name": "Novo Acordo", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1715150", "name": "Novo Alegre", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1715259", "name": "Novo Jardim", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1715507", "name": "Oliveira de Fátima", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1715705", "name": "Palmeirante", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1715754", "name": "Palmeirópolis", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1716109", "name": "Paraíso do Tocantins", "uf": "TO", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1716208", "name": "Paranã", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1716307", "name": "Pau D'Arco", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1716505", "name": "Pedro Afonso", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1716604", "name": "Peixe", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1716653", "name": "Pequizeiro", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1716703", "name": "Colméia", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1717008", "name": "Pindorama do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1717206", "name": "Piraquê", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1717503", "name": "Pium", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1717800", "name": "Ponte Alta do Bom Jesus", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1717909", "name": "Ponte Alta do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1718006", "name": "Porto Alegre do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1718204", "name": "Porto Nacional", "uf": "TO", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1718303", "name": "Praia Norte", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1718402", "name": "Presidente Kennedy", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1718451", "name": "Pugmil", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1718501", "name": "Recursolândia", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1718550", "name": "Riachinho", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1718659", "name": "Rio da Conceição", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1718709", "name": "Rio dos Bois", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1718758", "name": "Rio Sono", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1718808", "name": "Sampaio", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1718840", "name": "Sandolândia", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1718865", "name": "Santa Fé do Araguaia", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1718881", "name": "Santa Maria do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1718899", "name": "Santa Rita do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1718907", "name": "Santa Rosa do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1719004", "name": "Santa Tereza do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1720002", "name": "Santa Terezinha do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1720101", "name": "São Bento do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1720150", "name": "São Félix do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1720200", "name": "São Miguel do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1720259", "name": "São Salvador do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1720309", "name": "São Sebastião do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1720499", "name": "São Valério", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1720655", "name": "Silvanópolis", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1720804", "name": "Sítio Novo do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1720853", "name": "Sucupira", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1720903", "name": "Taguatinga", "uf": "TO", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1720937", "name": "Taipas do Tocantins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1720978", "name": "Talismã", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1721000", "name": "Palmas", "uf": "TO", "in_arco": false, "pop30": true, "rarity": 55}, {"id": "1721109", "name": "Tocantínia", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1721208", "name": "Tocantinópolis", "uf": "TO", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "1721257", "name": "Tupirama", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1721307", "name": "Tupiratins", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1722081", "name": "Wanderlândia", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "1722107", "name": "Xambioá", "uf": "TO", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2100055", "name": "Açailândia", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2100105", "name": "Afonso Cunha", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2100154", "name": "Água Doce do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2100204", "name": "Alcântara", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2100303", "name": "Aldeias Altas", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2100402", "name": "Altamira do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2100436", "name": "Alto Alegre do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2100477", "name": "Alto Alegre do Pindaré", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2100501", "name": "Alto Parnaíba", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2100550", "name": "Amapá do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2100600", "name": "Amarante do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2100709", "name": "Anajatuba", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2100808", "name": "Anapurus", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2100832", "name": "Apicum-Açu", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2100873", "name": "Araguanã", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2100907", "name": "Araioses", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2100956", "name": "Arame", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2101004", "name": "Arari", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2101103", "name": "Axixá", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2101202", "name": "Bacabal", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2101251", "name": "Bacabeira", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2101301", "name": "Bacuri", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2101350", "name": "Bacurituba", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2101400", "name": "Balsas", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2101509", "name": "Barão de Grajaú", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2101608", "name": "Barra do Corda", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2101707", "name": "Barreirinhas", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2101731", "name": "Belágua", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2101772", "name": "Bela Vista do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2101806", "name": "Benedito Leite", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2101905", "name": "Bequimão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2101939", "name": "Bernardo do Mearim", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2101970", "name": "Boa Vista do Gurupi", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2102002", "name": "Bom Jardim", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2102036", "name": "Bom Jesus das Selvas", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2102077", "name": "Bom Lugar", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2102101", "name": "Brejo", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2102150", "name": "Brejo de Areia", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2102200", "name": "Buriti", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2102309", "name": "Buriti Bravo", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2102325", "name": "Buriticupu", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2102358", "name": "Buritirana", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2102374", "name": "Cachoeira Grande", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2102408", "name": "Cajapió", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2102507", "name": "Cajari", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2102556", "name": "Campestre do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2102606", "name": "Cândido Mendes", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2102705", "name": "Cantanhede", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2102754", "name": "Capinzal do Norte", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2102804", "name": "Carolina", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2102903", "name": "Carutapera", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2103000", "name": "Caxias", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2103109", "name": "Cedral", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2103125", "name": "Central do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2103158", "name": "Centro do Guilherme", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2103174", "name": "Centro Novo do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2103208", "name": "Chapadinha", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2103257", "name": "Cidelândia", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2103307", "name": "Codó", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2103406", "name": "Coelho Neto", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2103505", "name": "Colinas", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2103554", "name": "Conceição do Lago-Açu", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2103604", "name": "Coroatá", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2103703", "name": "Cururupu", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2103752", "name": "Davinópolis", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2103802", "name": "Dom Pedro", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2103901", "name": "Duque Bacelar", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2104008", "name": "Esperantinópolis", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2104057", "name": "Estreito", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2104073", "name": "Feira Nova do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2104081", "name": "Fernando Falcão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2104099", "name": "Formosa da Serra Negra", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2104107", "name": "Fortaleza dos Nogueiras", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2104206", "name": "Fortuna", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2104305", "name": "Godofredo Viana", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2104404", "name": "Gonçalves Dias", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2104503", "name": "Governador Archer", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2104552", "name": "Governador Edison Lobão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2104602", "name": "Governador Eugênio Barros", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2104628", "name": "Governador Luiz Rocha", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2104651", "name": "Governador Newton Bello", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2104677", "name": "Governador Nunes Freire", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2104701", "name": "Graça Aranha", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2104800", "name": "Grajaú", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2104909", "name": "Guimarães", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2105005", "name": "Humberto de Campos", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2105104", "name": "Icatu", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2105153", "name": "Igarapé do Meio", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2105203", "name": "Igarapé Grande", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2105302", "name": "Imperatriz", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2105351", "name": "Itaipava do Grajaú", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2105401", "name": "Itapecuru Mirim", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2105427", "name": "Itinga do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2105450", "name": "Jatobá", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2105476", "name": "Jenipapo dos Vieiras", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2105500", "name": "João Lisboa", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2105609", "name": "Joselândia", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2105658", "name": "Junco do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2105708", "name": "Lago da Pedra", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2105807", "name": "Lago do Junco", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2105906", "name": "Lago Verde", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2105922", "name": "Lagoa do Mato", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2105948", "name": "Lago dos Rodrigues", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2105963", "name": "Lagoa Grande do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2105989", "name": "Lajeado Novo", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2106003", "name": "Lima Campos", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2106102", "name": "Loreto", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2106201", "name": "Luís Domingues", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2106300", "name": "Magalhães de Almeida", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2106326", "name": "Maracaçumé", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2106359", "name": "Marajá do Sena", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2106375", "name": "Maranhãozinho", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2106409", "name": "Mata Roma", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2106508", "name": "Matinha", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2106607", "name": "Matões", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2106631", "name": "Matões do Norte", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2106672", "name": "Milagres do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2106706", "name": "Mirador", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2106755", "name": "Miranda do Norte", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2106805", "name": "Mirinzal", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2106904", "name": "Monção", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2107001", "name": "Montes Altos", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2107100", "name": "Morros", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2107209", "name": "Nina Rodrigues", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2107258", "name": "Nova Colinas", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2107308", "name": "Nova Iorque", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2107357", "name": "Nova Olinda do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2107407", "name": "Olho d'Água das Cunhãs", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2107456", "name": "Olinda Nova do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2107506", "name": "Paço do Lumiar", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2107605", "name": "Palmeirândia", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2107704", "name": "Paraibano", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2107803", "name": "Parnarama", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2107902", "name": "Passagem Franca", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2108009", "name": "Pastos Bons", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2108058", "name": "Paulino Neves", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2108108", "name": "Paulo Ramos", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2108207", "name": "Pedreiras", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2108256", "name": "Pedro do Rosário", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2108306", "name": "Penalva", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2108405", "name": "Peri Mirim", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2108454", "name": "Peritoró", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2108504", "name": "Pindaré-Mirim", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2108603", "name": "Pinheiro", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2108702", "name": "Pio XII", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2108801", "name": "Pirapemas", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2108900", "name": "Poção de Pedras", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2109007", "name": "Porto Franco", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2109056", "name": "Porto Rico do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2109106", "name": "Presidente Dutra", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2109205", "name": "Presidente Juscelino", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2109239", "name": "Presidente Médici", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2109270", "name": "Presidente Sarney", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2109304", "name": "Presidente Vargas", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2109403", "name": "Primeira Cruz", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2109452", "name": "Raposa", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2109502", "name": "Riachão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2109551", "name": "Ribamar Fiquene", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2109601", "name": "Rosário", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2109700", "name": "Sambaíba", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2109759", "name": "Santa Filomena do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2109809", "name": "Santa Helena", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2109908", "name": "Santa Inês", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2110005", "name": "Santa Luzia", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2110039", "name": "Santa Luzia do Paruá", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2110104", "name": "Santa Quitéria do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2110203", "name": "Santa Rita", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2110237", "name": "Santana do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2110278", "name": "Santo Amaro do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2110302", "name": "Santo Antônio dos Lopes", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2110401", "name": "São Benedito do Rio Preto", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2110500", "name": "São Bento", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2110609", "name": "São Bernardo", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2110658", "name": "São Domingos do Azeitão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2110708", "name": "São Domingos do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2110807", "name": "São Félix de Balsas", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2110856", "name": "São Francisco do Brejão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2110906", "name": "São Francisco do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111003", "name": "São João Batista", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111029", "name": "São João do Carú", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111052", "name": "São João do Paraíso", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111078", "name": "São João do Soter", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111102", "name": "São João dos Patos", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111201", "name": "São José de Ribamar", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2111250", "name": "São José dos Basílios", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111300", "name": "São Luís", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 55}, {"id": "2111409", "name": "São Luís Gonzaga do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111508", "name": "São Mateus do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111532", "name": "São Pedro da Água Branca", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111573", "name": "São Pedro dos Crentes", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111607", "name": "São Raimundo das Mangabeiras", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111631", "name": "São Raimundo do Doca Bezerra", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111672", "name": "São Roberto", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111706", "name": "São Vicente Ferrer", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111722", "name": "Satubinha", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111748", "name": "Senador Alexandre Costa", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111763", "name": "Senador La Rocque", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111789", "name": "Serrano do Maranhão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111805", "name": "Sítio Novo", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111904", "name": "Sucupira do Norte", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2111953", "name": "Sucupira do Riachão", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2112001", "name": "Tasso Fragoso", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2112100", "name": "Timbiras", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2112209", "name": "Timon", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2112233", "name": "Trizidela do Vale", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2112274", "name": "Tufilândia", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2112308", "name": "Tuntum", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2112407", "name": "Turiaçu", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2112456", "name": "Turilândia", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2112506", "name": "Tutóia", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2112605", "name": "Urbano Santos", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2112704", "name": "Vargem Grande", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2112803", "name": "Viana", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "2112852", "name": "Vila Nova dos Martírios", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2112902", "name": "Vitória do Mearim", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2113009", "name": "Vitorino Freire", "uf": "MA", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "2114007", "name": "Zé Doca", "uf": "MA", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5100102", "name": "Acorizal", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5100201", "name": "Água Boa", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5100250", "name": "Alta Floresta", "uf": "MT", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "5100300", "name": "Alto Araguaia", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5100359", "name": "Alto Boa Vista", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5100409", "name": "Alto Garças", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5100508", "name": "Alto Paraguai", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5100607", "name": "Alto Taquari", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5100805", "name": "Apiacás", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5101001", "name": "Araguaiana", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5101209", "name": "Araguainha", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5101258", "name": "Araputanga", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5101308", "name": "Arenápolis", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5101407", "name": "Aripuanã", "uf": "MT", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "5101605", "name": "Barão de Melgaço", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5101704", "name": "Barra do Bugres", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5101803", "name": "Barra do Garças", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5101837", "name": "Boa Esperança do Norte", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5101852", "name": "Bom Jesus do Araguaia", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5101902", "name": "Brasnorte", "uf": "MT", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "5102504", "name": "Cáceres", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5102603", "name": "Campinápolis", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5102637", "name": "Campo Novo do Parecis", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5102678", "name": "Campo Verde", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5102686", "name": "Campos de Júlio", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5102694", "name": "Canabrava do Norte", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5102702", "name": "Canarana", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5102793", "name": "Carlinda", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5102850", "name": "Castanheira", "uf": "MT", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "5103007", "name": "Chapada dos Guimarães", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5103056", "name": "Cláudia", "uf": "MT", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "5103106", "name": "Cocalinho", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5103205", "name": "Colíder", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5103254", "name": "Colniza", "uf": "MT", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "5103304", "name": "Comodoro", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5103353", "name": "Confresa", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5103361", "name": "Conquista D'Oeste", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5103379", "name": "Cotriguaçu", "uf": "MT", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "5103403", "name": "Cuiabá", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 55}, {"id": "5103437", "name": "Curvelândia", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5103452", "name": "Denise", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5103502", "name": "Diamantino", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5103601", "name": "Dom Aquino", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5103700", "name": "Feliz Natal", "uf": "MT", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "5103809", "name": "Figueirópolis D'Oeste", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5103858", "name": "Gaúcha do Norte", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5103908", "name": "General Carneiro", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5103957", "name": "Glória D'Oeste", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5104104", "name": "Guarantã do Norte", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5104203", "name": "Guiratinga", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5104500", "name": "Indiavaí", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5104526", "name": "Ipiranga do Norte", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5104542", "name": "Itanhangá", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5104559", "name": "Itaúba", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5104609", "name": "Itiquira", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5104807", "name": "Jaciara", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5104906", "name": "Jangada", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5105002", "name": "Jauru", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5105101", "name": "Juara", "uf": "MT", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "5105150", "name": "Juína", "uf": "MT", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "5105176", "name": "Juruena", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5105200", "name": "Juscimeira", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5105234", "name": "Lambari D'Oeste", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5105259", "name": "Lucas do Rio Verde", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5105309", "name": "Luciara", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5105507", "name": "Vila Bela da Santíssima Trindade", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5105580", "name": "Marcelândia", "uf": "MT", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "5105606", "name": "Matupá", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5105622", "name": "Mirassol d'Oeste", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5105903", "name": "Nobres", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5106000", "name": "Nortelândia", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5106109", "name": "Nossa Senhora do Livramento", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5106158", "name": "Nova Bandeirantes", "uf": "MT", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "5106174", "name": "Nova Nazaré", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5106182", "name": "Nova Lacerda", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5106190", "name": "Nova Santa Helena", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5106208", "name": "Nova Brasilândia", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5106216", "name": "Nova Canaã do Norte", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5106224", "name": "Nova Mutum", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5106232", "name": "Nova Olímpia", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5106240", "name": "Nova Ubiratã", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5106257", "name": "Nova Xavantina", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5106265", "name": "Novo Mundo", "uf": "MT", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "5106273", "name": "Novo Horizonte do Norte", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5106281", "name": "Novo São Joaquim", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5106299", "name": "Paranaíta", "uf": "MT", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "5106307", "name": "Paranatinga", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5106315", "name": "Novo Santo Antônio", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5106372", "name": "Pedra Preta", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5106422", "name": "Peixoto de Azevedo", "uf": "MT", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "5106455", "name": "Planalto da Serra", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5106505", "name": "Poconé", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5106653", "name": "Pontal do Araguaia", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5106703", "name": "Ponte Branca", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5106752", "name": "Pontes e Lacerda", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5106778", "name": "Porto Alegre do Norte", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5106802", "name": "Porto dos Gaúchos", "uf": "MT", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "5106828", "name": "Porto Esperidião", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5106851", "name": "Porto Estrela", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5107008", "name": "Poxoréu", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5107040", "name": "Primavera do Leste", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5107065", "name": "Querência", "uf": "MT", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "5107107", "name": "São José dos Quatro Marcos", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5107156", "name": "Reserva do Cabaçal", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5107180", "name": "Ribeirão Cascalheira", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5107198", "name": "Ribeirãozinho", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5107206", "name": "Rio Branco", "uf": "MT", "in_arco": true, "pop30": false, "rarity": 55}, {"id": "5107248", "name": "Santa Carmem", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5107263", "name": "Santo Afonso", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5107297", "name": "São José do Povo", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5107305", "name": "São José do Rio Claro", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5107354", "name": "São José do Xingu", "uf": "MT", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "5107404", "name": "São Pedro da Cipa", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5107578", "name": "Rondolândia", "uf": "MT", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "5107602", "name": "Rondonópolis", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5107701", "name": "Rosário Oeste", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5107743", "name": "Santa Cruz do Xingu", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5107750", "name": "Salto do Céu", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5107768", "name": "Santa Rita do Trivelato", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5107776", "name": "Santa Terezinha", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5107792", "name": "Santo Antônio do Leste", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5107800", "name": "Santo Antônio de Leverger", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5107859", "name": "São Félix do Araguaia", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5107875", "name": "Sapezal", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5107883", "name": "Serra Nova Dourada", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5107909", "name": "Sinop", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5107925", "name": "Sorriso", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5107941", "name": "Tabaporã", "uf": "MT", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "5107958", "name": "Tangará da Serra", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5108006", "name": "Tapurah", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5108055", "name": "Terra Nova do Norte", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5108105", "name": "Tesouro", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5108204", "name": "Torixoréu", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5108303", "name": "União do Sul", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5108352", "name": "Vale de São Domingos", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5108402", "name": "Várzea Grande", "uf": "MT", "in_arco": false, "pop30": true, "rarity": 25}, {"id": "5108501", "name": "Vera", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5108600", "name": "Vila Rica", "uf": "MT", "in_arco": true, "pop30": true, "rarity": 25}, {"id": "5108808", "name": "Nova Guarita", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5108857", "name": "Nova Marilândia", "uf": "MT", "in_arco": false, "pop30": false, "rarity": 4}, {"id": "5108907", "name": "Nova Maringá", "uf": "MT", "in_arco": true, "pop30": false, "rarity": 12}, {"id": "5108956", "name": "Nova Monte Verde", "uf": "MT", "in_arco": true, "pop30": false, "rarity": 12}];
const DAILY_GRIDS = [{"id": "grid-01", "title": "Grid Diário #01 — Fronteiras e Dinâmica Florestal", "type": "states", "rows": [{"title": "População > 1 Milhão", "desc": "Habitantes (Censo 2022)", "key": "pop_gt_1m"}, {"title": "População < 1 Milhão", "desc": "Habitantes (Censo 2022)", "key": "pop_lt_1m"}, {"title": "Mais de 1 Bioma", "desc": "Transição Amazônia + Cerrado/Pantanal", "key": "multi_biome"}], "cols": [{"title": "Fronteira Internacional", "desc": "Fronteira com país vizinho", "key": "fronteira_int"}, {"title": "Desmatamento em Queda", "desc": "Queda recente na taxa anual PRODES", "key": "deforest_fall"}, {"title": "Região Norte", "desc": "Estados oficiais da Região Norte", "key": "regiao_norte"}]}, {"id": "grid-02", "title": "Grid Diário #02 — Pecuária e Biomas de Transição", "type": "states", "rows": [{"title": "Território com Cerrado", "desc": "Fração do bioma Cerrado (MA, MT, PA, RO, TO)", "key": "has_cerrado"}, {"title": "100% Bioma Amazônia", "desc": "Sem transição com outros biomas", "key": "pure_amazon"}, {"title": "População > 2 Milhões", "desc": "Contingente populacional (Censo 2022)", "key": "pop_gt_2m"}], "cols": [{"title": "Rebanho Bovino > 4 cab/hab", "desc": "Intensidade pecuária elevada (PPM)", "key": "cattle_high"}, {"title": "Fronteira Internacional", "desc": "Fronteira com outro país", "key": "fronteira_int"}, {"title": "Desmatamento em Queda", "desc": "Redução na taxa recente PRODES", "key": "deforest_fall"}]}, {"id": "grid-03", "title": "Grid Diário #03 — Demografia e Capital Humano", "type": "states", "rows": [{"title": "Região Norte", "desc": "Estados oficiais da Região Norte", "key": "regiao_norte"}, {"title": "Fronteira Internacional", "desc": "Vizinho de outro país sul-americano", "key": "fronteira_int"}, {"title": "Mais de 1 Bioma", "desc": "Transição Amazônia + Cerrado/Pantanal", "key": "multi_biome"}], "cols": [{"title": "População > 2 Milhões", "desc": "Grandes contingentes (Censo 2022)", "key": "pop_gt_2m"}, {"title": "População < 2 Milhões", "desc": "Estados de menor densidade", "key": "pop_lt_2m"}, {"title": "Desmatamento em Queda", "desc": "Redução na taxa recente PRODES", "key": "deforest_fall"}]}, {"id": "grid-04", "title": "Grid Diário #04 — Municípios: Pará vs Fronteira de Pressão", "type": "munics", "rows": [{"title": "Estado do Pará (PA)", "desc": "144 municípios paraenses", "key": "uf_pa"}, {"title": "Estado do AM ou RO", "desc": "Amazonas ou Rondônia", "key": "uf_am_ro"}, {"title": "Estado de MT ou MA", "desc": "Mato Grosso ou Maranhão", "key": "uf_mt_ma"}], "cols": [{"title": "No Arco do Desmatamento", "desc": "Fronteira prioritária MMA", "key": "in_arco"}, {"title": "Fora do Arco de Pressão", "desc": "Fora da lista crítica", "key": "out_arco"}, {"title": "População > 30.000 Hab.", "desc": "Polos urbanos médios/grandes", "key": "pop30"}]}, {"id": "grid-05", "title": "Grid Diário #05 — Municípios: Porte Urbano e Território", "type": "munics", "rows": [{"title": "População > 30.000 Hab.", "desc": "Polos urbanos médios e grandes", "key": "pop30"}, {"title": "Pequeno Porte (< 30k hab)", "desc": "Municípios do interior profundo", "key": "pop_small"}, {"title": "Pertence ao Pará (PA)", "desc": "144 municípios paraenses", "key": "uf_pa"}], "cols": [{"title": "No Arco do Desmatamento", "desc": "Municípios sob vigilância MMA", "key": "in_arco"}, {"title": "Fora do Arco de Pressão", "desc": "Zonas consolidadas ou de proteção", "key": "out_arco"}, {"title": "Nome com Inicial A até M", "desc": "Ordem alfabética (A-M)", "key": "name_a_m"}]}];
const DAILY_VERSUS = [{"id": "v-01", "category": "Desmatamento Anual (PRODES / INPE 2023)", "question": "Qual município registrou MAIOR área desmatada no ano?", "left": {"name": "Altamira", "uf": "PA", "val": "651 km²", "num": 651}, "right": {"name": "Paragominas", "uf": "PA", "val": "34 km²", "num": 34}, "winner": "left", "insight": "Altamira (PA) lidera historicamente as perdas florestais na bacia do Xingu e BR-163. Paragominas, pioneiro do programa Municípios Verdes, reduziu drasticamente sua taxa.", "viz_url": "/pt/viz/ranking-de-campeoes-de-desmatamento"}, {"id": "v-02", "category": "Rebanho Bovino (IBGE / PPM 2023)", "question": "Qual estado possui o MAIOR rebanho de bovinos?", "left": {"name": "Mato Grosso", "uf": "MT", "val": "34,07 milhões de cabeças", "num": 34075004}, "right": {"name": "Amazonas", "uf": "AM", "val": "2,37 milhões de cabeças", "num": 2377089}, "winner": "left", "insight": "Mato Grosso possui o maior rebanho bovino do Brasil (~8,8 cabeças por habitante), enquanto o Amazonas mantém quase todo o seu território coberto por floresta nativa.", "viz_url": "/pt/viz/mapa-do-efetivo-pecuario-dos-municipios"}, {"id": "v-03", "category": "População Indígena (IBGE / Censo 2022)", "question": "Qual estado possui a MAIOR proporção (%) de população autodeclarada indígena?", "left": {"name": "Roraima", "uf": "RR", "val": "15,29% da população (97.320)", "num": 15.29}, "right": {"name": "Acre", "uf": "AC", "val": "3,81% da população (31.644)", "num": 3.81}, "winner": "left", "insight": "Roraima tem o maior percentual de população indígena do Brasil (15,3%), abrigando as Terras Indígenas Yanomami e Raposa Serra do Sol.", "viz_url": "/pt/viz/mapa-de-cobertura-dos-municipios"}, {"id": "v-04", "category": "Produção de Soja (IBGE / PAM 2023)", "question": "Qual município obteve MAIOR valor de produção agrícola de soja?", "left": {"name": "Sorriso", "uf": "MT", "val": "R$ 4,12 bilhões (2,1 Mt)", "num": 4120}, "right": {"name": "Santarém", "uf": "PA", "val": "R$ 380 milhões (195 mil t)", "num": 380}, "winner": "left", "insight": "Sorriso (MT) é o maior produtor individual de soja do planeta, ancorando o eixo da BR-163.", "viz_url": "/pt/viz/mapa-gado-pastagem"}, {"id": "v-05", "category": "Áreas Protegidas (MMA / CNUC)", "question": "Qual estado possui MAIOR porcentagem de seu território sob Unidades de Conservação?", "left": {"name": "Amapá", "uf": "AP", "val": "62,8% do estado protegido", "num": 62.8}, "right": {"name": "Rondônia", "uf": "RO", "val": "28,4% do estado protegido", "num": 28.4}, "winner": "left", "insight": "O Amapá é o estado mais protegido do Brasil, com destaque para o Parque Nacional Montanhas do Tumucumaque e reservas costeiras.", "viz_url": "/pt/viz/mapa-floresta-desmatamento"}, {"id": "v-06", "category": "Exportação Mineral (MDIC / Comex Stat 2023)", "question": "Qual município exportou MAIOR valor em minério de ferro?", "left": {"name": "Parauapebas (Carajás)", "uf": "PA", "val": "US$ 7,85 bilhões", "num": 7850}, "right": {"name": "Porto Velho", "uf": "RO", "val": "US$ 480 milhões", "num": 480}, "winner": "left", "insight": "Parauapebas abriga o complexo minerário de Carajás (Vale), com ferro de alto teor e ferrovia direta até o Porto de Ponta da Madeira (MA).", "viz_url": "/pt/viz/ranking-campeoes-de-exportacao"}, {"id": "v-07", "category": "População Residente (IBGE / Censo 2022)", "question": "Qual capital é MAIS populosa no Censo 2022 oficial?", "left": {"name": "Manaus", "uf": "AM", "val": "2.063.547 habitantes", "num": 2063547}, "right": {"name": "Belém", "uf": "PA", "val": "1.303.389 habitantes", "num": 1303389}, "winner": "left", "insight": "Manaus concentra mais da metade da população de todo o estado do Amazonas e cresceu com a atração industrial e migratória da Zona Franca.", "viz_url": "/pt/viz/desenvolvimento"}, {"id": "v-08", "category": "Geração Solar Fotovoltaica (Aneel 2024)", "question": "Qual estado possui MAIOR potência instalada de geração distribuída solar?", "left": {"name": "Mato Grosso", "uf": "MT", "val": "1.680 MW de potência", "num": 1680}, "right": {"name": "Roraima", "uf": "RR", "val": "88 MW de potência", "num": 88}, "winner": "left", "insight": "Mato Grosso lidera a micro e minigeração solar no Centro-Oeste e Amazônia Legal, impulsionada pelo autoconsumo do agronegócio e armazéns.", "viz_url": "/pt/viz/series-temporais-da-geracao-distribuida"}, {"id": "v-09", "category": "Produção de Açaí (IBGE / PAM 2023)", "question": "Qual estado responde por mais de 90% de todo o açaí produzido no Brasil?", "left": {"name": "Pará", "uf": "PA", "val": "1,51 milhão de toneladas", "num": 1510000}, "right": {"name": "Tocantins", "uf": "TO", "val": "2,4 mil toneladas", "num": 2400}, "winner": "left", "insight": "O Pará é a capital global do açaí, com as maiores colheitas nos municípios do Baixo Tocantins e arquipélago do Marajó (Igarapé-Miri e Abaetetuba).", "viz_url": "/pt/viz/agropecuaria"}, {"id": "v-10", "category": "Emprego Formal na Indústria de Transformação (MTE / Rais)", "question": "Qual cidade concentra MAIOR número de postos de trabalho industriais?", "left": {"name": "Manaus", "uf": "AM", "val": "118.400 empregos fabris", "num": 118400}, "right": {"name": "Cuiabá", "uf": "MT", "val": "29.300 empregos fabris", "num": 29300}, "winner": "left", "insight": "O Polo Industrial de Manaus (PIM) reúne as maiores plantas montadoras de motocicletas e produtos eletrônicos do Brasil.", "viz_url": "/pt/viz/mercado-de-trabalho"}, {"id": "v-11", "category": "Rebanho Bovino Municipal (IBGE / PPM 2023)", "question": "Qual município possui o MAIOR rebanho bovino do Brasil?", "left": {"name": "São Félix do Xingu", "uf": "PA", "val": "2,52 milhões de cabeças", "num": 2520000}, "right": {"name": "Ji-Paraná", "uf": "RO", "val": "485 mil cabeças", "num": 485000}, "winner": "left", "insight": "São Félix do Xingu (PA) mantém sozinho um rebanho superior ao de países inteiros e é um dos pontos focais da pecuária extensiva na Amazônia.", "viz_url": "/pt/viz/mapa-do-efetivo-pecuario-dos-municipios"}, {"id": "v-12", "category": "Produção de Cacau (IBGE / PAM 2023)", "question": "Qual cidade é a líder nacional na colheita e valor do cacau?", "left": {"name": "Medicilândia", "uf": "PA", "val": "58,4 mil toneladas", "num": 58400}, "right": {"name": "Palmas", "uf": "TO", "val": "Sem produção expressiva", "num": 10}, "winner": "left", "insight": "Medicilândia, cortada pela Rodovia Transamazônica (BR-230), ultrapassou o sul da Bahia e tornou-se a capital nacional do cacau.", "viz_url": "/pt/viz/agropecuaria"}, {"id": "v-13", "category": "População Municipal (IBGE / Censo 2022)", "question": "Qual destes municípios possui MENOR população residente?", "left": {"name": "Serra do Navio", "uf": "AP", "val": "4.673 habitantes", "num": 4673}, "right": {"name": "Marabá", "uf": "PA", "val": "266.536 habitantes", "num": 266536}, "winner": "left", "insight": "Serra do Navio (AP) é uma das menores sedes municipais da Amazônia Legal, construída nos anos 1950 durante a exploração de manganês da ICOMI.", "viz_url": "/pt/viz/desenvolvimento"}, {"id": "v-14", "category": "Escoamento pelo Arco Norte (ANTAQ 2023)", "question": "Qual porto hidroviário movimenta MAIOR volume de cargas de grãos?", "left": {"name": "Barcarena (Vila do Conde)", "uf": "PA", "val": "23,4 milhões de toneladas", "num": 23400}, "right": {"name": "Macapá (Porto de Santana)", "uf": "AP", "val": "2,8 milhões de toneladas", "num": 2800}, "winner": "left", "insight": "O complexo de Vila do Conde em Barcarena (PA) consolidou-se como o grande terminal transoceânico do Arco Norte para barcaças do Tapajós e caminhões da BR-163.", "viz_url": "/pt/viz/ranking-campeoes-de-exportacao"}, {"id": "v-15", "category": "Densidade Pecuária (Cabeças de Gado / Habitante 2023)", "question": "Qual estado possui a MAIOR relação de cabeças de gado por habitante?", "left": {"name": "Rondônia", "uf": "RO", "val": "10,4 cabeças/hab (18,1M bovinos)", "num": 10.4}, "right": {"name": "Amapá", "uf": "AP", "val": "0,07 cabeças/hab (54,8 mil bovinos)", "num": 0.07}, "winner": "left", "insight": "Rondônia ostenta uma das maiores densidades pecuárias do planeta (~10 animais por pessoa), livre de febre aftosa sem vacinação.", "viz_url": "/pt/viz/mapa-do-efetivo-pecuario-dos-municipios"}, {"id": "v-16", "category": "Integração Elétrica (ONS / EPE)", "question": "Qual capital brasileira permaneceu isolada da rede básica do Sistema Interligado Nacional (SIN)?", "left": {"name": "Boa Vista", "uf": "RR", "val": "Única capital não conectada ao SIN", "num": 100}, "right": {"name": "Palmas", "uf": "TO", "val": "Conectada desde os anos 1990", "num": 0}, "winner": "left", "insight": "Boa Vista (Roraima) depende de usinas termelétricas a óleo diesel e gás de sistemas isolados enquanto se conclui o Linhão de Tucuruí Manaus-Boa Vista.", "viz_url": "/pt/viz/series-temporais-dos-sistemas-isolados"}, {"id": "v-17", "category": "Formalização do Trabalho (Rais / Caged 2023)", "question": "Qual município possui MAIOR taxa de emprego formal na agroindústria e serviços?", "left": {"name": "Lucas do Rio Verde", "uf": "MT", "val": "61% dos ocupados formais", "num": 61}, "right": {"name": "Anajás", "uf": "PA", "val": "8% dos ocupados formais", "num": 8}, "winner": "left", "insight": "Municípios agrícolas altamente mecanizados no médio-norte de MT possuem forte formalização com carteira assinada, ao passo que cidades ribeirinhas do Marajó dependem da subsistência e informalidade.", "viz_url": "/pt/viz/mercado-de-trabalho"}, {"id": "v-18", "category": "Desmatamento PRODES 2023 (Ranking Estadual)", "question": "Qual estado teve a MAIOR área bruta desmatada na Amazônia Legal em 2023?", "left": {"name": "Pará", "uf": "PA", "val": "3.272 km² desmatados", "num": 3272}, "right": {"name": "Acre", "uf": "AC", "val": "644 km² desmatados", "num": 644}, "winner": "left", "insight": "Historicamente o Pará e o Mato Grosso concentram mais de 60% de toda a área desmatada detectada anualmente pelo sistema PRODES do INPE.", "viz_url": "/pt/viz/ranking-de-campeoes-de-desmatamento"}, {"id": "v-19", "category": "Eficácia de Conservação (Data Zoom / Imazon)", "question": "Onde a taxa de desmatamento ilegal é COMPROVADAMENTE mais baixa?", "left": {"name": "Terras Indígenas homologadas", "uf": "Amazônia Legal", "val": "< 2,5% da perda total", "num": 2.5}, "right": {"name": "Florestas Públicas Não Destinadas", "uf": "Amazônia Legal", "val": "> 38% da perda total", "num": 38}, "winner": "left", "insight": "Microdados do Data Zoom e MapBiomas comprovam que a presença física de povos indígenas e a homologação formal são a melhor barreira contra a grilagem florestal.", "viz_url": "/pt/viz/mapa-floresta-desmatamento"}, {"id": "v-20", "category": "Acesso à Saúde e Tempo de Deslocamento (Data Zoom / DataSUS)", "question": "Onde o tempo médio de deslocamento até um leito de internação hospitalar de média/alta complexidade é MAIOR?", "left": {"name": "Municípios ribeirinhos sem rodovia", "uf": "Calhas Juruá/Purus/Solimões", "val": "Até 24h a 48h de barco", "num": 36}, "right": {"name": "Capitais estaduais", "uf": "Centros Urbanos", "val": "< 1h de ambulância/carro", "num": 1}, "winner": "left", "insight": "A geografia das águas impõe barreiras de saúde severas: transferências dependem de lanchas ambulância (ambulanchas) ou UTI aérea do Samu fluvial.", "viz_url": "/pt/viz/relacao-variaveis-saude"}];


/* =========================================================
   ESTADO E MOTOR DOS 5 GRIDS DIÁRIOS
   ========================================================= */
const STATES_DATA = [
  { id: 'AC', name: 'Acre', uf: 'AC', pop_gt_1m: false, pop_gt_2m: false, pop_gt_3m: false, regiao: 'Norte', multi_biome: false, pure_amazon: true, has_cerrado: false, fronteira_int: true, deforest_fall: true, cattle_high: true, indigenous_high: true, rarity: 14 },
  { id: 'AP', name: 'Amapá', uf: 'AP', pop_gt_1m: false, pop_gt_2m: false, pop_gt_3m: false, regiao: 'Norte', multi_biome: false, pure_amazon: true, has_cerrado: false, fronteira_int: true, deforest_fall: true, cattle_high: false, indigenous_high: false, rarity: 9 },
  { id: 'AM', name: 'Amazonas', uf: 'AM', pop_gt_1m: true, pop_gt_2m: true, pop_gt_3m: true, regiao: 'Norte', multi_biome: false, pure_amazon: true, has_cerrado: false, fronteira_int: true, deforest_fall: true, cattle_high: false, indigenous_high: true, rarity: 42 },
  { id: 'MA', name: 'Maranhão', uf: 'MA', pop_gt_1m: true, pop_gt_2m: true, pop_gt_3m: true, regiao: 'Nordeste', multi_biome: true, pure_amazon: false, has_cerrado: true, fronteira_int: false, deforest_fall: true, cattle_high: false, indigenous_high: false, rarity: 24 },
  { id: 'MT', name: 'Mato Grosso', uf: 'MT', pop_gt_1m: true, pop_gt_2m: true, pop_gt_3m: true, regiao: 'Centro-Oeste', multi_biome: true, pure_amazon: false, has_cerrado: true, fronteira_int: true, deforest_fall: false, cattle_high: true, indigenous_high: false, rarity: 38 },
  { id: 'PA', name: 'Pará', uf: 'PA', pop_gt_1m: true, pop_gt_2m: true, pop_gt_3m: true, regiao: 'Norte', multi_biome: true, pure_amazon: false, has_cerrado: true, fronteira_int: true, deforest_fall: false, cattle_high: false, indigenous_high: false, rarity: 48 },
  { id: 'RO', name: 'Rondônia', uf: 'RO', pop_gt_1m: true, pop_gt_2m: false, pop_gt_3m: false, regiao: 'Norte', multi_biome: true, pure_amazon: false, has_cerrado: true, fronteira_int: true, deforest_fall: false, cattle_high: true, indigenous_high: false, rarity: 28 },
  { id: 'RR', name: 'Roraima', uf: 'RR', pop_gt_1m: false, pop_gt_2m: false, pop_gt_3m: false, regiao: 'Norte', multi_biome: false, pure_amazon: true, has_cerrado: false, fronteira_int: true, deforest_fall: false, cattle_high: false, indigenous_high: true, rarity: 16 },
  { id: 'TO', name: 'Tocantins', uf: 'TO', pop_gt_1m: true, pop_gt_2m: false, pop_gt_3m: false, regiao: 'Norte', multi_biome: true, pure_amazon: false, has_cerrado: true, fronteira_int: false, deforest_fall: true, cattle_high: true, indigenous_high: false, rarity: 20 }
];

// Mapeamento de testes por chave
const RULE_TESTS = {
  'pop_gt_1m': (s) => s.pop_gt_1m === true,
  'pop_lt_1m': (s) => s.pop_gt_1m === false,
  'multi_biome': (s) => s.multi_biome === true,
  'fronteira_int': (s) => s.fronteira_int === true,
  'deforest_fall': (s) => s.deforest_fall === true,
  'regiao_norte': (s) => s.regiao === 'Norte',
  'has_cerrado': (s) => s.has_cerrado === true,
  'pure_amazon': (s) => s.pure_amazon === true,
  'pop_gt_2m': (s) => s.pop_gt_2m === true,
  'pop_lt_2m': (s) => s.pop_gt_2m === false,
  'cattle_high': (s) => s.cattle_high === true,
  'indigenous_high': (s) => s.indigenous_high === true,
  'fora_norte': (s) => s.regiao !== 'Norte',
  'pop_gt_3m': (s) => s.pop_gt_3m === true,
  'pop_lt_3m': (s) => s.pop_gt_3m === false,
  
  // Municípios
  'uf_pa': (m) => m.uf === 'PA',
  'uf_am_ro': (m) => m.uf === 'AM' || m.uf === 'RO',
  'uf_mt_ma': (m) => m.uf === 'MT' || m.uf === 'MA',
  'in_arco': (m) => m.in_arco === true,
  'out_arco': (m) => m.in_arco === false,
  'pop30': (m) => m.pop30 === true,
  'pop_small': (m) => m.pop30 === false,
  'not_pa': (m) => m.uf !== 'PA',
  'name_a_m': (m) => 'ABCDEFGHIJKLM'.includes(m.name[0].toUpperCase())
};

/* =========================================================
   TIMERS DO JOGO
   ========================================================= */
let gridSeconds = 0;
let gridTimerInterval = null;
let gridCompleted = false;

let versusSeconds = 0;
let versusTimerInterval = null;

function formatTime(sec) {
  const m = Math.floor(sec / 60).toString().padStart(2, '0');
  const s = (sec % 60).toString().padStart(2, '0');
  return `${m}:${s}`;
}

function startGridTimer() {
  if (gridTimerInterval) clearInterval(gridTimerInterval);
  gridTimerInterval = setInterval(() => {
    if (!gridCompleted) {
      gridSeconds++;
      const el = document.getElementById('grid-timer');
      if (el) el.innerText = formatTime(gridSeconds);
    }
  }, 1000);
}

function startVersusTimer() {
  if (versusTimerInterval) clearInterval(versusTimerInterval);
  versusTimerInterval = setInterval(() => {
    versusSeconds++;
    const el = document.getElementById('versus-timer');
    if (el) el.innerText = formatTime(versusSeconds);
  }, 1000);
}

let currentGridIdx = 0;
let gridScore = 1000;
let gridPenalties = 0;
let activeGridCell = null;
let gridStates = [
  [null, null, null],
  [null, null, null],
  [null, null, null]
];
let gridUsedIds = new Set();

function selectGridPuzzle(idx) {
  currentGridIdx = idx;
  for (let i = 0; i < 5; i++) {
    const btn = document.getElementById(`grid-btn-${i}`);
    if (btn) btn.classList.toggle('active', i === idx);
  }
  document.getElementById('current-grid-title').innerText = DAILY_GRIDS[idx].title;
  resetCurrentGrid();
}

function resetCurrentGrid() {
  gridScore = 1000;
  gridPenalties = 0;
  activeGridCell = null;
  gridCompleted = false;
  gridSeconds = 0;
  const timerEl = document.getElementById('grid-timer');
  if (timerEl) timerEl.innerText = '00:00';
  startGridTimer();

  gridStates = [
    [null, null, null],
    [null, null, null],
    [null, null, null]
  ];
  gridUsedIds.clear();
  renderGridHeaders();
  renderGridCells();
  updateGridStatus();
}

function renderGridHeaders() {
  const puzzle = DAILY_GRIDS[currentGridIdx];
  puzzle.cols.forEach((col, i) => {
    document.getElementById(`col-${i}`).innerHTML = `
      <span class="header-tag">Coluna ${i+1}</span>
      <div class="header-name">${col.title}</div>
      <div class="header-desc">${col.desc}</div>
    `;
  });
  puzzle.rows.forEach((row, i) => {
    document.getElementById(`row-${i}`).innerHTML = `
      <span class="header-tag">Linha ${i+1}</span>
      <div class="header-name">${row.title}</div>
      <div class="header-desc">${row.desc}</div>
    `;
  });
}

function renderGridCells() {
  for (let r = 0; r < 3; r++) {
    for (let c = 0; c < 3; c++) {
      const el = document.getElementById(`cell-${r}-${c}`);
      const item = gridStates[r][c];
      if (item) {
        el.className = 'grid-cell filled';
        el.innerHTML = `
          <div style="display:flex; justify-content:space-between; align-items:center;">
            <span style="font-size:11px; font-weight:700; color:#2f7d32;">${item.uf || ''}</span>
            <span class="cell-val-badge">${item.rarity}% raridade</span>
          </div>
          <div class="cell-val-title">${item.name}</div>
          <div style="font-size:10px; color:#2f7d32; font-weight:700;">✓ Válido</div>
        `;
      } else {
        el.className = 'grid-cell';
        el.innerHTML = `
          <div class="cell-coord">[${r+1}, ${c+1}]</div>
          <div class="cell-empty-cta">+ Escolher</div>
          <div style="font-size:10px; color:#888; text-align:right;">Disponível</div>
        `;
      }
    }
  }
}

function updateGridStatus() {
  let filled = 0;
  let totalRarity = 0;
  for (let r = 0; r < 3; r++) {
    for (let c = 0; c < 3; c++) {
      if (gridStates[r][c]) {
        filled++;
        totalRarity += gridStates[r][c].rarity;
      }
    }
  }
  document.getElementById('grid-score').innerText = `${gridScore} pts`;
  document.getElementById('grid-progress').innerText = `${filled} / 9`;
  document.getElementById('grid-penalties').innerText = `${gridPenalties} (-${gridPenalties * 50} pts)`;
  document.getElementById('grid-rarity').innerText = filled > 0 ? `${(totalRarity / filled).toFixed(1)}%` : '--';
  document.getElementById('btn-share-grid').disabled = (filled === 0);

  if (filled === 9 && !gridCompleted) {
    gridCompleted = true;
    if (gridTimerInterval) clearInterval(gridTimerInterval);
  }
}

function handleGridCellClick(r, c) {
  if (gridStates[r][c]) return;
  activeGridCell = { row: r, col: c };
  const puzzle = DAILY_GRIDS[currentGridIdx];
  document.getElementById('modal-grid-target').innerText = `CÉLULA [${r+1}, ${c+1}]`;
  document.getElementById('modal-criteria-desc').innerHTML = `
    <strong>Linha:</strong> ${puzzle.rows[r].title} (${puzzle.rows[r].desc})<br>
    <strong>Coluna:</strong> ${puzzle.cols[c].title} (${puzzle.cols[c].desc})
  `;
  const input = document.getElementById('grid-search-input');
  input.value = '';
  document.getElementById('modal-error-alert').style.display = 'none';
  filterGridSuggestions('');
  document.getElementById('search-modal').style.display = 'flex';
  setTimeout(() => input.focus(), 50);
}

function closeGridModal() {
  document.getElementById('search-modal').style.display = 'none';
  activeGridCell = null;
}

/* BUSCA ATIVA: NÃO EXIBE RESPOSTAS OU GABARITO ANTES DO PALPITE DO USUÁRIO */
function filterGridSuggestions(term) {
  const listEl = document.getElementById('modal-suggest-list');
  const puzzle = DAILY_GRIDS[currentGridIdx];
  const dataset = (puzzle.type === 'states') ? STATES_DATA : MUNICS_DATA;
  const q = term.trim().toLowerCase();

  // Estados: mostra lista completa alfabética dos 9 estados para o usuário escolher seu palpite
  if (puzzle.type === 'states') {
    let items = q.length === 0 ? dataset : dataset.filter(e => e.name.toLowerCase().includes(q) || e.uf.toLowerCase().includes(q));
    listEl.innerHTML = items.map(item => {
      const used = gridUsedIds.has(item.id);
      return `
        <div onclick="${used ? '' : `selectGridAnswer('${item.id}')`}" class="suggest-item ${used ? 'used' : ''}">
          <div>
            <strong>${item.name}</strong> <span style="font-size:11px; color:#666;">[${item.uf}]</span>
          </div>
          <div>
            ${used ? '<span style="color:#c53030; font-size:11px;">Já usado</span>' : `<span style="color:#2f7d32; font-weight:700;">Palpitar →</span>`}
          </div>
        </div>
      `;
    }).join('');
    return;
  }

  // Municípios: Exige que o usuário digite pelo menos 2 caracteres para pesquisar (tira gabarito automático)
  if (q.length < 2) {
    listEl.innerHTML = '<div style="padding:20px 14px; text-align:center; color:#666; font-size:12px; line-height:1.5;">🔎 Digite pelo menos <strong>2 letras</strong> do nome do município.<br><span style="color:#888; font-size:11px;">Pesquise entre os 809 municípios da Amazônia Legal.</span></div>';
    return;
  }

  const matches = dataset.filter(e => e.name.toLowerCase().includes(q) || e.uf.toLowerCase().includes(q)).slice(0, 40);

  if (matches.length === 0) {
    listEl.innerHTML = '<div style="padding:16px; text-align:center; color:#888; font-size:12px;">Nenhum município encontrado com este termo.</div>';
    return;
  }

  listEl.innerHTML = matches.map(item => {
    const used = gridUsedIds.has(item.id);
    return `
      <div onclick="${used ? '' : `selectGridAnswer('${item.id}')`}" class="suggest-item ${used ? 'used' : ''}">
        <div>
          <strong>${item.name}</strong> <span style="font-size:11px; color:#666;">[${item.uf}]</span>
        </div>
        <div>
          ${used ? '<span style="color:#c53030; font-size:11px;">Já usado</span>' : `<span style="color:#2f7d32; font-weight:700;">Palpitar →</span>`}
        </div>
      </div>
    `;
  }).join('');
}

function selectGridAnswer(id) {
  if (!activeGridCell) return;
  const { row, col } = activeGridCell;
  const puzzle = DAILY_GRIDS[currentGridIdx];
  const dataset = (puzzle.type === 'states') ? STATES_DATA : MUNICS_DATA;
  const entity = dataset.find(e => e.id === id);
  if (!entity) return;

  const rowRuleKey = puzzle.rows[row].key;
  const colRuleKey = puzzle.cols[col].key;
  const rValid = RULE_TESTS[rowRuleKey](entity);
  const cValid = RULE_TESTS[colRuleKey](entity);

  if (rValid && cValid) {
    gridStates[row][col] = entity;
    gridUsedIds.add(entity.id);
    const bonus = Math.round(100 - entity.rarity);
    gridScore += bonus;
    renderGridCells();
    updateGridStatus();
    closeGridModal();
  } else {
    gridPenalties++;
    gridScore = Math.max(0, gridScore - 50);
    updateGridStatus();
    const alertBox = document.getElementById('modal-error-alert');
    let errs = [];
    if (!rValid) errs.push(`Linha: "${puzzle.rows[row].title}"`);
    if (!cValid) errs.push(`Coluna: "${puzzle.cols[col].title}"`);
    alertBox.innerHTML = `Incorreto! <strong>${entity.name}</strong> não atende: ${errs.join(' e ')}. (-50 pontos)`;
    alertBox.style.display = 'block';
  }
}

function shareGridResult() {
  let matrix = '';
  let filled = 0;
  for (let r = 0; r < 3; r++) {
    let row = '';
    for (let c = 0; c < 3; c++) {
      if (gridStates[r][c]) { row += '🟩 '; filled++; }
      else row += '⬜ ';
    }
    matrix += row.trim() + '\n';
  }
  const puzzle = DAILY_GRIDS[currentGridIdx];
  const timeFormatted = formatTime(gridSeconds);
  const text = `${puzzle.title}\nTempo: ${timeFormatted}\nPontuação: ${gridScore} pts (${filled}/9)\nErros: ${gridPenalties} (-${gridPenalties*50} pts)\n\n${matrix}\nJogue com microdados reais: https://datazoom.com.br/amazonia/pt/viz/jogos`;
  navigator.clipboard.writeText(text).then(() => alert('Resultado copiado com sucesso!'));
}


/* =========================================================
   ESTADO E MOTOR DOS 20 DESAFIOS VERSUS
   ========================================================= */
let currentVersusIdx = 0;
let versusAnswered = false;
let versusUserGuesses = {}; // { 0: 'left', 1: 'right' }
let versusCorrectCount = 0;

function initVersusPills() {
  const container = document.getElementById('versus-pill-buttons');
  container.innerHTML = DAILY_VERSUS.map((v, i) => {
    return `<button id="versus-btn-${i}" onclick="selectVersusChallenge(${i})" class="daily-pill-btn ${i === 0 ? 'active' : ''}">#${i+1}</button>`;
  }).join('');
}

function selectVersusChallenge(idx) {
  currentVersusIdx = idx;
  versusAnswered = !!versusUserGuesses[idx];

  for (let i = 0; i < DAILY_VERSUS.length; i++) {
    const btn = document.getElementById(`versus-btn-${i}`);
    if (btn) btn.classList.toggle('active', i === idx);
  }

  const v = DAILY_VERSUS[idx];
  document.getElementById('versus-category').innerText = v.category;
  document.getElementById('versus-question').innerText = v.question;

  // Lado Esquerdo
  document.getElementById('left-state-badge').innerText = v.left.uf;
  document.getElementById('left-name').innerText = v.left.name;
  document.getElementById('left-val').innerText = v.left.val;

  // Lado Direito
  document.getElementById('right-state-badge').innerText = v.right.uf;
  document.getElementById('right-name').innerText = v.right.name;
  document.getElementById('right-val').innerText = v.right.val;

  const cardL = document.getElementById('versus-card-left');
  const cardR = document.getElementById('versus-card-right');
  const valL = document.getElementById('left-val');
  const valR = document.getElementById('right-val');
  const insightBox = document.getElementById('versus-insight');
  const nextBtn = document.getElementById('versus-next-btn');

  // Limpar estilos anteriores
  cardL.className = 'versus-card';
  cardR.className = 'versus-card';

  if (versusAnswered) {
    valL.style.display = 'block';
    valR.style.display = 'block';
    insightBox.style.display = 'block';
    insightBox.innerHTML = `
      <div><strong>Explicação Econométrica:</strong> ${v.insight}</div>
      <div style="margin-top:6px;"><a href="{{ site.baseurl }}${v.viz_url}" target="_blank" style="color:#2f7d32; font-weight:700; text-decoration:underline;">Explorar Gráfico no Portal Oficial ↗</a></div>
    `;

    const choice = versusUserGuesses[idx];
    if (choice === v.winner) {
      if (v.winner === 'left') cardL.classList.add('correct');
      else cardR.classList.add('correct');
    } else {
      if (choice === 'left') cardL.classList.add('wrong');
      else cardR.classList.add('wrong');
      if (v.winner === 'left') cardL.classList.add('correct');
      else cardR.classList.add('correct');
    }

    if (currentVersusIdx + 1 < DAILY_VERSUS.length) {
      nextBtn.style.display = 'inline-block';
    } else {
      nextBtn.style.display = 'none';
    }
  } else {
    valL.style.display = 'none';
    valR.style.display = 'none';
    insightBox.style.display = 'none';
    nextBtn.style.display = 'none';
  }
}

function makeVersusGuess(choice) {
  if (versusAnswered) return;
  const v = DAILY_VERSUS[currentVersusIdx];
  versusAnswered = true;
  versusUserGuesses[currentVersusIdx] = choice;

  if (choice === v.winner) {
    versusCorrectCount++;
  }
  document.getElementById('versus-score-badge').innerText = `${versusCorrectCount} / 20`;

  selectVersusChallenge(currentVersusIdx);

  // Marcar botão da pill com ícone de acerto/erro
  const btn = document.getElementById(`versus-btn-${currentVersusIdx}`);
  if (btn) {
    if (choice === v.winner) {
      btn.style.borderColor = '#2f7d32';
      btn.innerText = `#${currentVersusIdx+1} ✓`;
    } else {
      btn.style.borderColor = '#c53030';
      btn.innerText = `#${currentVersusIdx+1} ✗`;
    }
  }
}

function nextVersusChallenge() {
  if (currentVersusIdx + 1 < DAILY_VERSUS.length) {
    selectVersusChallenge(currentVersusIdx + 1);
  }
}

function resetVersusGame() {
  versusAnswered = false;
  versusUserGuesses = {};
  versusCorrectCount = 0;
  versusSeconds = 0;
  document.getElementById('versus-score-badge').innerText = '0 / 20';
  const timerEl = document.getElementById('versus-timer');
  if (timerEl) timerEl.innerText = '00:00';
  startVersusTimer();
  initVersusPills();
  selectVersusChallenge(0);
}

/* =========================================================
   ALTERNÂNCIA DE ABAS
   ========================================================= */
function switchGameMode(mode) {
  document.getElementById('tab-btn-grid').classList.toggle('active', mode === 'grid');
  document.getElementById('tab-btn-versus').classList.toggle('active', mode === 'versus');
  document.getElementById('panel-grid').classList.toggle('active', mode === 'grid');
  document.getElementById('panel-versus').classList.toggle('active', mode === 'versus');

  if (mode === 'versus') {
    selectVersusChallenge(currentVersusIdx);
  }
}

window.addEventListener('DOMContentLoaded', () => {
  selectGridPuzzle(0);
  initVersusPills();
  selectVersusChallenge(0);
  startGridTimer();
  startVersusTimer();
});
</script>

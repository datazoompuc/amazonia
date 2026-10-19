---
layout: default
title: Jogos Interativos de Dados
lang: pt
description: "Jogos educativos baseados nos microdados 100% oficiais da Amazônia Legal do Data Zoom (PUC-Rio)"
---

<style>
  :root {
    --green-main: #2f7d32;
    --green-btn: #3f8513;
    --green-hover: #26590b;
    --green-soft: #e8f5e9;
    --border-tech: #d1dfd1;
    --danger-red: #c62828;
    --danger-bg: #ffebee;
    --danger-border: #ef9a9a;
  }

  .jogos-wrapper {
    max-width: 1140px;
    margin: 0 auto;
    padding: 24px 16px 60px 16px;
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
  }

  /* TELA DE BOAS-VINDAS / HOME */
  .hub-welcome {
    background: #ffffff;
    border: 1px solid var(--border-tech);
    border-radius: 6px;
    padding: 36px 24px;
    text-align: center;
    margin: 20px 0 28px 0;
  }
  .hub-title {
    font-size: 26px;
    font-weight: 800;
    color: #1a2e1a;
    margin-bottom: 8px;
  }
  .hub-subtitle {
    font-size: 14px;
    color: #4a5c4a;
    max-width: 640px;
    margin: 0 auto 28px auto;
    line-height: 1.5;
  }
  .mode-cards-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 16px;
    max-width: 860px;
    margin: 0 auto;
  }
  .mode-card {
    background: #fdfefe;
    border: 2px solid #d5e5d5;
    border-radius: 6px;
    padding: 22px 18px;
    text-align: left;
    cursor: pointer;
    transition: all 0.2s ease;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
  }
  .mode-card:hover {
    border-color: var(--green-btn);
    background: #f7faf7;
    transform: translateY(-2px);
    box-shadow: 0 4px 12px rgba(47, 125, 50, 0.08);
  }
  .mode-card-title {
    font-size: 16px;
    font-weight: 800;
    color: #1e3320;
    margin-bottom: 6px;
  }
  .mode-card-desc {
    font-size: 13px;
    color: #556055;
    line-height: 1.4;
    margin-bottom: 14px;
  }
  .mode-card-btn {
    font-size: 12px;
    font-weight: 700;
    color: #ffffff;
    background: var(--green-btn);
    padding: 8px 14px;
    border-radius: 4px;
    text-align: center;
    display: inline-block;
  }

  /* NAVEGAÇÃO DE ABAS SUPERIOR */
  .hub-switcher {
    display: flex;
    justify-content: center;
    gap: 8px;
    margin: 20px 0 24px 0;
  }
  .hub-btn {
    font-family: 'Inter', sans-serif;
    font-size: 13px;
    font-weight: 700;
    padding: 10px 20px;
    background: #ffffff;
    color: var(--green-btn);
    border: 2px solid var(--green-btn);
    border-radius: 4px;
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
    border-radius: 6px;
    padding: 22px;
  }
  .game-panel.active {
    display: block;
  }

  /* SELETORES DIÁRIOS (PÍLULAS) */
  .daily-selector-bar {
    display: flex;
    align-items: center;
    justify-content: center;
    flex-wrap: wrap;
    gap: 6px;
    margin-bottom: 18px;
    background: #f9fbf9;
    border: 1px solid #dbe6db;
    border-radius: 4px;
    padding: 10px 14px;
  }
  .daily-pill-btn {
    font-family: 'JetBrains Mono', monospace;
    font-size: 12px;
    font-weight: 700;
    padding: 6px 12px;
    border: 1px solid #c2d6c2;
    background: #ffffff;
    color: #2b3a42;
    border-radius: 4px;
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

  /* BARRA DE CONTROLE */
  .control-strip {
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 12px;
    background: #f9fbf9;
    border: 1px solid #dbe6db;
    border-radius: 4px;
    padding: 10px 16px;
    margin-bottom: 18px;
  }
  .level-picker {
    display: flex;
    gap: 6px;
    align-items: center;
  }
  .level-label {
    font-size: 12px;
    font-weight: 700;
    color: #555;
    text-transform: uppercase;
    margin-right: 4px;
  }
  .level-btn {
    font-size: 12px;
    font-weight: 700;
    padding: 6px 12px;
    border: 1px solid #c2d6c2;
    background: #ffffff;
    color: #2b3a42;
    border-radius: 4px;
    cursor: pointer;
    transition: all 0.15s ease;
  }
  .level-btn.active {
    background: var(--green-main);
    color: #ffffff;
    border-color: var(--green-main);
  }

  /* STATUS BAR */
  .status-bar-tech {
    background: #f8faf8;
    border: 1px solid #dbe6db;
    border-left: 4px solid var(--green-btn);
    border-radius: 4px;
    padding: 10px 16px;
    margin-bottom: 20px;
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: space-between;
    gap: 12px;
  }
  .status-item {
    font-size: 12px;
    color: #556066;
  }
  .status-val {
    font-family: 'JetBrains Mono', monospace;
    font-weight: 700;
    color: #1e2d24;
  }

  /* TABULEIRO DATAGRID */
  .grid-board {
    display: grid;
    grid-template-columns: 140px repeat(3, 1fr);
    grid-gap: 8px;
    margin-bottom: 22px;
  }
  .grid-header-col {
    background: #eef5ee;
    border: 1px solid #cfdecf;
    border-radius: 4px;
    padding: 12px 10px;
    text-align: center;
    font-weight: 700;
    font-size: 12px;
    color: #2e4d32;
    display: flex;
    flex-direction: column;
    justify-content: center;
    min-height: 48px;
  }
  .grid-header-row {
    background: #eef5ee;
    border: 1px solid #cfdecf;
    border-radius: 4px;
    padding: 12px 10px;
    text-align: center;
    font-weight: 700;
    font-size: 12px;
    color: #2e4d32;
    display: flex;
    flex-direction: column;
    justify-content: center;
  }
  .grid-cell {
    min-height: 96px;
    border: 2px dashed #b8ceb8;
    background: #ffffff;
    border-radius: 4px;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: 10px;
    cursor: pointer;
    transition: all 0.15s ease;
    position: relative;
  }
  .grid-cell:hover {
    border-color: var(--green-btn);
    background: #f7faf7;
  }
  .grid-cell.filled {
    border: 2px solid var(--green-btn);
    background: #f0f7f0;
    cursor: default;
  }
  .grid-cell-city {
    font-size: 13px;
    font-weight: 700;
    color: #1e2d24;
    text-align: center;
  }
  .grid-cell-meta {
    font-size: 11px;
    color: #5d7065;
    margin-top: 4px;
  }

  /* MODAL / PAINEL DE SELEÇÃO DA CÉLULA */
  .cell-select-modal {
    display: none;
    background: #fdfefe;
    border: 2px solid var(--border-tech);
    border-radius: 6px;
    padding: 18px;
    margin-bottom: 22px;
  }
  .search-box-wrap {
    position: relative;
    margin-bottom: 14px;
  }
  .search-input {
    width: 100%;
    box-sizing: border-box;
    padding: 10px 14px;
    font-size: 14px;
    border: 2px solid #b8ceb8;
    border-radius: 4px;
    font-family: inherit;
    outline: none;
  }
  .search-input:focus {
    border-color: var(--green-btn);
  }
  .options-list-scroll {
    max-height: 250px;
    overflow-y: auto;
    border: 1px solid #d5e5d5;
    border-radius: 4px;
    background: #ffffff;
  }
  .option-row {
    padding: 9px 14px;
    cursor: pointer;
    border-bottom: 1px solid #f0f4f0;
    font-size: 13px;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .option-row:hover {
    background: #eef6ee;
  }

  /* VERSUS ARENA (CLIQUE DIRETO NO MAIOR) */
  .versus-container {
    max-width: 860px;
    margin: 0 auto;
    text-align: center;
  }
  .versus-category-tag {
    font-size: 11px;
    font-weight: 800;
    color: var(--green-main);
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
    gap: 16px;
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
    border-radius: 6px;
    padding: 24px 18px;
    cursor: pointer;
    min-height: 170px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    transition: all 0.2s ease;
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
    cursor: default;
  }
  .versus-card.wrong {
    border-color: var(--danger-red) !important;
    background: var(--danger-bg) !important;
    cursor: default;
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
    font-size: 15px;
    font-weight: 700;
    margin-top: 8px;
    display: none;
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
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 0 auto;
  }

  /* FEEDBACK BOX (CORRETO VERDE / INCORRETO VERMELHO) */
  .feedback-box {
    display: none;
    border-radius: 4px;
    padding: 16px;
    margin: 18px 0;
    font-size: 13px;
    line-height: 1.5;
    text-align: left;
  }
  .feedback-box.correct {
    background: #f0f7f0;
    border: 1px solid #c2d6c2;
    border-left: 4px solid var(--green-btn);
    color: #204120;
  }
  .feedback-box.wrong {
    background: var(--danger-bg);
    border: 1px solid var(--danger-border);
    border-left: 4px solid var(--danger-red);
    color: #721c24;
  }

  /* PLACAR */
  .leaderboard-table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 14px;
    font-size: 13px;
  }
  .leaderboard-table th {
    text-align: left;
    padding: 8px 12px;
    background: #eef5ee;
    border-bottom: 2px solid #cfdecf;
    color: #2e4d32;
    font-weight: 700;
  }
  .leaderboard-table td {
    padding: 8px 12px;
    border-bottom: 1px solid #e5ece5;
    color: #333;
  }

  /* MODAIS */
  .modal-overlay {
    display: none;
    position: fixed;
    top: 0; left: 0; right: 0; bottom: 0;
    background: rgba(0, 0, 0, 0.55);
    z-index: 1000;
    align-items: center;
    justify-content: center;
  }
  .modal-content {
    background: #ffffff;
    max-width: 480px;
    width: 90%;
    border-radius: 6px;
    padding: 24px;
    border: 2px solid #b8ceb8;
    text-align: center;
    box-shadow: 0 10px 30px rgba(0,0,0,0.2);
  }
  .modal-title {
    font-size: 20px;
    font-weight: 800;
    margin-bottom: 10px;
  }
  .modal-title.defeat {
    color: var(--danger-red);
  }
  .modal-title.victory {
    color: var(--green-btn);
  }
  .modal-body {
    font-size: 14px;
    color: #4a5c4a;
    line-height: 1.5;
    margin-bottom: 20px;
  }
  .modal-btn {
    padding: 10px 20px;
    font-size: 13px;
    font-weight: 700;
    border-radius: 4px;
    border: none;
    cursor: pointer;
    background: var(--green-btn);
    color: #fff;
  }

  .hint-container {
    display: flex;
    gap: 8px;
    margin-top: 10px;
  }
  .hint-btn {
    font-size: 11px;
    font-weight: 600;
    padding: 5px 11px;
    background: #ffffff;
    border: 1px solid #c2d6c2;
    color: #2b3a42;
    border-radius: 3px;
    cursor: pointer;
  }
  .hint-btn:hover {
    background: #f0f7f0;
  }
</style>

<div class="jogos-wrapper">

  <!-- TELA INICIAL (DEFAULT): ESCOLHA DE MODO -->
  <div class="hub-welcome" id="panel-home">
    <div class="hub-title">Data Zoom Jogos da Amazônia</div>
    <div class="hub-subtitle">
      Explore os microdados oficiais da Amazônia Legal (PUC-Rio / IBGE) através de desafios de lógica e intuição estatística. Escolha um dos modos abaixo para iniciar.
    </div>
    
    <div class="mode-cards-grid">
      <div class="mode-card" onclick="openGameMode('grid')">
        <div>
          <div class="mode-card-title">1. Modo Grid (5 Desafios Diários)</div>
          <div class="mode-card-desc">
            Complete o tabuleiro 3x3 combinando critérios estatísticos de população, pecuária, agricultura e arco do desmatamento. Escolha entre Estados, Cidades Grandes ou Todos os Municípios.
          </div>
        </div>
        <div class="mode-card-btn">Jogar Modo Grid →</div>
      </div>

      <div class="mode-card" onclick="openGameMode('versus')">
        <div>
          <div class="mode-card-title">2. Modo Versus (20 Desafios Diários)</div>
          <div class="mode-card-desc">
            Compare duas localidades e selecione diretamente qual delas possui a maior métrica oficial em 20 rodadas diárias com explicações detalhadas das fontes.
          </div>
        </div>
        <div class="mode-card-btn">Jogar Modo Versus →</div>
      </div>
    </div>
  </div>

  <!-- NAVEGAÇÃO SUPERIOR FIXA (QUANDO EM JOGO) -->
  <div class="hub-switcher" id="top-nav-switcher" style="display: none;">
    <button class="hub-btn" id="btn-tab-home" onclick="openGameMode('home')">← Início / Modos</button>
    <button class="hub-btn" id="btn-tab-grid" onclick="openGameMode('grid')">Modo Grid</button>
    <button class="hub-btn" id="btn-tab-versus" onclick="openGameMode('versus')">Modo Versus (20)</button>
    <button class="hub-btn" id="btn-tab-scores" onclick="openGameMode('scores')">Placar & Recordes</button>
  </div>

  <!-- =========================================================
       PAINEL 1: MODO GRID
       ========================================================= -->
  <div class="game-panel" id="panel-grid">
    <!-- Seletor dos 5 Grids Diários -->
    <div class="daily-selector-bar">
      <span style="font-size: 12px; font-weight: 700; color: #2f7d32; width: 100%; text-align: center; margin-bottom: 4px;">
        5 DESAFIOS DIÁRIOS DISPONÍVEIS:
      </span>
      <button class="daily-pill-btn active" id="pill-grid-1" onclick="selectDailyGrid(1)">Grid #1</button>
      <button class="daily-pill-btn" id="pill-grid-2" onclick="selectDailyGrid(2)">Grid #2</button>
      <button class="daily-pill-btn" id="pill-grid-3" onclick="selectDailyGrid(3)">Grid #3</button>
      <button class="daily-pill-btn" id="pill-grid-4" onclick="selectDailyGrid(4)">Grid #4</button>
      <button class="daily-pill-btn" id="pill-grid-5" onclick="selectDailyGrid(5)">Grid #5</button>
    </div>

    <!-- Barra de Dificuldade -->
    <div class="control-strip">
      <div class="level-picker">
        <span class="level-label">Dificuldade:</span>
        <button class="level-btn active" id="lvl-easy" onclick="setGridDifficulty('easy')">Fácil (Estados)</button>
        <button class="level-btn" id="lvl-medium" onclick="setGridDifficulty('medium')">Médio (Cidades Grandes)</button>
        <button class="level-btn" id="lvl-hard" onclick="setGridDifficulty('hard')">Difícil (Municípios)</button>
      </div>
      <div>
        <button onclick="resetCurrentGrid()" class="level-btn" style="color: #666;">Reiniciar Tabuleiro</button>
      </div>
    </div>

    <!-- Barra de Status com Timer -->
    <div class="status-bar-tech">
      <div class="status-item">PONTUAÇÃO: <span class="status-val" id="grid-score">1000</span> pts</div>
      <div class="status-item">ACERTOS: <span class="status-val" id="grid-hits">0</span> / 9</div>
      <div class="status-item">TENTATIVAS: <span class="status-val" id="grid-tries">9</span></div>
      <div class="status-item">TEMPO: <span class="status-val" id="grid-timer">00:00</span></div>
    </div>

    <!-- Tabuleiro 3x3 -->
    <div class="grid-board">
      <div style="background: transparent;"></div>
      <div class="grid-header-col" id="col-header-0">COLUNA 1</div>
      <div class="grid-header-col" id="col-header-1">COLUNA 2</div>
      <div class="grid-header-col" id="col-header-2">COLUNA 3</div>

      <div class="grid-header-row" id="row-header-0">LINHA 1</div>
      <div class="grid-cell" id="cell-0-0" onclick="openCellInput(0, 0)"><span>Selecionar</span></div>
      <div class="grid-cell" id="cell-0-1" onclick="openCellInput(0, 1)"><span>Selecionar</span></div>
      <div class="grid-cell" id="cell-0-2" onclick="openCellInput(0, 2)"><span>Selecionar</span></div>

      <div class="grid-header-row" id="row-header-1">LINHA 2</div>
      <div class="grid-cell" id="cell-1-0" onclick="openCellInput(1, 0)"><span>Selecionar</span></div>
      <div class="grid-cell" id="cell-1-1" onclick="openCellInput(1, 1)"><span>Selecionar</span></div>
      <div class="grid-cell" id="cell-1-2" onclick="openCellInput(1, 2)"><span>Selecionar</span></div>

      <div class="grid-header-row" id="row-header-2">LINHA 3</div>
      <div class="grid-cell" id="cell-2-0" onclick="openCellInput(2, 0)"><span>Selecionar</span></div>
      <div class="grid-cell" id="cell-2-1" onclick="openCellInput(2, 1)"><span>Selecionar</span></div>
      <div class="grid-cell" id="cell-2-2" onclick="openCellInput(2, 2)"><span>Selecionar</span></div>
    </div>

    <!-- Seletor de Célula com Lista Completa e Busca por qualquer caractere -->
    <div class="cell-select-modal" id="cell-input-panel">
      <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 12px;">
        <span style="font-weight: 700; font-size: 13px; color: #223824;" id="input-target-title">Preenchendo Célula</span>
        <button onclick="closeCellInput()" style="background: none; border: none; font-size: 16px; cursor: pointer; color: #888;">✕ Fechar</button>
      </div>

      <div class="search-box-wrap">
        <input type="text" id="grid-search-field" class="search-input" placeholder="Digite para filtrar (ex: 'A', 'Sinop', 'Pará')..." oninput="renderOptionsList(this.value)" autocomplete="off">
      </div>

      <!-- Lista completa scrollável de opções (Sem entregar respostas de métricas) -->
      <div class="options-list-scroll" id="grid-options-container">
        <!-- Renderizado dinamicamente -->
      </div>

      <!-- Dicas APENAS no Modo Difícil -->
      <div id="hints-panel" style="display: none; margin-top: 12px;">
        <div class="hint-container">
          <button class="hint-btn" onclick="requestHint(1)">Dica 1: Revelar UF (-100 pts)</button>
          <button class="hint-btn" onclick="requestHint(2)">Dica 2: Revelar Primeira Letra (-200 pts)</button>
        </div>
        <div id="hint-display" style="font-size: 11px; color: #3b5240; font-style: italic; margin-top: 6px;"></div>
      </div>
    </div>
  </div>

  <!-- =========================================================
       PAINEL 2: MODO VERSUS (20 DESAFIOS DIÁRIOS)
       ========================================================= -->
  <div class="game-panel" id="panel-versus">
    <!-- Seletor dos 20 Desafios Diários -->
    <div class="daily-selector-bar">
      <span style="font-size: 12px; font-weight: 700; color: #2f7d32; width: 100%; text-align: center; margin-bottom: 4px;">
        20 DESAFIOS DIÁRIOS DO MODO VERSUS:
      </span>
      <div id="versus-pill-buttons" style="display: flex; flex-wrap: wrap; gap: 4px; justify-content: center;">
        <!-- Renderizado dinamicamente de 1 a 20 -->
      </div>
    </div>

    <!-- Status Bar Técnica Versus com Timer -->
    <div class="status-bar-tech">
      <div class="status-item">ACERTOS: <span class="status-val" id="versus-score-badge">0 / 20</span></div>
      <div class="status-item">STREAK: <span class="status-val" id="versus-streak-badge">0</span></div>
      <div class="status-item">TEMPO: <span class="status-val" id="versus-timer">00:00</span></div>
      <div>
        <button onclick="resetVersusGame()" class="level-btn" style="color: #666;">Reiniciar Todos</button>
      </div>
    </div>

    <div class="versus-container">
      <span id="versus-category" class="versus-category-tag">CATEGORIA</span>
      <h3 id="versus-question" class="versus-question-title">Carregando pergunta...</h3>

      <!-- Arena dos dois cards: Usuário clica no que considera MAIOR -->
      <div class="versus-arena">
        <div class="versus-card" id="vcard-left" onclick="handleVersusSelection('left')">
          <span class="versus-state-badge" id="vcard-left-uf">UF</span>
          <div class="versus-name" id="vcard-left-name">Cidade A</div>
          <div class="versus-value-reveal" id="vcard-left-val">--</div>
        </div>

        <div class="versus-divider">VS</div>

        <div class="versus-card" id="vcard-right" onclick="handleVersusSelection('right')">
          <span class="versus-state-badge" id="vcard-right-uf">UF</span>
          <div class="versus-name" id="vcard-right-name">Cidade B</div>
          <div class="versus-value-reveal" id="vcard-right-val">--</div>
        </div>
      </div>

      <!-- Explicação dos Dados (Verde no Acerto, Vermelho no Erro) -->
      <div class="feedback-box" id="versus-feedback-box">
        <div style="font-weight: 700; margin-bottom: 4px;" id="versus-feedback-status">Resultado</div>
        <div id="versus-feedback-text"></div>
        <div style="margin-top: 12px; text-align: right;">
          <button class="modal-btn" id="versus-btn-next" onclick="goToNextVersus()">Próximo Desafio →</button>
        </div>
      </div>
    </div>
  </div>

  <!-- =========================================================
       PAINEL 3: RECORDES E PLACAR
       ========================================================= -->
  <div class="game-panel" id="panel-scores">
    <h3 style="font-size: 16px; font-weight: 700; color: #1e3320; margin-bottom: 12px;">Seus Recordes Pessoais</h3>
    <table class="leaderboard-table">
      <thead>
        <tr>
          <th>Modo</th>
          <th>Melhor Streak / Pontuação</th>
          <th>Tempo</th>
          <th>Data</th>
        </tr>
      </thead>
      <tbody id="leaderboard-body">
        <tr><td colspan="4" style="text-align: center; color: #888;">Nenhuma partida concluída ainda.</td></tr>
      </tbody>
    </table>
  </div>
</div>

<!-- MODAL DE VITÓRIA / DERROTA -->
<div class="modal-overlay" id="game-modal">
  <div class="modal-content">
    <div class="modal-title" id="modal-title">Fim de Jogo</div>
    <div class="modal-body" id="modal-body">Mensagem</div>
    <button class="modal-btn" onclick="closeGameModal()">Jogar Novamente</button>
  </div>
</div>

<script>
// BASES DE DADOS OFICIAIS (100% REAIS VIA DATAZOOM.AMAZONIA)
const DATA_STATES = [{"id": "AC", "name": "Acre", "uf": "AC", "pop": 830018, "cattle": 4908956, "soy": 45732, "in_arco": true, "is_uf": true}, {"id": "AP", "name": "Amapá", "uf": "AP", "pop": 733759, "cattle": 54842, "soy": 19536, "in_arco": false, "is_uf": true}, {"id": "AM", "name": "Amazonas", "uf": "AM", "pop": 3941613, "cattle": 2377089, "soy": 23455, "in_arco": true, "is_uf": true}, {"id": "MA", "name": "Maranhão", "uf": "MA", "pop": 6776699, "cattle": 10128610, "soy": 3821792, "in_arco": false, "is_uf": true}, {"id": "MT", "name": "Mato Grosso", "uf": "MT", "pop": 3682293, "cattle": 34103504, "soy": 44443783, "in_arco": true, "is_uf": true}, {"id": "PA", "name": "Pará", "uf": "PA", "pop": 8120131, "cattle": 25040621, "soy": 3156487, "in_arco": true, "is_uf": true}, {"id": "RO", "name": "Rondônia", "uf": "RO", "pop": 1581196, "cattle": 18162632, "soy": 2131535, "in_arco": true, "is_uf": true}, {"id": "RR", "name": "Roraima", "uf": "RR", "pop": 636707, "cattle": 1181553, "soy": 445076, "in_arco": false, "is_uf": true}, {"id": "TO", "name": "Tocantins", "uf": "TO", "pop": 1511460, "cattle": 11313309, "soy": 4340578, "in_arco": false, "is_uf": true}];
const DATA_MEDIUM = [{"id": "1500107", "name": "Abaetetuba", "uf": "PA", "pop": 158188, "cattle": 4500, "soy": 0, "in_arco": false}, {"id": "1500206", "name": "Acará", "uf": "PA", "pop": 59023, "cattle": 18099, "soy": 0, "in_arco": false}, {"id": "1500305", "name": "Afuá", "uf": "PA", "pop": 37765, "cattle": 1482, "soy": 0, "in_arco": false}, {"id": "1500404", "name": "Alenquer", "uf": "PA", "pop": 69377, "cattle": 263592, "soy": 0, "in_arco": false}, {"id": "1500503", "name": "Almeirim", "uf": "PA", "pop": 34280, "cattle": 26966, "soy": 0, "in_arco": false}, {"id": "5100250", "name": "Alta Floresta", "uf": "MT", "pop": 58613, "cattle": 753449, "soy": 285223, "in_arco": true}, {"id": "1500602", "name": "Altamira", "uf": "PA", "pop": 126279, "cattle": 1079168, "soy": 49462, "in_arco": true}, {"id": "2100600", "name": "Amarante do Maranhão", "uf": "MA", "pop": 37085, "cattle": 364086, "soy": 2250, "in_arco": false}, {"id": "1500800", "name": "Ananindeua", "uf": "PA", "pop": 478778, "cattle": 20, "soy": 0, "in_arco": false}, {"id": "1500859", "name": "Anapu", "uf": "PA", "pop": 31850, "cattle": 375625, "soy": 0, "in_arco": true}, {"id": "1702208", "name": "Araguatins", "uf": "TO", "pop": 31918, "cattle": 205842, "soy": 0, "in_arco": false}, {"id": "1702109", "name": "Araguaína", "uf": "TO", "pop": 171301, "cattle": 290942, "soy": 15979, "in_arco": false}, {"id": "2100907", "name": "Araioses", "uf": "MA", "pop": 39052, "cattle": 11052, "soy": 0, "in_arco": false}, {"id": "1100023", "name": "Ariquemes", "uf": "RO", "pop": 96833, "cattle": 615978, "soy": 46230, "in_arco": true}, {"id": "1500909", "name": "Augusto Corrêa", "uf": "PA", "pop": 44573, "cattle": 4226, "soy": 0, "in_arco": false}, {"id": "1300300", "name": "Autazes", "uf": "AM", "pop": 41564, "cattle": 48231, "soy": 0, "in_arco": false}, {"id": "2100055", "name": "Açailândia", "uf": "MA", "pop": 106550, "cattle": 434734, "soy": 255969, "in_arco": false}, {"id": "2101202", "name": "Bacabal", "uf": "MA", "pop": 103711, "cattle": 135300, "soy": 0, "in_arco": false}, {"id": "1501105", "name": "Bagre", "uf": "PA", "pop": 31892, "cattle": 714, "soy": 0, "in_arco": false}, {"id": "1501204", "name": "Baião", "uf": "PA", "pop": 51641, "cattle": 82078, "soy": 0, "in_arco": false}, {"id": "2101400", "name": "Balsas", "uf": "MA", "pop": 101767, "cattle": 118540, "soy": 602055, "in_arco": false}, {"id": "1501303", "name": "Barcarena", "uf": "PA", "pop": 126650, "cattle": 700, "soy": 0, "in_arco": false}, {"id": "2101608", "name": "Barra do Corda", "uf": "MA", "pop": 84532, "cattle": 178901, "soy": 25452, "in_arco": false}, {"id": "5101803", "name": "Barra do Garças", "uf": "MT", "pop": 69210, "cattle": 410058, "soy": 182777, "in_arco": false}, {"id": "1300508", "name": "Barreirinha", "uf": "AM", "pop": 31051, "cattle": 22034, "soy": 0, "in_arco": false}, {"id": "2101707", "name": "Barreirinhas", "uf": "MA", "pop": 65589, "cattle": 9970, "soy": 0, "in_arco": false}, {"id": "1501402", "name": "Belém", "uf": "PA", "pop": 1303403, "cattle": 87, "soy": 0, "in_arco": false}, {"id": "1501501", "name": "Benevides", "uf": "PA", "pop": 63567, "cattle": 2087, "soy": 0, "in_arco": false}, {"id": "1300607", "name": "Benjamin Constant", "uf": "AM", "pop": 37648, "cattle": 512, "soy": 0, "in_arco": false}, {"id": "1400100", "name": "Boa Vista", "uf": "RR", "pop": 413486, "cattle": 25140, "soy": 140636, "in_arco": false}, {"id": "1300706", "name": "Boca do Acre", "uf": "AM", "pop": 35447, "cattle": 475000, "soy": 4080, "in_arco": true}, {"id": "2102002", "name": "Bom Jardim", "uf": "MA", "pop": 33100, "cattle": 210934, "soy": 54360, "in_arco": false}, {"id": "1300805", "name": "Borba", "uf": "AM", "pop": 33080, "cattle": 4074, "soy": 0, "in_arco": false}, {"id": "1501709", "name": "Bragança", "uf": "PA", "pop": 123082, "cattle": 45630, "soy": 0, "in_arco": false}, {"id": "2102101", "name": "Brejo", "uf": "MA", "pop": 34120, "cattle": 9850, "soy": 47600, "in_arco": false}, {"id": "1501782", "name": "Breu Branco", "uf": "PA", "pop": 45712, "cattle": 200577, "soy": 13200, "in_arco": false}, {"id": "1501808", "name": "Breves", "uf": "PA", "pop": 106968, "cattle": 920, "soy": 0, "in_arco": false}, {"id": "2102325", "name": "Buriticupu", "uf": "MA", "pop": 55499, "cattle": 180182, "soy": 133500, "in_arco": false}, {"id": "1100049", "name": "Cacoal", "uf": "RO", "pop": 86887, "cattle": 502394, "soy": 16420, "in_arco": true}, {"id": "1502103", "name": "Cametá", "uf": "PA", "pop": 134184, "cattle": 2830, "soy": 0, "in_arco": false}, {"id": "5102637", "name": "Campo Novo do Parecis", "uf": "MT", "pop": 45899, "cattle": 164349, "soy": 1571355, "in_arco": false}, {"id": "5102678", "name": "Campo Verde", "uf": "MT", "pop": 44585, "cattle": 137084, "soy": 960000, "in_arco": false}, {"id": "1502152", "name": "Canaã dos Carajás", "uf": "PA", "pop": 77079, "cattle": 228000, "soy": 0, "in_arco": false}, {"id": "1502202", "name": "Capanema", "uf": "PA", "pop": 70394, "cattle": 28231, "soy": 0, "in_arco": false}, {"id": "1502301", "name": "Capitão Poço", "uf": "PA", "pop": 56506, "cattle": 116727, "soy": 0, "in_arco": false}, {"id": "1301100", "name": "Careiro", "uf": "AM", "pop": 30792, "cattle": 14000, "soy": 0, "in_arco": false}, {"id": "1502400", "name": "Castanhal", "uf": "PA", "pop": 192256, "cattle": 42960, "soy": 0, "in_arco": false}, {"id": "2103000", "name": "Caxias", "uf": "MA", "pop": 156973, "cattle": 49290, "soy": 42616, "in_arco": false}, {"id": "2103208", "name": "Chapadinha", "uf": "MA", "pop": 81386, "cattle": 16300, "soy": 13900, "in_arco": false}, {"id": "1301209", "name": "Coari", "uf": "AM", "pop": 70616, "cattle": 1970, "soy": 0, "in_arco": false}, {"id": "2103307", "name": "Codó", "uf": "MA", "pop": 114275, "cattle": 162120, "soy": 5190, "in_arco": false}, {"id": "2103406", "name": "Coelho Neto", "uf": "MA", "pop": 41658, "cattle": 6620, "soy": 0, "in_arco": false}, {"id": "2103505", "name": "Colinas", "uf": "MA", "pop": 40316, "cattle": 69635, "soy": 28672, "in_arco": false}, {"id": "1705508", "name": "Colinas do Tocantins", "uf": "TO", "pop": 34233, "cattle": 145283, "soy": 0, "in_arco": false}, {"id": "5103205", "name": "Colíder", "uf": "MT", "pop": 31370, "cattle": 401742, "soy": 132165, "in_arco": false}, {"id": "1502707", "name": "Conceição do Araguaia", "uf": "PA", "pop": 44617, "cattle": 330962, "soy": 17582, "in_arco": false}, {"id": "5103353", "name": "Confresa", "uf": "MT", "pop": 35075, "cattle": 399624, "soy": 200912, "in_arco": false}, {"id": "2103604", "name": "Coroatá", "uf": "MA", "pop": 59566, "cattle": 59590, "soy": 0, "in_arco": false}, {"id": "1200203", "name": "Cruzeiro do Sul", "uf": "AC", "pop": 91888, "cattle": 50860, "soy": 0, "in_arco": false}, {"id": "5103403", "name": "Cuiabá", "uf": "MT", "pop": 650877, "cattle": 128181, "soy": 2686, "in_arco": false}, {"id": "1502806", "name": "Curralinho", "uf": "PA", "pop": 33903, "cattle": 45, "soy": 0, "in_arco": false}, {"id": "2103703", "name": "Cururupu", "uf": "MA", "pop": 31558, "cattle": 1777, "soy": 0, "in_arco": false}, {"id": "1502905", "name": "Curuçá", "uf": "PA", "pop": 41262, "cattle": 2980, "soy": 0, "in_arco": false}, {"id": "5102504", "name": "Cáceres", "uf": "MT", "pop": 89681, "cattle": 1399931, "soy": 50544, "in_arco": false}, {"id": "1502939", "name": "Dom Eliseu", "uf": "PA", "pop": 58484, "cattle": 88704, "soy": 527000, "in_arco": false}, {"id": "1301407", "name": "Eirunepé", "uf": "AM", "pop": 33170, "cattle": 13606, "soy": 0, "in_arco": false}, {"id": "2104057", "name": "Estreito", "uf": "MA", "pop": 33294, "cattle": 189558, "soy": 18444, "in_arco": false}, {"id": "1200302", "name": "Feijó", "uf": "AC", "pop": 35426, "cattle": 247854, "soy": 0, "in_arco": true}, {"id": "2104800", "name": "Grajaú", "uf": "MA", "pop": 73872, "cattle": 227831, "soy": 123702, "in_arco": false}, {"id": "1100106", "name": "Guajará-Mirim", "uf": "RO", "pop": 39387, "cattle": 172219, "soy": 15841, "in_arco": false}, {"id": "5104104", "name": "Guarantã do Norte", "uf": "MT", "pop": 31024, "cattle": 347789, "soy": 87582, "in_arco": false}, {"id": "1709500", "name": "Gurupi", "uf": "TO", "pop": 85125, "cattle": 128949, "soy": 76655, "in_arco": false}, {"id": "1503101", "name": "Gurupá", "uf": "PA", "pop": 31786, "cattle": 1200, "soy": 0, "in_arco": false}, {"id": "1301704", "name": "Humaitá", "uf": "AM", "pop": 57473, "cattle": 42317, "soy": 18000, "in_arco": true}, {"id": "1503200", "name": "Igarapé-Açu", "uf": "PA", "pop": 35797, "cattle": 23274, "soy": 0, "in_arco": false}, {"id": "1503309", "name": "Igarapé-Miri", "uf": "PA", "pop": 64831, "cattle": 2500, "soy": 0, "in_arco": false}, {"id": "2105302", "name": "Imperatriz", "uf": "MA", "pop": 273110, "cattle": 101055, "soy": 0, "in_arco": false}, {"id": "1503457", "name": "Ipixuna do Pará", "uf": "PA", "pop": 30329, "cattle": 130492, "soy": 24800, "in_arco": false}, {"id": "1301852", "name": "Iranduba", "uf": "AM", "pop": 61163, "cattle": 6215, "soy": 0, "in_arco": false}, {"id": "1503507", "name": "Irituia", "uf": "PA", "pop": 30955, "cattle": 78311, "soy": 0, "in_arco": false}, {"id": "1301902", "name": "Itacoatiara", "uf": "AM", "pop": 103598, "cattle": 48222, "soy": 0, "in_arco": false}, {"id": "1503606", "name": "Itaituba", "uf": "PA", "pop": 123314, "cattle": 402848, "soy": 0, "in_arco": true}, {"id": "2105401", "name": "Itapecuru Mirim", "uf": "MA", "pop": 60440, "cattle": 17282, "soy": 0, "in_arco": false}, {"id": "1503705", "name": "Itupiranga", "uf": "PA", "pop": 49754, "cattle": 728600, "soy": 0, "in_arco": false}, {"id": "1503804", "name": "Jacundá", "uf": "PA", "pop": 37707, "cattle": 182800, "soy": 0, "in_arco": false}, {"id": "1100114", "name": "Jaru", "uf": "RO", "pop": 50591, "cattle": 627467, "soy": 1045, "in_arco": true}, {"id": "1100122", "name": "Ji-Paraná", "uf": "RO", "pop": 124333, "cattle": 471299, "soy": 1741, "in_arco": true}, {"id": "5105101", "name": "Juara", "uf": "MT", "pop": 34906, "cattle": 963851, "soy": 392777, "in_arco": true}, {"id": "1503903", "name": "Juruti", "uf": "PA", "pop": 50881, "cattle": 49910, "soy": 0, "in_arco": false}, {"id": "5105150", "name": "Juína", "uf": "MT", "pop": 45869, "cattle": 827774, "soy": 109670, "in_arco": true}, {"id": "2105708", "name": "Lago da Pedra", "uf": "MA", "pop": 44403, "cattle": 104379, "soy": 24600, "in_arco": false}, {"id": "1600279", "name": "Laranjal do Jari", "uf": "AP", "pop": 35114, "cattle": 3010, "soy": 0, "in_arco": false}, {"id": "5105259", "name": "Lucas do Rio Verde", "uf": "MT", "pop": 83798, "cattle": 53127, "soy": 895350, "in_arco": false}, {"id": "1302405", "name": "Lábrea", "uf": "AM", "pop": 45448, "cattle": 652247, "soy": 0, "in_arco": true}, {"id": "1600303", "name": "Macapá", "uf": "AP", "pop": 442933, "cattle": 7103, "soy": 14466, "in_arco": false}, {"id": "1100130", "name": "Machadinho D'Oeste", "uf": "RO", "pop": 30707, "cattle": 546726, "soy": 70069, "in_arco": true}, {"id": "1302504", "name": "Manacapuru", "uf": "AM", "pop": 101883, "cattle": 15942, "soy": 0, "in_arco": false}, {"id": "1302603", "name": "Manaus", "uf": "AM", "pop": 2063689, "cattle": 4594, "soy": 0, "in_arco": false}, {"id": "1302702", "name": "Manicoré", "uf": "AM", "pop": 53914, "cattle": 179408, "soy": 0, "in_arco": true}, {"id": "1504208", "name": "Marabá", "uf": "PA", "pop": 266533, "cattle": 1305000, "soy": 1628, "in_arco": false}, {"id": "1504422", "name": "Marituba", "uf": "PA", "pop": 111785, "cattle": 58, "soy": 0, "in_arco": false}, {"id": "2106607", "name": "Matões", "uf": "MA", "pop": 32174, "cattle": 23392, "soy": 27000, "in_arco": false}, {"id": "1302900", "name": "Maués", "uf": "AM", "pop": 61204, "cattle": 9876, "soy": 0, "in_arco": false}, {"id": "1504703", "name": "Moju", "uf": "PA", "pop": 84094, "cattle": 86000, "soy": 0, "in_arco": false}, {"id": "1504802", "name": "Monte Alegre", "uf": "PA", "pop": 60012, "cattle": 312243, "soy": 0, "in_arco": false}, {"id": "1504901", "name": "Muaná", "uf": "PA", "pop": 45368, "cattle": 6090, "soy": 0, "in_arco": false}, {"id": "1504059", "name": "Mãe do Rio", "uf": "PA", "pop": 34353, "cattle": 45858, "soy": 0, "in_arco": false}, {"id": "5106224", "name": "Nova Mutum", "uf": "MT", "pop": 55839, "cattle": 125887, "soy": 1529300, "in_arco": false}, {"id": "1505031", "name": "Novo Progresso", "uf": "PA", "pop": 33638, "cattle": 764993, "soy": 91110, "in_arco": true}, {"id": "1505064", "name": "Novo Repartimento", "uf": "PA", "pop": 60732, "cattle": 1275779, "soy": 0, "in_arco": true}, {"id": "1505205", "name": "Oeiras do Pará", "uf": "PA", "pop": 33844, "cattle": 6161, "soy": 0, "in_arco": false}, {"id": "1505304", "name": "Oriximiná", "uf": "PA", "pop": 68294, "cattle": 135547, "soy": 0, "in_arco": false}, {"id": "1505437", "name": "Ourilândia do Norte", "uf": "PA", "pop": 32467, "cattle": 241571, "soy": 0, "in_arco": false}, {"id": "1100155", "name": "Ouro Preto do Oeste", "uf": "RO", "pop": 35044, "cattle": 415696, "soy": 9933, "in_arco": false}, {"id": "1505486", "name": "Pacajá", "uf": "PA", "pop": 41097, "cattle": 859069, "soy": 0, "in_arco": true}, {"id": "1721000", "name": "Palmas", "uf": "TO", "pop": 302692, "cattle": 40106, "soy": 44140, "in_arco": false}, {"id": "1505502", "name": "Paragominas", "uf": "PA", "pop": 105550, "cattle": 375902, "soy": 841050, "in_arco": true}, {"id": "1505536", "name": "Parauapebas", "uf": "PA", "pop": 267836, "cattle": 130530, "soy": 0, "in_arco": false}, {"id": "1716109", "name": "Paraíso do Tocantins", "uf": "TO", "pop": 52360, "cattle": 122294, "soy": 9606, "in_arco": false}, {"id": "1303403", "name": "Parintins", "uf": "AM", "pop": 96372, "cattle": 48042, "soy": 0, "in_arco": false}, {"id": "2107803", "name": "Parnarama", "uf": "MA", "pop": 31250, "cattle": 93671, "soy": 39000, "in_arco": false}, {"id": "2107506", "name": "Paço do Lumiar", "uf": "MA", "pop": 145643, "cattle": 659, "soy": 0, "in_arco": false}, {"id": "2108207", "name": "Pedreiras", "uf": "MA", "pop": 37050, "cattle": 18463, "soy": 0, "in_arco": false}, {"id": "5106422", "name": "Peixoto de Azevedo", "uf": "MT", "pop": 32714, "cattle": 386284, "soy": 194510, "in_arco": true}, {"id": "2108306", "name": "Penalva", "uf": "MA", "pop": 32511, "cattle": 15825, "soy": 0, "in_arco": false}, {"id": "1100189", "name": "Pimenta Bueno", "uf": "RO", "pop": 35079, "cattle": 398047, "soy": 12535, "in_arco": false}, {"id": "2108504", "name": "Pindaré-Mirim", "uf": "MA", "pop": 31429, "cattle": 12553, "soy": 0, "in_arco": false}, {"id": "2108603", "name": "Pinheiro", "uf": "MA", "pop": 84621, "cattle": 32771, "soy": 0, "in_arco": false}, {"id": "5106505", "name": "Poconé", "uf": "MT", "pop": 31217, "cattle": 605000, "soy": 42508, "in_arco": false}, {"id": "5106752", "name": "Pontes e Lacerda", "uf": "MT", "pop": 52018, "cattle": 709538, "soy": 174244, "in_arco": false}, {"id": "1505809", "name": "Portel", "uf": "PA", "pop": 62503, "cattle": 101533, "soy": 0, "in_arco": true}, {"id": "1718204", "name": "Porto Nacional", "uf": "TO", "pop": 64418, "cattle": 147955, "soy": 233446, "in_arco": false}, {"id": "1100205", "name": "Porto Velho", "uf": "RO", "pop": 460434, "cattle": 1772153, "soy": 181812, "in_arco": true}, {"id": "1505908", "name": "Porto de Moz", "uf": "PA", "pop": 40597, "cattle": 70543, "soy": 0, "in_arco": false}, {"id": "1506005", "name": "Prainha", "uf": "PA", "pop": 35577, "cattle": 155337, "soy": 0, "in_arco": false}, {"id": "2109106", "name": "Presidente Dutra", "uf": "MA", "pop": 45155, "cattle": 70471, "soy": 0, "in_arco": false}, {"id": "1303536", "name": "Presidente Figueiredo", "uf": "AM", "pop": 30668, "cattle": 11989, "soy": 0, "in_arco": false}, {"id": "5107040", "name": "Primavera do Leste", "uf": "MT", "pop": 85146, "cattle": 90908, "soy": 1128000, "in_arco": false}, {"id": "2109452", "name": "Raposa", "uf": "MA", "pop": 30839, "cattle": 448, "soy": 0, "in_arco": false}, {"id": "1506138", "name": "Redenção", "uf": "PA", "pop": 85597, "cattle": 315521, "soy": 33710, "in_arco": false}, {"id": "1200401", "name": "Rio Branco", "uf": "AC", "pop": 364756, "cattle": 638875, "soy": 6765, "in_arco": true}, {"id": "5107206", "name": "Rio Branco", "uf": "MT", "pop": 4535, "cattle": 69461, "soy": 0, "in_arco": true}, {"id": "1100288", "name": "Rolim de Moura", "uf": "RO", "pop": 56406, "cattle": 267969, "soy": 27678, "in_arco": false}, {"id": "1506187", "name": "Rondon do Pará", "uf": "PA", "pop": 53143, "cattle": 374950, "soy": 235200, "in_arco": true}, {"id": "5107602", "name": "Rondonópolis", "uf": "MT", "pop": 244911, "cattle": 396077, "soy": 345000, "in_arco": false}, {"id": "1400472", "name": "Rorainópolis", "uf": "RR", "pop": 32647, "cattle": 126033, "soy": 0, "in_arco": false}, {"id": "2109601", "name": "Rosário", "uf": "MA", "pop": 38475, "cattle": 1190, "soy": 0, "in_arco": false}, {"id": "1506195", "name": "Rurópolis", "uf": "PA", "pop": 35769, "cattle": 196228, "soy": 2176, "in_arco": true}, {"id": "1506203", "name": "Salinópolis", "uf": "PA", "pop": 44772, "cattle": 151, "soy": 0, "in_arco": false}, {"id": "2109809", "name": "Santa Helena", "uf": "MA", "pop": 41561, "cattle": 15074, "soy": 0, "in_arco": false}, {"id": "2109908", "name": "Santa Inês", "uf": "MA", "pop": 85014, "cattle": 66314, "soy": 0, "in_arco": false}, {"id": "1506500", "name": "Santa Izabel do Pará", "uf": "PA", "pop": 73019, "cattle": 30292, "soy": 0, "in_arco": false}, {"id": "2110005", "name": "Santa Luzia", "uf": "MA", "pop": 57635, "cattle": 349056, "soy": 44100, "in_arco": false}, {"id": "2110203", "name": "Santa Rita", "uf": "MA", "pop": 37035, "cattle": 20682, "soy": 0, "in_arco": false}, {"id": "1600600", "name": "Santana", "uf": "AP", "pop": 107618, "cattle": 1175, "soy": 0, "in_arco": false}, {"id": "1506708", "name": "Santana do Araguaia", "uf": "PA", "pop": 32413, "cattle": 621904, "soy": 332796, "in_arco": true}, {"id": "1506807", "name": "Santarém", "uf": "PA", "pop": 331942, "cattle": 128750, "soy": 105000, "in_arco": false}, {"id": "1200500", "name": "Sena Madureira", "uf": "AC", "pop": 41343, "cattle": 544495, "soy": 0, "in_arco": true}, {"id": "5107909", "name": "Sinop", "uf": "MT", "pop": 196312, "cattle": 72474, "soy": 649250, "in_arco": false}, {"id": "5107925", "name": "Sorriso", "uf": "MT", "pop": 110635, "cattle": 101402, "soy": 2244375, "in_arco": false}, {"id": "2110500", "name": "São Bento", "uf": "MA", "pop": 46395, "cattle": 5539, "soy": 0, "in_arco": false}, {"id": "1507201", "name": "São Domingos do Capim", "uf": "PA", "pop": 30599, "cattle": 49977, "soy": 0, "in_arco": false}, {"id": "2110708", "name": "São Domingos do Maranhão", "uf": "MA", "pop": 34034, "cattle": 89712, "soy": 5445, "in_arco": false}, {"id": "1507300", "name": "São Félix do Xingu", "uf": "PA", "pop": 65418, "cattle": 2452095, "soy": 31000, "in_arco": true}, {"id": "1303809", "name": "São Gabriel da Cachoeira", "uf": "AM", "pop": 51795, "cattle": 110, "soy": 0, "in_arco": false}, {"id": "2111201", "name": "São José de Ribamar", "uf": "MA", "pop": 244579, "cattle": 1670, "soy": 0, "in_arco": false}, {"id": "2111300", "name": "São Luís", "uf": "MA", "pop": 1037775, "cattle": 1639, "soy": 0, "in_arco": false}, {"id": "2111508", "name": "São Mateus do Maranhão", "uf": "MA", "pop": 38829, "cattle": 38250, "soy": 0, "in_arco": false}, {"id": "1507607", "name": "São Miguel do Guamá", "uf": "PA", "pop": 52894, "cattle": 43335, "soy": 0, "in_arco": false}, {"id": "1303908", "name": "São Paulo de Olivença", "uf": "AM", "pop": 32967, "cattle": 450, "soy": 0, "in_arco": false}, {"id": "1304062", "name": "Tabatinga", "uf": "AM", "pop": 66764, "cattle": 243, "soy": 0, "in_arco": false}, {"id": "1507953", "name": "Tailândia", "uf": "PA", "pop": 72493, "cattle": 87000, "soy": 52500, "in_arco": true}, {"id": "5107958", "name": "Tangará da Serra", "uf": "MT", "pop": 106434, "cattle": 372048, "soy": 423540, "in_arco": false}, {"id": "1200609", "name": "Tarauacá", "uf": "AC", "pop": 43467, "cattle": 243341, "soy": 0, "in_arco": true}, {"id": "1304203", "name": "Tefé", "uf": "AM", "pop": 73669, "cattle": 1258, "soy": 0, "in_arco": false}, {"id": "2112209", "name": "Timon", "uf": "MA", "pop": 174465, "cattle": 21530, "soy": 2500, "in_arco": false}, {"id": "1508001", "name": "Tomé-Açu", "uf": "PA", "pop": 67585, "cattle": 149710, "soy": 0, "in_arco": false}, {"id": "1508084", "name": "Tucumã", "uf": "PA", "pop": 39550, "cattle": 375584, "soy": 7200, "in_arco": false}, {"id": "1508100", "name": "Tucuruí", "uf": "PA", "pop": 91306, "cattle": 83771, "soy": 0, "in_arco": false}, {"id": "2112308", "name": "Tuntum", "uf": "MA", "pop": 36251, "cattle": 185172, "soy": 0, "in_arco": false}, {"id": "2112407", "name": "Turiaçu", "uf": "MA", "pop": 37491, "cattle": 11013, "soy": 0, "in_arco": false}, {"id": "2112456", "name": "Turilândia", "uf": "MA", "pop": 31638, "cattle": 30262, "soy": 0, "in_arco": false}, {"id": "2112506", "name": "Tutóia", "uf": "MA", "pop": 53356, "cattle": 3204, "soy": 0, "in_arco": false}, {"id": "1508126", "name": "Ulianópolis", "uf": "PA", "pop": 37972, "cattle": 89850, "soy": 201500, "in_arco": false}, {"id": "2112605", "name": "Urbano Santos", "uf": "MA", "pop": 32812, "cattle": 1275, "soy": 2700, "in_arco": false}, {"id": "1508159", "name": "Uruará", "uf": "PA", "pop": 43558, "cattle": 382100, "soy": 1950, "in_arco": true}, {"id": "2112704", "name": "Vargem Grande", "uf": "MA", "pop": 43261, "cattle": 18470, "soy": 0, "in_arco": false}, {"id": "2112803", "name": "Viana", "uf": "MA", "pop": 51442, "cattle": 17628, "soy": 0, "in_arco": false}, {"id": "1508209", "name": "Vigia", "uf": "PA", "pop": 50832, "cattle": 267, "soy": 0, "in_arco": false}, {"id": "1100304", "name": "Vilhena", "uf": "RO", "pop": 95832, "cattle": 170512, "soy": 164500, "in_arco": true}, {"id": "1508308", "name": "Viseu", "uf": "PA", "pop": 58692, "cattle": 124697, "soy": 0, "in_arco": false}, {"id": "2113009", "name": "Vitorino Freire", "uf": "MA", "pop": 30845, "cattle": 101782, "soy": 0, "in_arco": false}, {"id": "2112902", "name": "Vitória do Mearim", "uf": "MA", "pop": 30805, "cattle": 23213, "soy": 0, "in_arco": false}, {"id": "5108402", "name": "Várzea Grande", "uf": "MT", "pop": 300078, "cattle": 26265, "soy": 0, "in_arco": false}, {"id": "1508407", "name": "Xinguara", "uf": "PA", "pop": 52893, "cattle": 504374, "soy": 360, "in_arco": false}, {"id": "2114007", "name": "Zé Doca", "uf": "MA", "pop": 40801, "cattle": 169510, "soy": 0, "in_arco": false}, {"id": "1505106", "name": "Óbidos", "uf": "PA", "pop": 52229, "cattle": 180010, "soy": 0, "in_arco": false}];
const DATA_HARD = [{"id": "1500107", "name": "Abaetetuba", "uf": "PA", "pop": 158188, "cattle": 4500, "soy": 0, "in_arco": false}, {"id": "1500131", "name": "Abel Figueiredo", "uf": "PA", "pop": 6136, "cattle": 50800, "soy": 17175, "in_arco": false}, {"id": "1700251", "name": "Abreulândia", "uf": "TO", "pop": 2576, "cattle": 93525, "soy": 38818, "in_arco": false}, {"id": "1500206", "name": "Acará", "uf": "PA", "pop": 59023, "cattle": 18099, "soy": 0, "in_arco": false}, {"id": "5100102", "name": "Acorizal", "uf": "MT", "pop": 5014, "cattle": 59363, "soy": 0, "in_arco": false}, {"id": "1200013", "name": "Acrelândia", "uf": "AC", "pop": 14021, "cattle": 272285, "soy": 298, "in_arco": true}, {"id": "2100105", "name": "Afonso Cunha", "uf": "MA", "pop": 6144, "cattle": 1410, "soy": 26499, "in_arco": false}, {"id": "1500305", "name": "Afuá", "uf": "PA", "pop": 37765, "cattle": 1482, "soy": 0, "in_arco": false}, {"id": "1700301", "name": "Aguiarnópolis", "uf": "TO", "pop": 4497, "cattle": 18715, "soy": 0, "in_arco": false}, {"id": "2100204", "name": "Alcântara", "uf": "MA", "pop": 18467, "cattle": 4355, "soy": 0, "in_arco": false}, {"id": "2100303", "name": "Aldeias Altas", "uf": "MA", "pop": 23286, "cattle": 6620, "soy": 28637, "in_arco": false}, {"id": "1500404", "name": "Alenquer", "uf": "PA", "pop": 69377, "cattle": 263592, "soy": 0, "in_arco": false}, {"id": "1700350", "name": "Aliança do Tocantins", "uf": "TO", "pop": 5147, "cattle": 100605, "soy": 34741, "in_arco": false}, {"id": "1700400", "name": "Almas", "uf": "TO", "pop": 6499, "cattle": 83780, "soy": 46234, "in_arco": false}, {"id": "1500503", "name": "Almeirim", "uf": "PA", "pop": 34280, "cattle": 26966, "soy": 0, "in_arco": false}, {"id": "5100250", "name": "Alta Floresta", "uf": "MT", "pop": 58613, "cattle": 753449, "soy": 285223, "in_arco": true}, {"id": "1100015", "name": "Alta Floresta D'Oeste", "uf": "RO", "pop": 21494, "cattle": 567114, "soy": 4824, "in_arco": false}, {"id": "1500602", "name": "Altamira", "uf": "PA", "pop": 126279, "cattle": 1079168, "soy": 49462, "in_arco": true}, {"id": "2100402", "name": "Altamira do Maranhão", "uf": "MA", "pop": 6447, "cattle": 46092, "soy": 0, "in_arco": false}, {"id": "1400050", "name": "Alto Alegre", "uf": "RR", "pop": 21096, "cattle": 106411, "soy": 156461, "in_arco": false}, {"id": "2100436", "name": "Alto Alegre do Maranhão", "uf": "MA", "pop": 24048, "cattle": 17498, "soy": 0, "in_arco": false}, {"id": "2100477", "name": "Alto Alegre do Pindaré", "uf": "MA", "pop": 25710, "cattle": 89463, "soy": 2646, "in_arco": false}, {"id": "1100379", "name": "Alto Alegre dos Parecis", "uf": "RO", "pop": 11479, "cattle": 268153, "soy": 12546, "in_arco": false}, {"id": "5100300", "name": "Alto Araguaia", "uf": "MT", "pop": 17193, "cattle": 176574, "soy": 169200, "in_arco": false}, {"id": "5100359", "name": "Alto Boa Vista", "uf": "MT", "pop": 5715, "cattle": 53872, "soy": 125385, "in_arco": false}, {"id": "5100409", "name": "Alto Garças", "uf": "MT", "pop": 13052, "cattle": 94184, "soy": 415800, "in_arco": false}, {"id": "5100508", "name": "Alto Paraguai", "uf": "MT", "pop": 8009, "cattle": 93638, "soy": 26816, "in_arco": false}, {"id": "1100403", "name": "Alto Paraíso", "uf": "RO", "pop": 16320, "cattle": 416218, "soy": 87238, "in_arco": false}, {"id": "2100501", "name": "Alto Parnaíba", "uf": "MA", "pop": 11109, "cattle": 55386, "soy": 175214, "in_arco": false}, {"id": "5100607", "name": "Alto Taquari", "uf": "MT", "pop": 10904, "cattle": 12560, "soy": 253260, "in_arco": false}, {"id": "1300029", "name": "Alvarães", "uf": "AM", "pop": 15866, "cattle": 411, "soy": 0, "in_arco": false}, {"id": "1700707", "name": "Alvorada", "uf": "TO", "pop": 8802, "cattle": 72737, "soy": 116528, "in_arco": false}, {"id": "1100346", "name": "Alvorada D'Oeste", "uf": "RO", "pop": 13117, "cattle": 322895, "soy": 2739, "in_arco": false}, {"id": "1400027", "name": "Amajari", "uf": "RR", "pop": 13927, "cattle": 131021, "soy": 825, "in_arco": false}, {"id": "1600105", "name": "Amapá", "uf": "AP", "pop": 7943, "cattle": 12900, "soy": 0, "in_arco": false}, {"id": "2100550", "name": "Amapá do Maranhão", "uf": "MA", "pop": 7170, "cattle": 13025, "soy": 0, "in_arco": false}, {"id": "2100600", "name": "Amarante do Maranhão", "uf": "MA", "pop": 37085, "cattle": 364086, "soy": 2250, "in_arco": false}, {"id": "1300060", "name": "Amaturá", "uf": "AM", "pop": 10819, "cattle": 902, "soy": 0, "in_arco": false}, {"id": "2100709", "name": "Anajatuba", "uf": "MA", "pop": 25322, "cattle": 53038, "soy": 0, "in_arco": false}, {"id": "1500701", "name": "Anajás", "uf": "PA", "pop": 28011, "cattle": 1050, "soy": 0, "in_arco": false}, {"id": "1300086", "name": "Anamã", "uf": "AM", "pop": 9962, "cattle": 400, "soy": 0, "in_arco": false}, {"id": "1500800", "name": "Ananindeua", "uf": "PA", "pop": 478778, "cattle": 20, "soy": 0, "in_arco": false}, {"id": "1701002", "name": "Ananás", "uf": "TO", "pop": 10325, "cattle": 110698, "soy": 27, "in_arco": false}, {"id": "1500859", "name": "Anapu", "uf": "PA", "pop": 31850, "cattle": 375625, "soy": 0, "in_arco": true}, {"id": "2100808", "name": "Anapurus", "uf": "MA", "pop": 13793, "cattle": 1751, "soy": 23200, "in_arco": false}, {"id": "1701051", "name": "Angico", "uf": "TO", "pop": 2876, "cattle": 23466, "soy": 0, "in_arco": false}, {"id": "1300102", "name": "Anori", "uf": "AM", "pop": 17194, "cattle": 714, "soy": 0, "in_arco": false}, {"id": "1701101", "name": "Aparecida do Rio Negro", "uf": "TO", "pop": 4856, "cattle": 21906, "soy": 99000, "in_arco": false}, {"id": "5100805", "name": "Apiacás", "uf": "MT", "pop": 8590, "cattle": 335275, "soy": 4125, "in_arco": false}, {"id": "2100832", "name": "Apicum-Açu", "uf": "MA", "pop": 17519, "cattle": 2222, "soy": 0, "in_arco": false}, {"id": "1300144", "name": "Apuí", "uf": "AM", "pop": 20647, "cattle": 293064, "soy": 0, "in_arco": true}, {"id": "1701309", "name": "Aragominas", "uf": "TO", "pop": 5290, "cattle": 115268, "soy": 5550, "in_arco": false}, {"id": "1701903", "name": "Araguacema", "uf": "TO", "pop": 5927, "cattle": 63592, "soy": 144838, "in_arco": false}, {"id": "5101001", "name": "Araguaiana", "uf": "MT", "pop": 3795, "cattle": 316356, "soy": 32725, "in_arco": false}, {"id": "5101209", "name": "Araguainha", "uf": "MT", "pop": 1010, "cattle": 28573, "soy": 4463, "in_arco": false}, {"id": "2100873", "name": "Araguanã", "uf": "MA", "pop": 11181, "cattle": 28466, "soy": 0, "in_arco": false}, {"id": "1702158", "name": "Araguanã", "uf": "TO", "pop": 4310, "cattle": 94337, "soy": 270, "in_arco": false}, {"id": "1702208", "name": "Araguatins", "uf": "TO", "pop": 31918, "cattle": 205842, "soy": 0, "in_arco": false}, {"id": "1702000", "name": "Araguaçu", "uf": "TO", "pop": 8133, "cattle": 487469, "soy": 74951, "in_arco": false}, {"id": "1702109", "name": "Araguaína", "uf": "TO", "pop": 171301, "cattle": 290942, "soy": 15979, "in_arco": false}, {"id": "2100907", "name": "Araioses", "uf": "MA", "pop": 39052, "cattle": 11052, "soy": 0, "in_arco": false}, {"id": "2100956", "name": "Arame", "uf": "MA", "pop": 25517, "cattle": 164890, "soy": 0, "in_arco": false}, {"id": "1702307", "name": "Arapoema", "uf": "TO", "pop": 5550, "cattle": 180820, "soy": 1364, "in_arco": false}, {"id": "5101258", "name": "Araputanga", "uf": "MT", "pop": 14786, "cattle": 253436, "soy": 0, "in_arco": false}, {"id": "2101004", "name": "Arari", "uf": "MA", "pop": 29472, "cattle": 39192, "soy": 0, "in_arco": false}, {"id": "5101308", "name": "Arenápolis", "uf": "MT", "pop": 10576, "cattle": 33352, "soy": 23985, "in_arco": false}, {"id": "5101407", "name": "Aripuanã", "uf": "MT", "pop": 24626, "cattle": 609108, "soy": 42173, "in_arco": true}, {"id": "1100023", "name": "Ariquemes", "uf": "RO", "pop": 96833, "cattle": 615978, "soy": 46230, "in_arco": true}, {"id": "1702406", "name": "Arraias", "uf": "TO", "pop": 10287, "cattle": 281522, "soy": 0, "in_arco": false}, {"id": "1200054", "name": "Assis Brasil", "uf": "AC", "pop": 8100, "cattle": 76280, "soy": 0, "in_arco": false}, {"id": "1300201", "name": "Atalaia do Norte", "uf": "AM", "pop": 15314, "cattle": 34, "soy": 0, "in_arco": false}, {"id": "1702554", "name": "Augustinópolis", "uf": "TO", "pop": 17484, "cattle": 69253, "soy": 0, "in_arco": false}, {"id": "1500909", "name": "Augusto Corrêa", "uf": "PA", "pop": 44573, "cattle": 4226, "soy": 0, "in_arco": false}, {"id": "1500958", "name": "Aurora do Pará", "uf": "PA", "pop": 23774, "cattle": 90372, "soy": 0, "in_arco": false}, {"id": "1702703", "name": "Aurora do Tocantins", "uf": "TO", "pop": 3342, "cattle": 54515, "soy": 0, "in_arco": false}, {"id": "1300300", "name": "Autazes", "uf": "AM", "pop": 41564, "cattle": 48231, "soy": 0, "in_arco": false}, {"id": "1501006", "name": "Aveiro", "uf": "PA", "pop": 18290, "cattle": 65233, "soy": 0, "in_arco": false}, {"id": "2101103", "name": "Axixá", "uf": "MA", "pop": 11790, "cattle": 420, "soy": 0, "in_arco": false}, {"id": "1702901", "name": "Axixá do Tocantins", "uf": "TO", "pop": 10262, "cattle": 40981, "soy": 0, "in_arco": false}, {"id": "2100055", "name": "Açailândia", "uf": "MA", "pop": 106550, "cattle": 434734, "soy": 255969, "in_arco": false}, {"id": "1703008", "name": "Babaçulândia", "uf": "TO", "pop": 7880, "cattle": 93266, "soy": 5623, "in_arco": false}, {"id": "2101202", "name": "Bacabal", "uf": "MA", "pop": 103711, "cattle": 135300, "soy": 0, "in_arco": false}, {"id": "2101251", "name": "Bacabeira", "uf": "MA", "pop": 16966, "cattle": 4856, "soy": 0, "in_arco": false}, {"id": "2101301", "name": "Bacuri", "uf": "MA", "pop": 16290, "cattle": 4858, "soy": 0, "in_arco": false}, {"id": "2101350", "name": "Bacurituba", "uf": "MA", "pop": 5252, "cattle": 7015, "soy": 0, "in_arco": false}, {"id": "1501105", "name": "Bagre", "uf": "PA", "pop": 31892, "cattle": 714, "soy": 0, "in_arco": false}, {"id": "1501204", "name": "Baião", "uf": "PA", "pop": 51641, "cattle": 82078, "soy": 0, "in_arco": false}, {"id": "2101400", "name": "Balsas", "uf": "MA", "pop": 101767, "cattle": 118540, "soy": 602055, "in_arco": false}, {"id": "1703057", "name": "Bandeirantes do Tocantins", "uf": "TO", "pop": 3407, "cattle": 164207, "soy": 0, "in_arco": false}, {"id": "1501253", "name": "Bannach", "uf": "PA", "pop": 4031, "cattle": 275423, "soy": 0, "in_arco": false}, {"id": "1501303", "name": "Barcarena", "uf": "PA", "pop": 126650, "cattle": 700, "soy": 0, "in_arco": false}, {"id": "1300409", "name": "Barcelos", "uf": "AM", "pop": 18834, "cattle": 47, "soy": 0, "in_arco": false}, {"id": "5101704", "name": "Barra do Bugres", "uf": "MT", "pop": 29403, "cattle": 311647, "soy": 12026, "in_arco": false}, {"id": "2101608", "name": "Barra do Corda", "uf": "MA", "pop": 84532, "cattle": 178901, "soy": 25452, "in_arco": false}, {"id": "5101803", "name": "Barra do Garças", "uf": "MT", "pop": 69210, "cattle": 410058, "soy": 182777, "in_arco": false}, {"id": "1703073", "name": "Barra do Ouro", "uf": "TO", "pop": 4476, "cattle": 33418, "soy": 20459, "in_arco": false}, {"id": "1300508", "name": "Barreirinha", "uf": "AM", "pop": 31051, "cattle": 22034, "soy": 0, "in_arco": false}, {"id": "2101707", "name": "Barreirinhas", "uf": "MA", "pop": 65589, "cattle": 9970, "soy": 0, "in_arco": false}, {"id": "1703107", "name": "Barrolândia", "uf": "TO", "pop": 4846, "cattle": 79618, "soy": 2706, "in_arco": false}, {"id": "2101509", "name": "Barão de Grajaú", "uf": "MA", "pop": 18984, "cattle": 14482, "soy": 0, "in_arco": false}, {"id": "5101605", "name": "Barão de Melgaço", "uf": "MT", "pop": 7253, "cattle": 222413, "soy": 0, "in_arco": false}, {"id": "2101772", "name": "Bela Vista do Maranhão", "uf": "MA", "pop": 11750, "cattle": 9888, "soy": 0, "in_arco": false}, {"id": "1501451", "name": "Belterra", "uf": "PA", "pop": 18099, "cattle": 21927, "soy": 105000, "in_arco": false}, {"id": "2101731", "name": "Belágua", "uf": "MA", "pop": 8460, "cattle": 293, "soy": 0, "in_arco": false}, {"id": "1501402", "name": "Belém", "uf": "PA", "pop": 1303403, "cattle": 87, "soy": 0, "in_arco": false}, {"id": "2101806", "name": "Benedito Leite", "uf": "MA", "pop": 5469, "cattle": 15924, "soy": 22500, "in_arco": false}, {"id": "1501501", "name": "Benevides", "uf": "PA", "pop": 63567, "cattle": 2087, "soy": 0, "in_arco": false}, {"id": "1300607", "name": "Benjamin Constant", "uf": "AM", "pop": 37648, "cattle": 512, "soy": 0, "in_arco": false}, {"id": "2101905", "name": "Bequimão", "uf": "MA", "pop": 19584, "cattle": 7790, "soy": 0, "in_arco": false}, {"id": "1703206", "name": "Bernardo Sayão", "uf": "TO", "pop": 4229, "cattle": 99589, "soy": 15081, "in_arco": false}, {"id": "2101939", "name": "Bernardo do Mearim", "uf": "MA", "pop": 5840, "cattle": 17034, "soy": 0, "in_arco": false}, {"id": "1300631", "name": "Beruri", "uf": "AM", "pop": 20718, "cattle": 1287, "soy": 0, "in_arco": false}, {"id": "5101837", "name": "Boa Esperança do Norte", "uf": "MT", "pop": 23644, "cattle": 28500, "soy": 18000, "in_arco": false}, {"id": "1400100", "name": "Boa Vista", "uf": "RR", "pop": 413486, "cattle": 25140, "soy": 140636, "in_arco": false}, {"id": "2101970", "name": "Boa Vista do Gurupi", "uf": "MA", "pop": 7574, "cattle": 6685, "soy": 0, "in_arco": false}, {"id": "1300680", "name": "Boa Vista do Ramos", "uf": "AM", "pop": 23785, "cattle": 12654, "soy": 0, "in_arco": false}, {"id": "1300706", "name": "Boca do Acre", "uf": "AM", "pop": 35447, "cattle": 475000, "soy": 4080, "in_arco": true}, {"id": "2102002", "name": "Bom Jardim", "uf": "MA", "pop": 33100, "cattle": 210934, "soy": 54360, "in_arco": false}, {"id": "2102036", "name": "Bom Jesus das Selvas", "uf": "MA", "pop": 28599, "cattle": 177241, "soy": 13455, "in_arco": false}, {"id": "5101852", "name": "Bom Jesus do Araguaia", "uf": "MT", "pop": 7280, "cattle": 195517, "soy": 528477, "in_arco": false}, {"id": "1501576", "name": "Bom Jesus do Tocantins", "uf": "PA", "pop": 18005, "cattle": 245000, "soy": 0, "in_arco": false}, {"id": "1703305", "name": "Bom Jesus do Tocantins", "uf": "TO", "pop": 4038, "cattle": 37065, "soy": 53645, "in_arco": false}, {"id": "2102077", "name": "Bom Lugar", "uf": "MA", "pop": 12212, "cattle": 64801, "soy": 0, "in_arco": false}, {"id": "1400159", "name": "Bonfim", "uf": "RR", "pop": 13923, "cattle": 75445, "soy": 104802, "in_arco": false}, {"id": "1501600", "name": "Bonito", "uf": "PA", "pop": 12622, "cattle": 13177, "soy": 0, "in_arco": false}, {"id": "1300805", "name": "Borba", "uf": "AM", "pop": 33080, "cattle": 4074, "soy": 0, "in_arco": false}, {"id": "1501709", "name": "Bragança", "uf": "PA", "pop": 123082, "cattle": 45630, "soy": 0, "in_arco": false}, {"id": "1501725", "name": "Brasil Novo", "uf": "PA", "pop": 24718, "cattle": 308639, "soy": 0, "in_arco": true}, {"id": "1703602", "name": "Brasilândia do Tocantins", "uf": "TO", "pop": 1974, "cattle": 36980, "soy": 1811, "in_arco": false}, {"id": "1200104", "name": "Brasiléia", "uf": "AC", "pop": 26000, "cattle": 371853, "soy": 0, "in_arco": true}, {"id": "5101902", "name": "Brasnorte", "uf": "MT", "pop": 17004, "cattle": 515136, "soy": 1077136, "in_arco": true}, {"id": "1703701", "name": "Brejinho de Nazaré", "uf": "TO", "pop": 4725, "cattle": 58484, "soy": 79020, "in_arco": false}, {"id": "2102101", "name": "Brejo", "uf": "MA", "pop": 34120, "cattle": 9850, "soy": 47600, "in_arco": false}, {"id": "1501758", "name": "Brejo Grande do Araguaia", "uf": "PA", "pop": 6783, "cattle": 135000, "soy": 1590, "in_arco": false}, {"id": "2102150", "name": "Brejo de Areia", "uf": "MA", "pop": 9218, "cattle": 36812, "soy": 0, "in_arco": false}, {"id": "1501782", "name": "Breu Branco", "uf": "PA", "pop": 45712, "cattle": 200577, "soy": 13200, "in_arco": false}, {"id": "1501808", "name": "Breves", "uf": "PA", "pop": 106968, "cattle": 920, "soy": 0, "in_arco": false}, {"id": "1200138", "name": "Bujari", "uf": "AC", "pop": 12917, "cattle": 371291, "soy": 0, "in_arco": true}, {"id": "1501907", "name": "Bujaru", "uf": "PA", "pop": 24383, "cattle": 5939, "soy": 0, "in_arco": false}, {"id": "2102200", "name": "Buriti", "uf": "MA", "pop": 29685, "cattle": 7800, "soy": 39590, "in_arco": false}, {"id": "2102309", "name": "Buriti Bravo", "uf": "MA", "pop": 22455, "cattle": 37960, "soy": 35000, "in_arco": false}, {"id": "1703800", "name": "Buriti do Tocantins", "uf": "TO", "pop": 10307, "cattle": 36456, "soy": 0, "in_arco": false}, {"id": "2102325", "name": "Buriticupu", "uf": "MA", "pop": 55499, "cattle": 180182, "soy": 133500, "in_arco": false}, {"id": "2102358", "name": "Buritirana", "uf": "MA", "pop": 12918, "cattle": 85534, "soy": 0, "in_arco": false}, {"id": "1100452", "name": "Buritis", "uf": "RO", "pop": 27992, "cattle": 654486, "soy": 4180, "in_arco": true}, {"id": "1300839", "name": "Caapiranga", "uf": "AM", "pop": 13469, "cattle": 1810, "soy": 0, "in_arco": false}, {"id": "1100031", "name": "Cabixi", "uf": "RO", "pop": 5351, "cattle": 121036, "soy": 100000, "in_arco": false}, {"id": "1100601", "name": "Cacaulândia", "uf": "RO", "pop": 4150, "cattle": 334313, "soy": 0, "in_arco": false}, {"id": "2102374", "name": "Cachoeira Grande", "uf": "MA", "pop": 9732, "cattle": 1120, "soy": 0, "in_arco": false}, {"id": "1502004", "name": "Cachoeira do Arari", "uf": "PA", "pop": 23981, "cattle": 46100, "soy": 0, "in_arco": false}, {"id": "1501956", "name": "Cachoeira do Piriá", "uf": "PA", "pop": 19630, "cattle": 55189, "soy": 0, "in_arco": false}, {"id": "1703826", "name": "Cachoeirinha", "uf": "TO", "pop": 1961, "cattle": 9336, "soy": 0, "in_arco": false}, {"id": "1100049", "name": "Cacoal", "uf": "RO", "pop": 86887, "cattle": 502394, "soy": 16420, "in_arco": true}, {"id": "2102408", "name": "Cajapió", "uf": "MA", "pop": 10121, "cattle": 4498, "soy": 0, "in_arco": false}, {"id": "2102507", "name": "Cajari", "uf": "MA", "pop": 16412, "cattle": 8835, "soy": 0, "in_arco": false}, {"id": "1600204", "name": "Calçoene", "uf": "AP", "pop": 10612, "cattle": 3645, "soy": 0, "in_arco": false}, {"id": "1502103", "name": "Cametá", "uf": "PA", "pop": 134184, "cattle": 2830, "soy": 0, "in_arco": false}, {"id": "2102556", "name": "Campestre do Maranhão", "uf": "MA", "pop": 12301, "cattle": 52095, "soy": 180, "in_arco": false}, {"id": "5102603", "name": "Campinápolis", "uf": "MT", "pop": 15347, "cattle": 259185, "soy": 195000, "in_arco": false}, {"id": "1100700", "name": "Campo Novo de Rondônia", "uf": "RO", "pop": 8844, "cattle": 528831, "soy": 1880, "in_arco": false}, {"id": "5102637", "name": "Campo Novo do Parecis", "uf": "MT", "pop": 45899, "cattle": 164349, "soy": 1571355, "in_arco": false}, {"id": "5102678", "name": "Campo Verde", "uf": "MT", "pop": 44585, "cattle": 137084, "soy": 960000, "in_arco": false}, {"id": "1703842", "name": "Campos Lindos", "uf": "TO", "pop": 8653, "cattle": 54472, "soy": 206863, "in_arco": false}, {"id": "5102686", "name": "Campos de Júlio", "uf": "MT", "pop": 8822, "cattle": 110176, "soy": 784920, "in_arco": false}, {"id": "5102694", "name": "Canabrava do Norte", "uf": "MT", "pop": 4485, "cattle": 150823, "soy": 136800, "in_arco": false}, {"id": "5102702", "name": "Canarana", "uf": "MT", "pop": 25858, "cattle": 211389, "soy": 1209000, "in_arco": false}, {"id": "1502152", "name": "Canaã dos Carajás", "uf": "PA", "pop": 77079, "cattle": 228000, "soy": 0, "in_arco": false}, {"id": "1100809", "name": "Candeias do Jamari", "uf": "RO", "pop": 22310, "cattle": 391425, "soy": 157626, "in_arco": true}, {"id": "2102705", "name": "Cantanhede", "uf": "MA", "pop": 24303, "cattle": 7686, "soy": 0, "in_arco": false}, {"id": "1400175", "name": "Cantá", "uf": "RR", "pop": 18682, "cattle": 105234, "soy": 10565, "in_arco": false}, {"id": "1300904", "name": "Canutama", "uf": "AM", "pop": 16869, "cattle": 71370, "soy": 1375, "in_arco": true}, {"id": "1502202", "name": "Capanema", "uf": "PA", "pop": 70394, "cattle": 28231, "soy": 0, "in_arco": false}, {"id": "2102754", "name": "Capinzal do Norte", "uf": "MA", "pop": 11374, "cattle": 20709, "soy": 0, "in_arco": false}, {"id": "1502301", "name": "Capitão Poço", "uf": "PA", "pop": 56506, "cattle": 116727, "soy": 0, "in_arco": false}, {"id": "1200179", "name": "Capixaba", "uf": "AC", "pop": 10392, "cattle": 224993, "soy": 9750, "in_arco": true}, {"id": "1400209", "name": "Caracaraí", "uf": "RR", "pop": 20957, "cattle": 78320, "soy": 864, "in_arco": false}, {"id": "1301001", "name": "Carauari", "uf": "AM", "pop": 28742, "cattle": 4967, "soy": 0, "in_arco": false}, {"id": "1301100", "name": "Careiro", "uf": "AM", "pop": 30792, "cattle": 14000, "soy": 0, "in_arco": false}, {"id": "1301159", "name": "Careiro da Várzea", "uf": "AM", "pop": 19637, "cattle": 61535, "soy": 0, "in_arco": false}, {"id": "1703867", "name": "Cariri do Tocantins", "uf": "TO", "pop": 4007, "cattle": 86274, "soy": 88532, "in_arco": false}, {"id": "5102793", "name": "Carlinda", "uf": "MT", "pop": 10332, "cattle": 290045, "soy": 101846, "in_arco": false}, {"id": "1703883", "name": "Carmolândia", "uf": "TO", "pop": 2201, "cattle": 38697, "soy": 0, "in_arco": false}, {"id": "1400233", "name": "Caroebe", "uf": "RR", "pop": 10656, "cattle": 93345, "soy": 0, "in_arco": false}, {"id": "2102804", "name": "Carolina", "uf": "MA", "pop": 24062, "cattle": 143102, "soy": 77740, "in_arco": false}, {"id": "1703891", "name": "Carrasco Bonito", "uf": "TO", "pop": 3318, "cattle": 24490, "soy": 0, "in_arco": false}, {"id": "2102903", "name": "Carutapera", "uf": "MA", "pop": 24238, "cattle": 34058, "soy": 0, "in_arco": false}, {"id": "1703909", "name": "Caseara", "uf": "TO", "pop": 4847, "cattle": 46052, "soy": 181724, "in_arco": false}, {"id": "1502400", "name": "Castanhal", "uf": "PA", "pop": 192256, "cattle": 42960, "soy": 0, "in_arco": false}, {"id": "5102850", "name": "Castanheira", "uf": "MT", "pop": 7506, "cattle": 464222, "soy": 6841, "in_arco": true}, {"id": "1100908", "name": "Castanheiras", "uf": "RO", "pop": 3233, "cattle": 120944, "soy": 19500, "in_arco": false}, {"id": "2103000", "name": "Caxias", "uf": "MA", "pop": 156973, "cattle": 49290, "soy": 42616, "in_arco": false}, {"id": "2103109", "name": "Cedral", "uf": "MA", "pop": 10208, "cattle": 816, "soy": 0, "in_arco": false}, {"id": "1704105", "name": "Centenário", "uf": "TO", "pop": 2131, "cattle": 33833, "soy": 15000, "in_arco": false}, {"id": "2103125", "name": "Central do Maranhão", "uf": "MA", "pop": 7094, "cattle": 2903, "soy": 0, "in_arco": false}, {"id": "2103174", "name": "Centro Novo do Maranhão", "uf": "MA", "pop": 16267, "cattle": 102203, "soy": 0, "in_arco": false}, {"id": "2103158", "name": "Centro do Guilherme", "uf": "MA", "pop": 12342, "cattle": 30794, "soy": 0, "in_arco": false}, {"id": "1100056", "name": "Cerejeiras", "uf": "RO", "pop": 15890, "cattle": 94526, "soy": 140000, "in_arco": false}, {"id": "1705102", "name": "Chapada da Natividade", "uf": "TO", "pop": 3117, "cattle": 37206, "soy": 44996, "in_arco": false}, {"id": "1704600", "name": "Chapada de Areia", "uf": "TO", "pop": 1501, "cattle": 47356, "soy": 7557, "in_arco": false}, {"id": "5103007", "name": "Chapada dos Guimarães", "uf": "MT", "pop": 18990, "cattle": 156957, "soy": 166990, "in_arco": false}, {"id": "2103208", "name": "Chapadinha", "uf": "MA", "pop": 81386, "cattle": 16300, "soy": 13900, "in_arco": false}, {"id": "1502509", "name": "Chaves", "uf": "PA", "pop": 20757, "cattle": 67456, "soy": 0, "in_arco": false}, {"id": "1100924", "name": "Chupinguaia", "uf": "RO", "pop": 9324, "cattle": 393635, "soy": 145000, "in_arco": false}, {"id": "2103257", "name": "Cidelândia", "uf": "MA", "pop": 12878, "cattle": 117500, "soy": 31314, "in_arco": false}, {"id": "5103056", "name": "Cláudia", "uf": "MT", "pop": 9593, "cattle": 50799, "soy": 389550, "in_arco": true}, {"id": "1301209", "name": "Coari", "uf": "AM", "pop": 70616, "cattle": 1970, "soy": 0, "in_arco": false}, {"id": "5103106", "name": "Cocalinho", "uf": "MT", "pop": 6220, "cattle": 485903, "soy": 73000, "in_arco": false}, {"id": "1301308", "name": "Codajás", "uf": "AM", "pop": 23549, "cattle": 2077, "soy": 0, "in_arco": false}, {"id": "2103307", "name": "Codó", "uf": "MA", "pop": 114275, "cattle": 162120, "soy": 5190, "in_arco": false}, {"id": "2103406", "name": "Coelho Neto", "uf": "MA", "pop": 41658, "cattle": 6620, "soy": 0, "in_arco": false}, {"id": "1502608", "name": "Colares", "uf": "PA", "pop": 12868, "cattle": 1002, "soy": 0, "in_arco": false}, {"id": "2103505", "name": "Colinas", "uf": "MA", "pop": 40316, "cattle": 69635, "soy": 28672, "in_arco": false}, {"id": "1705508", "name": "Colinas do Tocantins", "uf": "TO", "pop": 34233, "cattle": 145283, "soy": 0, "in_arco": false}, {"id": "1716703", "name": "Colméia", "uf": "TO", "pop": 8941, "cattle": 112641, "soy": 0, "in_arco": false}, {"id": "5103254", "name": "Colniza", "uf": "MT", "pop": 25766, "cattle": 863182, "soy": 0, "in_arco": true}, {"id": "1100064", "name": "Colorado do Oeste", "uf": "RO", "pop": 15663, "cattle": 301612, "soy": 10000, "in_arco": false}, {"id": "5103205", "name": "Colíder", "uf": "MT", "pop": 31370, "cattle": 401742, "soy": 132165, "in_arco": false}, {"id": "1705557", "name": "Combinado", "uf": "TO", "pop": 4756, "cattle": 34851, "soy": 0, "in_arco": false}, {"id": "5103304", "name": "Comodoro", "uf": "MT", "pop": 18238, "cattle": 324305, "soy": 404430, "in_arco": false}, {"id": "1502707", "name": "Conceição do Araguaia", "uf": "PA", "pop": 44617, "cattle": 330962, "soy": 17582, "in_arco": false}, {"id": "2103554", "name": "Conceição do Lago-Açu", "uf": "MA", "pop": 14915, "cattle": 25599, "soy": 0, "in_arco": false}, {"id": "1705607", "name": "Conceição do Tocantins", "uf": "TO", "pop": 3887, "cattle": 54767, "soy": 992, "in_arco": false}, {"id": "1502756", "name": "Concórdia do Pará", "uf": "PA", "pop": 26881, "cattle": 14955, "soy": 0, "in_arco": false}, {"id": "5103353", "name": "Confresa", "uf": "MT", "pop": 35075, "cattle": 399624, "soy": 200912, "in_arco": false}, {"id": "5103361", "name": "Conquista D'Oeste", "uf": "MT", "pop": 3760, "cattle": 79169, "soy": 44671, "in_arco": false}, {"id": "2103604", "name": "Coroatá", "uf": "MA", "pop": 59566, "cattle": 59590, "soy": 0, "in_arco": false}, {"id": "1100072", "name": "Corumbiara", "uf": "RO", "pop": 7519, "cattle": 348259, "soy": 160000, "in_arco": false}, {"id": "1100080", "name": "Costa Marques", "uf": "RO", "pop": 12627, "cattle": 329150, "soy": 11712, "in_arco": false}, {"id": "5103379", "name": "Cotriguaçu", "uf": "MT", "pop": 11011, "cattle": 456770, "soy": 13650, "in_arco": true}, {"id": "1706001", "name": "Couto Magalhães", "uf": "TO", "pop": 5331, "cattle": 72510, "soy": 46893, "in_arco": false}, {"id": "1706100", "name": "Cristalândia", "uf": "TO", "pop": 6371, "cattle": 82344, "soy": 39690, "in_arco": false}, {"id": "1706258", "name": "Crixás do Tocantins", "uf": "TO", "pop": 1470, "cattle": 53532, "soy": 17226, "in_arco": false}, {"id": "1200203", "name": "Cruzeiro do Sul", "uf": "AC", "pop": 91888, "cattle": 50860, "soy": 0, "in_arco": false}, {"id": "5103403", "name": "Cuiabá", "uf": "MT", "pop": 650877, "cattle": 128181, "soy": 2686, "in_arco": false}, {"id": "1100940", "name": "Cujubim", "uf": "RO", "pop": 14863, "cattle": 298121, "soy": 83271, "in_arco": true}, {"id": "1502764", "name": "Cumaru do Norte", "uf": "PA", "pop": 14036, "cattle": 690442, "soy": 43660, "in_arco": true}, {"id": "1502772", "name": "Curionópolis", "uf": "PA", "pop": 19950, "cattle": 262700, "soy": 0, "in_arco": false}, {"id": "1502806", "name": "Curralinho", "uf": "PA", "pop": 33903, "cattle": 45, "soy": 0, "in_arco": false}, {"id": "2103703", "name": "Cururupu", "uf": "MA", "pop": 31558, "cattle": 1777, "soy": 0, "in_arco": false}, {"id": "1502855", "name": "Curuá", "uf": "PA", "pop": 14117, "cattle": 49181, "soy": 0, "in_arco": false}, {"id": "1502905", "name": "Curuçá", "uf": "PA", "pop": 41262, "cattle": 2980, "soy": 0, "in_arco": false}, {"id": "5103437", "name": "Curvelândia", "uf": "MT", "pop": 4903, "cattle": 65354, "soy": 0, "in_arco": false}, {"id": "1600212", "name": "Cutias", "uf": "AP", "pop": 4461, "cattle": 1615, "soy": 0, "in_arco": false}, {"id": "5102504", "name": "Cáceres", "uf": "MT", "pop": 89681, "cattle": 1399931, "soy": 50544, "in_arco": false}, {"id": "2102606", "name": "Cândido Mendes", "uf": "MA", "pop": 19932, "cattle": 7959, "soy": 0, "in_arco": false}, {"id": "1706506", "name": "Darcinópolis", "uf": "TO", "pop": 5827, "cattle": 32110, "soy": 30186, "in_arco": false}, {"id": "2103752", "name": "Davinópolis", "uf": "MA", "pop": 14404, "cattle": 28174, "soy": 0, "in_arco": false}, {"id": "5103452", "name": "Denise", "uf": "MT", "pop": 7014, "cattle": 69644, "soy": 30025, "in_arco": false}, {"id": "5103502", "name": "Diamantino", "uf": "MT", "pop": 21941, "cattle": 122583, "soy": 1675562, "in_arco": false}, {"id": "1707009", "name": "Dianópolis", "uf": "TO", "pop": 17739, "cattle": 64154, "soy": 53027, "in_arco": false}, {"id": "1707108", "name": "Divinópolis do Tocantins", "uf": "TO", "pop": 7024, "cattle": 145993, "soy": 70458, "in_arco": false}, {"id": "1707207", "name": "Dois Irmãos do Tocantins", "uf": "TO", "pop": 6327, "cattle": 218504, "soy": 39633, "in_arco": false}, {"id": "5103601", "name": "Dom Aquino", "uf": "MT", "pop": 7872, "cattle": 131933, "soy": 151200, "in_arco": false}, {"id": "1502939", "name": "Dom Eliseu", "uf": "PA", "pop": 58484, "cattle": 88704, "soy": 527000, "in_arco": false}, {"id": "2103802", "name": "Dom Pedro", "uf": "MA", "pop": 23053, "cattle": 20678, "soy": 0, "in_arco": false}, {"id": "1707306", "name": "Dueré", "uf": "TO", "pop": 4248, "cattle": 207190, "soy": 17840, "in_arco": false}, {"id": "2103901", "name": "Duque Bacelar", "uf": "MA", "pop": 10223, "cattle": 4429, "soy": 0, "in_arco": false}, {"id": "1301407", "name": "Eirunepé", "uf": "AM", "pop": 33170, "cattle": 13606, "soy": 0, "in_arco": false}, {"id": "1502954", "name": "Eldorado do Carajás", "uf": "PA", "pop": 28192, "cattle": 417000, "soy": 0, "in_arco": false}, {"id": "1301506", "name": "Envira", "uf": "AM", "pop": 17186, "cattle": 36121, "soy": 0, "in_arco": false}, {"id": "1200252", "name": "Epitaciolândia", "uf": "AC", "pop": 18757, "cattle": 182196, "soy": 1319, "in_arco": false}, {"id": "1707405", "name": "Esperantina", "uf": "TO", "pop": 7530, "cattle": 27978, "soy": 0, "in_arco": false}, {"id": "2104008", "name": "Esperantinópolis", "uf": "MA", "pop": 18311, "cattle": 30746, "soy": 0, "in_arco": false}, {"id": "1100098", "name": "Espigão D'Oeste", "uf": "RO", "pop": 29414, "cattle": 449318, "soy": 5580, "in_arco": false}, {"id": "2104057", "name": "Estreito", "uf": "MA", "pop": 33294, "cattle": 189558, "soy": 18444, "in_arco": false}, {"id": "1503002", "name": "Faro", "uf": "PA", "pop": 8728, "cattle": 4491, "soy": 0, "in_arco": false}, {"id": "1200302", "name": "Feijó", "uf": "AC", "pop": 35426, "cattle": 247854, "soy": 0, "in_arco": true}, {"id": "2104073", "name": "Feira Nova do Maranhão", "uf": "MA", "pop": 8048, "cattle": 87120, "soy": 5110, "in_arco": false}, {"id": "5103700", "name": "Feliz Natal", "uf": "MT", "pop": 10521, "cattle": 38168, "soy": 566443, "in_arco": true}, {"id": "2104081", "name": "Fernando Falcão", "uf": "MA", "pop": 10873, "cattle": 20984, "soy": 32402, "in_arco": false}, {"id": "1600238", "name": "Ferreira Gomes", "uf": "AP", "pop": 6666, "cattle": 615, "soy": 1988, "in_arco": false}, {"id": "1707652", "name": "Figueirópolis", "uf": "TO", "pop": 5211, "cattle": 105190, "soy": 95768, "in_arco": false}, {"id": "5103809", "name": "Figueirópolis D'Oeste", "uf": "MT", "pop": 3187, "cattle": 173970, "soy": 2302, "in_arco": false}, {"id": "1707702", "name": "Filadélfia", "uf": "TO", "pop": 7712, "cattle": 119503, "soy": 0, "in_arco": false}, {"id": "1503044", "name": "Floresta do Araguaia", "uf": "PA", "pop": 17898, "cattle": 248613, "soy": 25250, "in_arco": false}, {"id": "1301605", "name": "Fonte Boa", "uf": "AM", "pop": 25871, "cattle": 2520, "soy": 0, "in_arco": false}, {"id": "2104099", "name": "Formosa da Serra Negra", "uf": "MA", "pop": 17719, "cattle": 189800, "soy": 0, "in_arco": false}, {"id": "1708205", "name": "Formoso do Araguaia", "uf": "TO", "pop": 18881, "cattle": 328190, "soy": 23796, "in_arco": false}, {"id": "2104107", "name": "Fortaleza dos Nogueiras", "uf": "MA", "pop": 12640, "cattle": 99975, "soy": 52654, "in_arco": false}, {"id": "2104206", "name": "Fortuna", "uf": "MA", "pop": 16976, "cattle": 34032, "soy": 8042, "in_arco": false}, {"id": "1707553", "name": "Fátima", "uf": "TO", "pop": 3467, "cattle": 27760, "soy": 13466, "in_arco": false}, {"id": "1503077", "name": "Garrafão do Norte", "uf": "PA", "pop": 24703, "cattle": 67875, "soy": 0, "in_arco": false}, {"id": "5103858", "name": "Gaúcha do Norte", "uf": "MT", "pop": 8642, "cattle": 206381, "soy": 678600, "in_arco": false}, {"id": "5103908", "name": "General Carneiro", "uf": "MT", "pop": 6037, "cattle": 101299, "soy": 247619, "in_arco": false}, {"id": "5103957", "name": "Glória D'Oeste", "uf": "MT", "pop": 2905, "cattle": 119729, "soy": 0, "in_arco": false}, {"id": "2104305", "name": "Godofredo Viana", "uf": "MA", "pop": 10186, "cattle": 2381, "soy": 0, "in_arco": false}, {"id": "1708304", "name": "Goianorte", "uf": "TO", "pop": 4738, "cattle": 118607, "soy": 27921, "in_arco": false}, {"id": "1503093", "name": "Goianésia do Pará", "uf": "PA", "pop": 26362, "cattle": 314499, "soy": 0, "in_arco": false}, {"id": "1709005", "name": "Goiatins", "uf": "TO", "pop": 12433, "cattle": 94078, "soy": 74280, "in_arco": false}, {"id": "2104404", "name": "Gonçalves Dias", "uf": "MA", "pop": 17206, "cattle": 46225, "soy": 0, "in_arco": false}, {"id": "2104503", "name": "Governador Archer", "uf": "MA", "pop": 10231, "cattle": 33752, "soy": 0, "in_arco": false}, {"id": "2104552", "name": "Governador Edison Lobão", "uf": "MA", "pop": 18411, "cattle": 45803, "soy": 0, "in_arco": false}, {"id": "2104602", "name": "Governador Eugênio Barros", "uf": "MA", "pop": 13930, "cattle": 35221, "soy": 14091, "in_arco": false}, {"id": "1101005", "name": "Governador Jorge Teixeira", "uf": "RO", "pop": 8001, "cattle": 358344, "soy": 0, "in_arco": false}, {"id": "2104628", "name": "Governador Luiz Rocha", "uf": "MA", "pop": 7063, "cattle": 17278, "soy": 15084, "in_arco": false}, {"id": "2104651", "name": "Governador Newton Bello", "uf": "MA", "pop": 10713, "cattle": 70453, "soy": 0, "in_arco": false}, {"id": "2104677", "name": "Governador Nunes Freire", "uf": "MA", "pop": 23128, "cattle": 29163, "soy": 0, "in_arco": false}, {"id": "2104800", "name": "Grajaú", "uf": "MA", "pop": 73872, "cattle": 227831, "soy": 123702, "in_arco": false}, {"id": "2104701", "name": "Graça Aranha", "uf": "MA", "pop": 6023, "cattle": 10234, "soy": 0, "in_arco": false}, {"id": "1301654", "name": "Guajará", "uf": "AM", "pop": 13815, "cattle": 50363, "soy": 0, "in_arco": false}, {"id": "1100106", "name": "Guajará-Mirim", "uf": "RO", "pop": 39387, "cattle": 172219, "soy": 15841, "in_arco": false}, {"id": "5104104", "name": "Guarantã do Norte", "uf": "MT", "pop": 31024, "cattle": 347789, "soy": 87582, "in_arco": false}, {"id": "1709302", "name": "Guaraí", "uf": "TO", "pop": 24775, "cattle": 154006, "soy": 36546, "in_arco": false}, {"id": "2104909", "name": "Guimarães", "uf": "MA", "pop": 10290, "cattle": 2229, "soy": 0, "in_arco": false}, {"id": "5104203", "name": "Guiratinga", "uf": "MT", "pop": 10966, "cattle": 165818, "soy": 258638, "in_arco": false}, {"id": "1709500", "name": "Gurupi", "uf": "TO", "pop": 85125, "cattle": 128949, "soy": 76655, "in_arco": false}, {"id": "1503101", "name": "Gurupá", "uf": "PA", "pop": 31786, "cattle": 1200, "soy": 0, "in_arco": false}, {"id": "1301704", "name": "Humaitá", "uf": "AM", "pop": 57473, "cattle": 42317, "soy": 18000, "in_arco": true}, {"id": "2105005", "name": "Humberto de Campos", "uf": "MA", "pop": 25680, "cattle": 1798, "soy": 0, "in_arco": false}, {"id": "2105104", "name": "Icatu", "uf": "MA", "pop": 24794, "cattle": 754, "soy": 0, "in_arco": false}, {"id": "2105203", "name": "Igarapé Grande", "uf": "MA", "pop": 10231, "cattle": 39335, "soy": 0, "in_arco": false}, {"id": "2105153", "name": "Igarapé do Meio", "uf": "MA", "pop": 13974, "cattle": 28917, "soy": 0, "in_arco": false}, {"id": "1503200", "name": "Igarapé-Açu", "uf": "PA", "pop": 35797, "cattle": 23274, "soy": 0, "in_arco": false}, {"id": "1503309", "name": "Igarapé-Miri", "uf": "PA", "pop": 64831, "cattle": 2500, "soy": 0, "in_arco": false}, {"id": "2105302", "name": "Imperatriz", "uf": "MA", "pop": 273110, "cattle": 101055, "soy": 0, "in_arco": false}, {"id": "5104500", "name": "Indiavaí", "uf": "MT", "pop": 2213, "cattle": 103516, "soy": 0, "in_arco": false}, {"id": "1503408", "name": "Inhangapi", "uf": "PA", "pop": 10325, "cattle": 12862, "soy": 0, "in_arco": false}, {"id": "5104526", "name": "Ipiranga do Norte", "uf": "MT", "pop": 7815, "cattle": 21090, "soy": 862512, "in_arco": false}, {"id": "1301803", "name": "Ipixuna", "uf": "AM", "pop": 24311, "cattle": 21123, "soy": 0, "in_arco": false}, {"id": "1503457", "name": "Ipixuna do Pará", "uf": "PA", "pop": 30329, "cattle": 130492, "soy": 24800, "in_arco": false}, {"id": "1709807", "name": "Ipueiras", "uf": "TO", "pop": 1590, "cattle": 28226, "soy": 21122, "in_arco": false}, {"id": "1400282", "name": "Iracema", "uf": "RR", "pop": 10023, "cattle": 102210, "soy": 13247, "in_arco": false}, {"id": "1301852", "name": "Iranduba", "uf": "AM", "pop": 61163, "cattle": 6215, "soy": 0, "in_arco": false}, {"id": "1503507", "name": "Irituia", "uf": "PA", "pop": 30955, "cattle": 78311, "soy": 0, "in_arco": false}, {"id": "1710508", "name": "Itacajá", "uf": "TO", "pop": 6819, "cattle": 101359, "soy": 38400, "in_arco": false}, {"id": "1301902", "name": "Itacoatiara", "uf": "AM", "pop": 103598, "cattle": 48222, "soy": 0, "in_arco": false}, {"id": "1710706", "name": "Itaguatins", "uf": "TO", "pop": 5172, "cattle": 61536, "soy": 0, "in_arco": false}, {"id": "2105351", "name": "Itaipava do Grajaú", "uf": "MA", "pop": 13828, "cattle": 37096, "soy": 0, "in_arco": false}, {"id": "1503606", "name": "Itaituba", "uf": "PA", "pop": 123314, "cattle": 402848, "soy": 0, "in_arco": true}, {"id": "1301951", "name": "Itamarati", "uf": "AM", "pop": 10937, "cattle": 1195, "soy": 0, "in_arco": false}, {"id": "5104542", "name": "Itanhangá", "uf": "MT", "pop": 7539, "cattle": 60539, "soy": 450000, "in_arco": false}, {"id": "2105401", "name": "Itapecuru Mirim", "uf": "MA", "pop": 60440, "cattle": 17282, "soy": 0, "in_arco": false}, {"id": "1302009", "name": "Itapiranga", "uf": "AM", "pop": 10162, "cattle": 3520, "soy": 0, "in_arco": false}, {"id": "1710904", "name": "Itapiratins", "uf": "TO", "pop": 3577, "cattle": 65265, "soy": 43317, "in_arco": false}, {"id": "1711100", "name": "Itaporã do Tocantins", "uf": "TO", "pop": 2404, "cattle": 123633, "soy": 0, "in_arco": false}, {"id": "1101104", "name": "Itapuã do Oeste", "uf": "RO", "pop": 8548, "cattle": 103825, "soy": 79703, "in_arco": false}, {"id": "1600253", "name": "Itaubal", "uf": "AP", "pop": 5599, "cattle": 923, "soy": 0, "in_arco": false}, {"id": "5104559", "name": "Itaúba", "uf": "MT", "pop": 5020, "cattle": 75200, "soy": 304838, "in_arco": false}, {"id": "2105427", "name": "Itinga do Maranhão", "uf": "MA", "pop": 22513, "cattle": 163021, "soy": 119969, "in_arco": false}, {"id": "5104609", "name": "Itiquira", "uf": "MT", "pop": 12236, "cattle": 390608, "soy": 806400, "in_arco": false}, {"id": "1503705", "name": "Itupiranga", "uf": "PA", "pop": 49754, "cattle": 728600, "soy": 0, "in_arco": false}, {"id": "1503754", "name": "Jacareacanga", "uf": "PA", "pop": 24042, "cattle": 95790, "soy": 0, "in_arco": true}, {"id": "5104807", "name": "Jaciara", "uf": "MT", "pop": 28569, "cattle": 107153, "soy": 263655, "in_arco": false}, {"id": "1503804", "name": "Jacundá", "uf": "PA", "pop": 37707, "cattle": 182800, "soy": 0, "in_arco": false}, {"id": "5104906", "name": "Jangada", "uf": "MT", "pop": 7426, "cattle": 56571, "soy": 14368, "in_arco": false}, {"id": "1302108", "name": "Japurá", "uf": "AM", "pop": 8858, "cattle": 823, "soy": 0, "in_arco": false}, {"id": "1100114", "name": "Jaru", "uf": "RO", "pop": 50591, "cattle": 627467, "soy": 1045, "in_arco": true}, {"id": "2105450", "name": "Jatobá", "uf": "MA", "pop": 7471, "cattle": 21080, "soy": 1615, "in_arco": false}, {"id": "5105002", "name": "Jauru", "uf": "MT", "pop": 8367, "cattle": 252914, "soy": 0, "in_arco": false}, {"id": "1711506", "name": "Jaú do Tocantins", "uf": "TO", "pop": 3334, "cattle": 124937, "soy": 7798, "in_arco": false}, {"id": "2105476", "name": "Jenipapo dos Vieiras", "uf": "MA", "pop": 17076, "cattle": 85201, "soy": 960, "in_arco": false}, {"id": "1100122", "name": "Ji-Paraná", "uf": "RO", "pop": 124333, "cattle": 471299, "soy": 1741, "in_arco": true}, {"id": "1200328", "name": "Jordão", "uf": "AC", "pop": 9222, "cattle": 15057, "soy": 0, "in_arco": false}, {"id": "2105609", "name": "Joselândia", "uf": "MA", "pop": 14924, "cattle": 21430, "soy": 0, "in_arco": false}, {"id": "2105500", "name": "João Lisboa", "uf": "MA", "pop": 24709, "cattle": 113920, "soy": 920, "in_arco": false}, {"id": "5105101", "name": "Juara", "uf": "MT", "pop": 34906, "cattle": 963851, "soy": 392777, "in_arco": true}, {"id": "1711803", "name": "Juarina", "uf": "TO", "pop": 2243, "cattle": 35150, "soy": 4323, "in_arco": false}, {"id": "2105658", "name": "Junco do Maranhão", "uf": "MA", "pop": 5146, "cattle": 29795, "soy": 0, "in_arco": false}, {"id": "5105176", "name": "Juruena", "uf": "MT", "pop": 10213, "cattle": 226687, "soy": 6750, "in_arco": false}, {"id": "1503903", "name": "Juruti", "uf": "PA", "pop": 50881, "cattle": 49910, "soy": 0, "in_arco": false}, {"id": "1302207", "name": "Juruá", "uf": "AM", "pop": 10742, "cattle": 787, "soy": 0, "in_arco": false}, {"id": "5105200", "name": "Juscimeira", "uf": "MT", "pop": 11480, "cattle": 199668, "soy": 139392, "in_arco": false}, {"id": "1302306", "name": "Jutaí", "uf": "AM", "pop": 25172, "cattle": 827, "soy": 0, "in_arco": false}, {"id": "5105150", "name": "Juína", "uf": "MT", "pop": 45869, "cattle": 827774, "soy": 109670, "in_arco": true}, {"id": "2105906", "name": "Lago Verde", "uf": "MA", "pop": 14769, "cattle": 53917, "soy": 0, "in_arco": false}, {"id": "2105708", "name": "Lago da Pedra", "uf": "MA", "pop": 44403, "cattle": 104379, "soy": 24600, "in_arco": false}, {"id": "2105807", "name": "Lago do Junco", "uf": "MA", "pop": 9506, "cattle": 27005, "soy": 0, "in_arco": false}, {"id": "2105948", "name": "Lago dos Rodrigues", "uf": "MA", "pop": 8758, "cattle": 19061, "soy": 0, "in_arco": false}, {"id": "2105963", "name": "Lagoa Grande do Maranhão", "uf": "MA", "pop": 11411, "cattle": 42720, "soy": 0, "in_arco": false}, {"id": "1711902", "name": "Lagoa da Confusão", "uf": "TO", "pop": 15288, "cattle": 143915, "soy": 149240, "in_arco": false}, {"id": "2105922", "name": "Lagoa do Mato", "uf": "MA", "pop": 10572, "cattle": 31966, "soy": 14367, "in_arco": false}, {"id": "1711951", "name": "Lagoa do Tocantins", "uf": "TO", "pop": 3516, "cattle": 21068, "soy": 11120, "in_arco": false}, {"id": "1712009", "name": "Lajeado", "uf": "TO", "pop": 3357, "cattle": 10315, "soy": 0, "in_arco": false}, {"id": "2105989", "name": "Lajeado Novo", "uf": "MA", "pop": 7057, "cattle": 66751, "soy": 2226, "in_arco": false}, {"id": "5105234", "name": "Lambari D'Oeste", "uf": "MT", "pop": 4790, "cattle": 177888, "soy": 2619, "in_arco": false}, {"id": "1600279", "name": "Laranjal do Jari", "uf": "AP", "pop": 35114, "cattle": 3010, "soy": 0, "in_arco": false}, {"id": "1712157", "name": "Lavandeira", "uf": "TO", "pop": 1626, "cattle": 32565, "soy": 0, "in_arco": false}, {"id": "2106003", "name": "Lima Campos", "uf": "MA", "pop": 11297, "cattle": 13088, "soy": 0, "in_arco": false}, {"id": "1504000", "name": "Limoeiro do Ajuru", "uf": "PA", "pop": 29569, "cattle": 0, "soy": 0, "in_arco": false}, {"id": "1712405", "name": "Lizarda", "uf": "TO", "pop": 2999, "cattle": 24397, "soy": 15000, "in_arco": false}, {"id": "2106102", "name": "Loreto", "uf": "MA", "pop": 11597, "cattle": 44940, "soy": 103428, "in_arco": false}, {"id": "5105259", "name": "Lucas do Rio Verde", "uf": "MT", "pop": 83798, "cattle": 53127, "soy": 895350, "in_arco": false}, {"id": "5105309", "name": "Luciara", "uf": "MT", "pop": 2509, "cattle": 71816, "soy": 31785, "in_arco": false}, {"id": "1712454", "name": "Luzinópolis", "uf": "TO", "pop": 2717, "cattle": 11308, "soy": 1080, "in_arco": false}, {"id": "2106201", "name": "Luís Domingues", "uf": "MA", "pop": 7161, "cattle": 4503, "soy": 0, "in_arco": false}, {"id": "1302405", "name": "Lábrea", "uf": "AM", "pop": 45448, "cattle": 652247, "soy": 0, "in_arco": true}, {"id": "1600303", "name": "Macapá", "uf": "AP", "pop": 442933, "cattle": 7103, "soy": 14466, "in_arco": false}, {"id": "1100130", "name": "Machadinho D'Oeste", "uf": "RO", "pop": 30707, "cattle": 546726, "soy": 70069, "in_arco": true}, {"id": "1504109", "name": "Magalhães Barata", "uf": "PA", "pop": 8115, "cattle": 1679, "soy": 0, "in_arco": false}, {"id": "2106300", "name": "Magalhães de Almeida", "uf": "MA", "pop": 13807, "cattle": 11397, "soy": 12432, "in_arco": false}, {"id": "1302504", "name": "Manacapuru", "uf": "AM", "pop": 101883, "cattle": 15942, "soy": 0, "in_arco": false}, {"id": "1302553", "name": "Manaquiri", "uf": "AM", "pop": 17107, "cattle": 10083, "soy": 0, "in_arco": false}, {"id": "1302603", "name": "Manaus", "uf": "AM", "pop": 2063689, "cattle": 4594, "soy": 0, "in_arco": false}, {"id": "1302702", "name": "Manicoré", "uf": "AM", "pop": 53914, "cattle": 179408, "soy": 0, "in_arco": true}, {"id": "1200344", "name": "Manoel Urbano", "uf": "AC", "pop": 11996, "cattle": 122593, "soy": 0, "in_arco": false}, {"id": "1504208", "name": "Marabá", "uf": "PA", "pop": 266533, "cattle": 1305000, "soy": 1628, "in_arco": false}, {"id": "1504307", "name": "Maracanã", "uf": "PA", "pop": 25971, "cattle": 3622, "soy": 0, "in_arco": false}, {"id": "2106326", "name": "Maracaçumé", "uf": "MA", "pop": 21149, "cattle": 24320, "soy": 0, "in_arco": false}, {"id": "2106359", "name": "Marajá do Sena", "uf": "MA", "pop": 7027, "cattle": 56351, "soy": 10741, "in_arco": false}, {"id": "2106375", "name": "Maranhãozinho", "uf": "MA", "pop": 13761, "cattle": 40431, "soy": 0, "in_arco": false}, {"id": "1504406", "name": "Marapanim", "uf": "PA", "pop": 26573, "cattle": 4808, "soy": 0, "in_arco": false}, {"id": "1302801", "name": "Maraã", "uf": "AM", "pop": 15529, "cattle": 845, "soy": 0, "in_arco": false}, {"id": "5105580", "name": "Marcelândia", "uf": "MT", "pop": 11396, "cattle": 219490, "soy": 425223, "in_arco": true}, {"id": "1200351", "name": "Marechal Thaumaturgo", "uf": "AC", "pop": 17093, "cattle": 17051, "soy": 0, "in_arco": false}, {"id": "1712504", "name": "Marianópolis do Tocantins", "uf": "TO", "pop": 4615, "cattle": 77830, "soy": 120946, "in_arco": false}, {"id": "1504422", "name": "Marituba", "uf": "PA", "pop": 111785, "cattle": 58, "soy": 0, "in_arco": false}, {"id": "2106409", "name": "Mata Roma", "uf": "MA", "pop": 17090, "cattle": 2215, "soy": 26400, "in_arco": false}, {"id": "1712702", "name": "Mateiros", "uf": "TO", "pop": 2748, "cattle": 15939, "soy": 181440, "in_arco": false}, {"id": "2106508", "name": "Matinha", "uf": "MA", "pop": 22034, "cattle": 21501, "soy": 0, "in_arco": false}, {"id": "5105606", "name": "Matupá", "uf": "MT", "pop": 20091, "cattle": 234667, "soy": 210000, "in_arco": false}, {"id": "2106607", "name": "Matões", "uf": "MA", "pop": 32174, "cattle": 23392, "soy": 27000, "in_arco": false}, {"id": "2106631", "name": "Matões do Norte", "uf": "MA", "pop": 17432, "cattle": 17373, "soy": 0, "in_arco": false}, {"id": "1712801", "name": "Maurilândia do Tocantins", "uf": "TO", "pop": 3095, "cattle": 25835, "soy": 0, "in_arco": false}, {"id": "1302900", "name": "Maués", "uf": "AM", "pop": 61204, "cattle": 9876, "soy": 0, "in_arco": false}, {"id": "1600402", "name": "Mazagão", "uf": "AP", "pop": 21924, "cattle": 908, "soy": 0, "in_arco": false}, {"id": "1504455", "name": "Medicilândia", "uf": "PA", "pop": 27094, "cattle": 219535, "soy": 0, "in_arco": true}, {"id": "1504505", "name": "Melgaço", "uf": "PA", "pop": 27881, "cattle": 1150, "soy": 0, "in_arco": false}, {"id": "2106672", "name": "Milagres do Maranhão", "uf": "MA", "pop": 8818, "cattle": 3090, "soy": 13520, "in_arco": false}, {"id": "1101203", "name": "Ministro Andreazza", "uf": "RO", "pop": 6466, "cattle": 161374, "soy": 0, "in_arco": false}, {"id": "1713205", "name": "Miracema do Tocantins", "uf": "TO", "pop": 18566, "cattle": 169773, "soy": 50545, "in_arco": false}, {"id": "2106706", "name": "Mirador", "uf": "MA", "pop": 21030, "cattle": 66716, "soy": 87108, "in_arco": false}, {"id": "2106755", "name": "Miranda do Norte", "uf": "MA", "pop": 23864, "cattle": 23649, "soy": 0, "in_arco": false}, {"id": "1713304", "name": "Miranorte", "uf": "TO", "pop": 12701, "cattle": 104582, "soy": 42600, "in_arco": false}, {"id": "1101302", "name": "Mirante da Serra", "uf": "RO", "pop": 9235, "cattle": 147927, "soy": 3537, "in_arco": false}, {"id": "5105622", "name": "Mirassol d'Oeste", "uf": "MT", "pop": 26785, "cattle": 188979, "soy": 1152, "in_arco": false}, {"id": "2106805", "name": "Mirinzal", "uf": "MA", "pop": 13978, "cattle": 2590, "soy": 0, "in_arco": false}, {"id": "1504604", "name": "Mocajuba", "uf": "PA", "pop": 27198, "cattle": 1201, "soy": 0, "in_arco": false}, {"id": "1504703", "name": "Moju", "uf": "PA", "pop": 84094, "cattle": 86000, "soy": 0, "in_arco": false}, {"id": "1504752", "name": "Mojuí dos Campos", "uf": "PA", "pop": 23501, "cattle": 23132, "soy": 175000, "in_arco": false}, {"id": "1504802", "name": "Monte Alegre", "uf": "PA", "pop": 60012, "cattle": 312243, "soy": 0, "in_arco": false}, {"id": "1101401", "name": "Monte Negro", "uf": "RO", "pop": 11548, "cattle": 411890, "soy": 0, "in_arco": false}, {"id": "1713700", "name": "Monte Santo do Tocantins", "uf": "TO", "pop": 2396, "cattle": 100353, "soy": 8745, "in_arco": false}, {"id": "1713601", "name": "Monte do Carmo", "uf": "TO", "pop": 5694, "cattle": 95742, "soy": 149908, "in_arco": false}, {"id": "2107001", "name": "Montes Altos", "uf": "MA", "pop": 9106, "cattle": 64611, "soy": 0, "in_arco": false}, {"id": "2106904", "name": "Monção", "uf": "MA", "pop": 27751, "cattle": 40235, "soy": 0, "in_arco": false}, {"id": "2107100", "name": "Morros", "uf": "MA", "pop": 18554, "cattle": 1399, "soy": 0, "in_arco": false}, {"id": "1504901", "name": "Muaná", "uf": "PA", "pop": 45368, "cattle": 6090, "soy": 0, "in_arco": false}, {"id": "1400308", "name": "Mucajaí", "uf": "RR", "pop": 18095, "cattle": 199940, "soy": 17676, "in_arco": false}, {"id": "1713957", "name": "Muricilândia", "uf": "TO", "pop": 3367, "cattle": 88305, "soy": 3115, "in_arco": false}, {"id": "1200336", "name": "Mâncio Lima", "uf": "AC", "pop": 19294, "cattle": 26288, "soy": 0, "in_arco": false}, {"id": "1504059", "name": "Mãe do Rio", "uf": "PA", "pop": 34353, "cattle": 45858, "soy": 0, "in_arco": false}, {"id": "1714203", "name": "Natividade", "uf": "TO", "pop": 8754, "cattle": 109404, "soy": 17690, "in_arco": false}, {"id": "1714302", "name": "Nazaré", "uf": "TO", "pop": 4521, "cattle": 30513, "soy": 0, "in_arco": false}, {"id": "1303007", "name": "Nhamundá", "uf": "AM", "pop": 20136, "cattle": 21568, "soy": 0, "in_arco": false}, {"id": "2107209", "name": "Nina Rodrigues", "uf": "MA", "pop": 14176, "cattle": 2092, "soy": 0, "in_arco": false}, {"id": "5105903", "name": "Nobres", "uf": "MT", "pop": 15492, "cattle": 118053, "soy": 198360, "in_arco": false}, {"id": "1400407", "name": "Normandia", "uf": "RR", "pop": 13986, "cattle": 18441, "soy": 0, "in_arco": false}, {"id": "5106000", "name": "Nortelândia", "uf": "MT", "pop": 5956, "cattle": 61194, "soy": 124200, "in_arco": false}, {"id": "5106109", "name": "Nossa Senhora do Livramento", "uf": "MT", "pop": 12940, "cattle": 246573, "soy": 20185, "in_arco": false}, {"id": "5106158", "name": "Nova Bandeirantes", "uf": "MT", "pop": 13635, "cattle": 674937, "soy": 43132, "in_arco": true}, {"id": "5106208", "name": "Nova Brasilândia", "uf": "MT", "pop": 3932, "cattle": 154168, "soy": 72782, "in_arco": false}, {"id": "1100148", "name": "Nova Brasilândia D'Oeste", "uf": "RO", "pop": 15679, "cattle": 265557, "soy": 5237, "in_arco": false}, {"id": "5106216", "name": "Nova Canaã do Norte", "uf": "MT", "pop": 11707, "cattle": 424411, "soy": 270217, "in_arco": false}, {"id": "2107258", "name": "Nova Colinas", "uf": "MA", "pop": 5021, "cattle": 42538, "soy": 6315, "in_arco": false}, {"id": "1504950", "name": "Nova Esperança do Piriá", "uf": "PA", "pop": 20478, "cattle": 62282, "soy": 0, "in_arco": false}, {"id": "5108808", "name": "Nova Guarita", "uf": "MT", "pop": 4590, "cattle": 153490, "soy": 70744, "in_arco": false}, {"id": "2107308", "name": "Nova Iorque", "uf": "MA", "pop": 4320, "cattle": 12925, "soy": 1494, "in_arco": false}, {"id": "1504976", "name": "Nova Ipixuna", "uf": "PA", "pop": 13955, "cattle": 132000, "soy": 0, "in_arco": false}, {"id": "5106182", "name": "Nova Lacerda", "uf": "MT", "pop": 6670, "cattle": 242911, "soy": 179477, "in_arco": false}, {"id": "1100338", "name": "Nova Mamoré", "uf": "RO", "pop": 25444, "cattle": 1042736, "soy": 31425, "in_arco": true}, {"id": "5108857", "name": "Nova Marilândia", "uf": "MT", "pop": 3529, "cattle": 144472, "soy": 26168, "in_arco": false}, {"id": "5108907", "name": "Nova Maringá", "uf": "MT", "pop": 5846, "cattle": 90192, "soy": 828000, "in_arco": true}, {"id": "5108956", "name": "Nova Monte Verde", "uf": "MT", "pop": 8313, "cattle": 397209, "soy": 94208, "in_arco": true}, {"id": "5106224", "name": "Nova Mutum", "uf": "MT", "pop": 55839, "cattle": 125887, "soy": 1529300, "in_arco": false}, {"id": "5106174", "name": "Nova Nazaré", "uf": "MT", "pop": 4200, "cattle": 91761, "soy": 89640, "in_arco": false}, {"id": "1714880", "name": "Nova Olinda", "uf": "TO", "pop": 10367, "cattle": 100414, "soy": 1502, "in_arco": false}, {"id": "2107357", "name": "Nova Olinda do Maranhão", "uf": "MA", "pop": 14314, "cattle": 38344, "soy": 0, "in_arco": false}, {"id": "1303106", "name": "Nova Olinda do Norte", "uf": "AM", "pop": 27062, "cattle": 9100, "soy": 0, "in_arco": false}, {"id": "5106232", "name": "Nova Olímpia", "uf": "MT", "pop": 16352, "cattle": 93058, "soy": 12715, "in_arco": false}, {"id": "1715002", "name": "Nova Rosalândia", "uf": "TO", "pop": 3362, "cattle": 21728, "soy": 28451, "in_arco": false}, {"id": "5106190", "name": "Nova Santa Helena", "uf": "MT", "pop": 4239, "cattle": 109575, "soy": 136226, "in_arco": false}, {"id": "1505007", "name": "Nova Timboteua", "uf": "PA", "pop": 12806, "cattle": 23598, "soy": 0, "in_arco": false}, {"id": "5106240", "name": "Nova Ubiratã", "uf": "MT", "pop": 11530, "cattle": 115310, "soy": 1510320, "in_arco": false}, {"id": "1101435", "name": "Nova União", "uf": "RO", "pop": 6200, "cattle": 173525, "soy": 466, "in_arco": false}, {"id": "5106257", "name": "Nova Xavantina", "uf": "MT", "pop": 24345, "cattle": 387450, "soy": 252000, "in_arco": false}, {"id": "1715101", "name": "Novo Acordo", "uf": "TO", "pop": 3969, "cattle": 17957, "soy": 22365, "in_arco": false}, {"id": "1303205", "name": "Novo Airão", "uf": "AM", "pop": 15761, "cattle": 495, "soy": 0, "in_arco": false}, {"id": "1715150", "name": "Novo Alegre", "uf": "TO", "pop": 1846, "cattle": 28082, "soy": 0, "in_arco": false}, {"id": "1303304", "name": "Novo Aripuanã", "uf": "AM", "pop": 23818, "cattle": 95660, "soy": 0, "in_arco": true}, {"id": "5106273", "name": "Novo Horizonte do Norte", "uf": "MT", "pop": 3349, "cattle": 109996, "soy": 34200, "in_arco": false}, {"id": "1100502", "name": "Novo Horizonte do Oeste", "uf": "RO", "pop": 7667, "cattle": 182407, "soy": 7600, "in_arco": false}, {"id": "1715259", "name": "Novo Jardim", "uf": "TO", "pop": 2230, "cattle": 17187, "soy": 1236, "in_arco": false}, {"id": "5106265", "name": "Novo Mundo", "uf": "MT", "pop": 6520, "cattle": 357822, "soy": 261223, "in_arco": true}, {"id": "1505031", "name": "Novo Progresso", "uf": "PA", "pop": 33638, "cattle": 764993, "soy": 91110, "in_arco": true}, {"id": "1505064", "name": "Novo Repartimento", "uf": "PA", "pop": 60732, "cattle": 1275779, "soy": 0, "in_arco": true}, {"id": "5106315", "name": "Novo Santo Antônio", "uf": "MT", "pop": 2015, "cattle": 85938, "soy": 7020, "in_arco": false}, {"id": "5106281", "name": "Novo São Joaquim", "uf": "MT", "pop": 6919, "cattle": 270445, "soy": 306306, "in_arco": false}, {"id": "1505205", "name": "Oeiras do Pará", "uf": "PA", "pop": 33844, "cattle": 6161, "soy": 0, "in_arco": false}, {"id": "1600501", "name": "Oiapoque", "uf": "AP", "pop": 27482, "cattle": 1728, "soy": 0, "in_arco": false}, {"id": "2107407", "name": "Olho d'Água das Cunhãs", "uf": "MA", "pop": 17919, "cattle": 76323, "soy": 0, "in_arco": false}, {"id": "2107456", "name": "Olinda Nova do Maranhão", "uf": "MA", "pop": 13577, "cattle": 7360, "soy": 0, "in_arco": false}, {"id": "1715507", "name": "Oliveira de Fátima", "uf": "TO", "pop": 1164, "cattle": 14871, "soy": 13356, "in_arco": false}, {"id": "1505304", "name": "Oriximiná", "uf": "PA", "pop": 68294, "cattle": 135547, "soy": 0, "in_arco": false}, {"id": "1505437", "name": "Ourilândia do Norte", "uf": "PA", "pop": 32467, "cattle": 241571, "soy": 0, "in_arco": false}, {"id": "1100155", "name": "Ouro Preto do Oeste", "uf": "RO", "pop": 35044, "cattle": 415696, "soy": 9933, "in_arco": false}, {"id": "1505403", "name": "Ourém", "uf": "PA", "pop": 17855, "cattle": 18567, "soy": 0, "in_arco": false}, {"id": "1505486", "name": "Pacajá", "uf": "PA", "pop": 41097, "cattle": 859069, "soy": 0, "in_arco": true}, {"id": "1400456", "name": "Pacaraima", "uf": "RR", "pop": 19305, "cattle": 18572, "soy": 0, "in_arco": false}, {"id": "1505494", "name": "Palestina do Pará", "uf": "PA", "pop": 6885, "cattle": 108500, "soy": 0, "in_arco": false}, {"id": "1721000", "name": "Palmas", "uf": "TO", "pop": 302692, "cattle": 40106, "soy": 44140, "in_arco": false}, {"id": "1715705", "name": "Palmeirante", "uf": "TO", "pop": 4798, "cattle": 81818, "soy": 28980, "in_arco": false}, {"id": "1713809", "name": "Palmeiras do Tocantins", "uf": "TO", "pop": 4872, "cattle": 42882, "soy": 900, "in_arco": false}, {"id": "2107605", "name": "Palmeirândia", "uf": "MA", "pop": 21059, "cattle": 5159, "soy": 0, "in_arco": false}, {"id": "1715754", "name": "Palmeirópolis", "uf": "TO", "pop": 6975, "cattle": 87918, "soy": 18591, "in_arco": false}, {"id": "1505502", "name": "Paragominas", "uf": "PA", "pop": 105550, "cattle": 375902, "soy": 841050, "in_arco": true}, {"id": "2107704", "name": "Paraibano", "uf": "MA", "pop": 18274, "cattle": 29583, "soy": 1931, "in_arco": false}, {"id": "5106307", "name": "Paranatinga", "uf": "MT", "pop": 26423, "cattle": 399258, "soy": 1115400, "in_arco": false}, {"id": "5106299", "name": "Paranaíta", "uf": "MT", "pop": 11671, "cattle": 494069, "soy": 101238, "in_arco": true}, {"id": "1716208", "name": "Paranã", "uf": "TO", "pop": 10542, "cattle": 253044, "soy": 1440, "in_arco": false}, {"id": "1505536", "name": "Parauapebas", "uf": "PA", "pop": 267836, "cattle": 130530, "soy": 0, "in_arco": false}, {"id": "1716109", "name": "Paraíso do Tocantins", "uf": "TO", "pop": 52360, "cattle": 122294, "soy": 9606, "in_arco": false}, {"id": "1101450", "name": "Parecis", "uf": "RO", "pop": 4125, "cattle": 203802, "soy": 17370, "in_arco": false}, {"id": "1303403", "name": "Parintins", "uf": "AM", "pop": 96372, "cattle": 48042, "soy": 0, "in_arco": false}, {"id": "2107803", "name": "Parnarama", "uf": "MA", "pop": 31250, "cattle": 93671, "soy": 39000, "in_arco": false}, {"id": "2107902", "name": "Passagem Franca", "uf": "MA", "pop": 17220, "cattle": 51350, "soy": 2610, "in_arco": false}, {"id": "2108009", "name": "Pastos Bons", "uf": "MA", "pop": 18802, "cattle": 32373, "soy": 29037, "in_arco": false}, {"id": "1505551", "name": "Pau D'Arco", "uf": "PA", "pop": 6931, "cattle": 112409, "soy": 4887, "in_arco": false}, {"id": "1716307", "name": "Pau D'Arco", "uf": "TO", "pop": 4043, "cattle": 93397, "soy": 0, "in_arco": false}, {"id": "1303502", "name": "Pauini", "uf": "AM", "pop": 19373, "cattle": 10800, "soy": 0, "in_arco": false}, {"id": "2108058", "name": "Paulino Neves", "uf": "MA", "pop": 17056, "cattle": 2954, "soy": 0, "in_arco": false}, {"id": "2108108", "name": "Paulo Ramos", "uf": "MA", "pop": 20341, "cattle": 62810, "soy": 0, "in_arco": false}, {"id": "2107506", "name": "Paço do Lumiar", "uf": "MA", "pop": 145643, "cattle": 659, "soy": 0, "in_arco": false}, {"id": "1600154", "name": "Pedra Branca do Amapari", "uf": "AP", "pop": 12847, "cattle": 924, "soy": 816, "in_arco": false}, {"id": "5106372", "name": "Pedra Preta", "uf": "MT", "pop": 18066, "cattle": 370140, "soy": 265300, "in_arco": false}, {"id": "2108207", "name": "Pedreiras", "uf": "MA", "pop": 37050, "cattle": 18463, "soy": 0, "in_arco": false}, {"id": "1716505", "name": "Pedro Afonso", "uf": "TO", "pop": 14055, "cattle": 30152, "soy": 67464, "in_arco": false}, {"id": "2108256", "name": "Pedro do Rosário", "uf": "MA", "pop": 24320, "cattle": 23567, "soy": 0, "in_arco": false}, {"id": "1716604", "name": "Peixe", "uf": "TO", "pop": 9317, "cattle": 287594, "soy": 184965, "in_arco": false}, {"id": "1505601", "name": "Peixe-Boi", "uf": "PA", "pop": 8285, "cattle": 17706, "soy": 0, "in_arco": false}, {"id": "5106422", "name": "Peixoto de Azevedo", "uf": "MT", "pop": 32714, "cattle": 386284, "soy": 194510, "in_arco": true}, {"id": "2108306", "name": "Penalva", "uf": "MA", "pop": 32511, "cattle": 15825, "soy": 0, "in_arco": false}, {"id": "1716653", "name": "Pequizeiro", "uf": "TO", "pop": 4921, "cattle": 107036, "soy": 6485, "in_arco": false}, {"id": "2108405", "name": "Peri Mirim", "uf": "MA", "pop": 11108, "cattle": 4083, "soy": 0, "in_arco": false}, {"id": "2108454", "name": "Peritoró", "uf": "MA", "pop": 20479, "cattle": 47320, "soy": 0, "in_arco": false}, {"id": "1100189", "name": "Pimenta Bueno", "uf": "RO", "pop": 35079, "cattle": 398047, "soy": 12535, "in_arco": false}, {"id": "1101468", "name": "Pimenteiras do Oeste", "uf": "RO", "pop": 2156, "cattle": 113773, "soy": 180000, "in_arco": false}, {"id": "2108504", "name": "Pindaré-Mirim", "uf": "MA", "pop": 31429, "cattle": 12553, "soy": 0, "in_arco": false}, {"id": "1717008", "name": "Pindorama do Tocantins", "uf": "TO", "pop": 4478, "cattle": 66278, "soy": 13616, "in_arco": false}, {"id": "2108603", "name": "Pinheiro", "uf": "MA", "pop": 84621, "cattle": 32771, "soy": 0, "in_arco": false}, {"id": "2108702", "name": "Pio XII", "uf": "MA", "pop": 21886, "cattle": 37672, "soy": 0, "in_arco": false}, {"id": "2108801", "name": "Pirapemas", "uf": "MA", "pop": 17714, "cattle": 13474, "soy": 0, "in_arco": false}, {"id": "1717206", "name": "Piraquê", "uf": "TO", "pop": 2282, "cattle": 107824, "soy": 14672, "in_arco": false}, {"id": "1717503", "name": "Pium", "uf": "TO", "pop": 7128, "cattle": 204749, "soy": 117026, "in_arco": false}, {"id": "1505635", "name": "Piçarra", "uf": "PA", "pop": 12832, "cattle": 398266, "soy": 0, "in_arco": false}, {"id": "1505650", "name": "Placas", "uf": "PA", "pop": 18668, "cattle": 206724, "soy": 3780, "in_arco": true}, {"id": "5106455", "name": "Planalto da Serra", "uf": "MT", "pop": 3166, "cattle": 92728, "soy": 155050, "in_arco": false}, {"id": "1200385", "name": "Plácido de Castro", "uf": "AC", "pop": 16560, "cattle": 324487, "soy": 16185, "in_arco": true}, {"id": "5106505", "name": "Poconé", "uf": "MT", "pop": 31217, "cattle": 605000, "soy": 42508, "in_arco": false}, {"id": "1505700", "name": "Ponta de Pedras", "uf": "PA", "pop": 24984, "cattle": 35100, "soy": 0, "in_arco": false}, {"id": "5106653", "name": "Pontal do Araguaia", "uf": "MT", "pop": 6932, "cattle": 117303, "soy": 9750, "in_arco": false}, {"id": "1717800", "name": "Ponte Alta do Bom Jesus", "uf": "TO", "pop": 4220, "cattle": 51618, "soy": 436, "in_arco": false}, {"id": "1717909", "name": "Ponte Alta do Tocantins", "uf": "TO", "pop": 7586, "cattle": 109613, "soy": 851, "in_arco": false}, {"id": "5106703", "name": "Ponte Branca", "uf": "MT", "pop": 2008, "cattle": 30310, "soy": 780, "in_arco": false}, {"id": "5106752", "name": "Pontes e Lacerda", "uf": "MT", "pop": 52018, "cattle": 709538, "soy": 174244, "in_arco": false}, {"id": "1505809", "name": "Portel", "uf": "PA", "pop": 62503, "cattle": 101533, "soy": 0, "in_arco": true}, {"id": "1200807", "name": "Porto Acre", "uf": "AC", "pop": 16693, "cattle": 376336, "soy": 3140, "in_arco": true}, {"id": "5106778", "name": "Porto Alegre do Norte", "uf": "MT", "pop": 12127, "cattle": 137285, "soy": 183051, "in_arco": false}, {"id": "1718006", "name": "Porto Alegre do Tocantins", "uf": "TO", "pop": 2866, "cattle": 13426, "soy": 5580, "in_arco": false}, {"id": "5106828", "name": "Porto Esperidião", "uf": "MT", "pop": 10204, "cattle": 663778, "soy": 25600, "in_arco": false}, {"id": "5106851", "name": "Porto Estrela", "uf": "MT", "pop": 3224, "cattle": 142757, "soy": 280, "in_arco": false}, {"id": "2109007", "name": "Porto Franco", "uf": "MA", "pop": 23903, "cattle": 139189, "soy": 2221, "in_arco": false}, {"id": "1600535", "name": "Porto Grande", "uf": "AP", "pop": 17848, "cattle": 5987, "soy": 975, "in_arco": false}, {"id": "1718204", "name": "Porto Nacional", "uf": "TO", "pop": 64418, "cattle": 147955, "soy": 233446, "in_arco": false}, {"id": "2109056", "name": "Porto Rico do Maranhão", "uf": "MA", "pop": 5954, "cattle": 1227, "soy": 0, "in_arco": false}, {"id": "1100205", "name": "Porto Velho", "uf": "RO", "pop": 460434, "cattle": 1772153, "soy": 181812, "in_arco": true}, {"id": "1200393", "name": "Porto Walter", "uf": "AC", "pop": 10735, "cattle": 20266, "soy": 0, "in_arco": false}, {"id": "1505908", "name": "Porto de Moz", "uf": "PA", "pop": 40597, "cattle": 70543, "soy": 0, "in_arco": false}, {"id": "5106802", "name": "Porto dos Gaúchos", "uf": "MT", "pop": 5593, "cattle": 98237, "soy": 746450, "in_arco": true}, {"id": "5107008", "name": "Poxoréu", "uf": "MT", "pop": 23283, "cattle": 406047, "soy": 281250, "in_arco": false}, {"id": "2108900", "name": "Poção de Pedras", "uf": "MA", "pop": 17161, "cattle": 64617, "soy": 0, "in_arco": false}, {"id": "1600550", "name": "Pracuúba", "uf": "AP", "pop": 3803, "cattle": 2887, "soy": 0, "in_arco": false}, {"id": "1718303", "name": "Praia Norte", "uf": "TO", "pop": 9044, "cattle": 27009, "soy": 0, "in_arco": false}, {"id": "1506005", "name": "Prainha", "uf": "PA", "pop": 35577, "cattle": 155337, "soy": 0, "in_arco": false}, {"id": "2109106", "name": "Presidente Dutra", "uf": "MA", "pop": 45155, "cattle": 70471, "soy": 0, "in_arco": false}, {"id": "1303536", "name": "Presidente Figueiredo", "uf": "AM", "pop": 30668, "cattle": 11989, "soy": 0, "in_arco": false}, {"id": "2109205", "name": "Presidente Juscelino", "uf": "MA", "pop": 11356, "cattle": 865, "soy": 0, "in_arco": false}, {"id": "1718402", "name": "Presidente Kennedy", "uf": "TO", "pop": 3047, "cattle": 51614, "soy": 0, "in_arco": false}, {"id": "1100254", "name": "Presidente Médici", "uf": "RO", "pop": 19327, "cattle": 402859, "soy": 0, "in_arco": false}, {"id": "2109239", "name": "Presidente Médici", "uf": "MA", "pop": 4696, "cattle": 28481, "soy": 0, "in_arco": false}, {"id": "2109270", "name": "Presidente Sarney", "uf": "MA", "pop": 17511, "cattle": 5578, "soy": 0, "in_arco": false}, {"id": "2109304", "name": "Presidente Vargas", "uf": "MA", "pop": 10549, "cattle": 1369, "soy": 0, "in_arco": false}, {"id": "1506104", "name": "Primavera", "uf": "PA", "pop": 10851, "cattle": 5257, "soy": 0, "in_arco": false}, {"id": "1101476", "name": "Primavera de Rondônia", "uf": "RO", "pop": 3076, "cattle": 88149, "soy": 980, "in_arco": false}, {"id": "5107040", "name": "Primavera do Leste", "uf": "MT", "pop": 85146, "cattle": 90908, "soy": 1128000, "in_arco": false}, {"id": "2109403", "name": "Primeira Cruz", "uf": "MA", "pop": 13614, "cattle": 1295, "soy": 0, "in_arco": false}, {"id": "1718451", "name": "Pugmil", "uf": "TO", "pop": 2193, "cattle": 20134, "soy": 16266, "in_arco": false}, {"id": "1506112", "name": "Quatipuru", "uf": "PA", "pop": 11524, "cattle": 778, "soy": 0, "in_arco": false}, {"id": "5107065", "name": "Querência", "uf": "MT", "pop": 26769, "cattle": 123089, "soy": 1368000, "in_arco": true}, {"id": "2109452", "name": "Raposa", "uf": "MA", "pop": 30839, "cattle": 448, "soy": 0, "in_arco": false}, {"id": "1718501", "name": "Recursolândia", "uf": "TO", "pop": 3421, "cattle": 81254, "soy": 0, "in_arco": false}, {"id": "1506138", "name": "Redenção", "uf": "PA", "pop": 85597, "cattle": 315521, "soy": 33710, "in_arco": false}, {"id": "5107156", "name": "Reserva do Cabaçal", "uf": "MT", "pop": 2122, "cattle": 61042, "soy": 0, "in_arco": false}, {"id": "1718550", "name": "Riachinho", "uf": "TO", "pop": 3960, "cattle": 42386, "soy": 0, "in_arco": false}, {"id": "2109502", "name": "Riachão", "uf": "MA", "pop": 22145, "cattle": 146521, "soy": 158680, "in_arco": false}, {"id": "2109551", "name": "Ribamar Fiquene", "uf": "MA", "pop": 7420, "cattle": 62894, "soy": 0, "in_arco": false}, {"id": "5107180", "name": "Ribeirão Cascalheira", "uf": "MT", "pop": 10089, "cattle": 327667, "soy": 360000, "in_arco": false}, {"id": "5107198", "name": "Ribeirãozinho", "uf": "MT", "pop": 2593, "cattle": 28425, "soy": 105000, "in_arco": false}, {"id": "1200401", "name": "Rio Branco", "uf": "AC", "pop": 364756, "cattle": 638875, "soy": 6765, "in_arco": true}, {"id": "5107206", "name": "Rio Branco", "uf": "MT", "pop": 4535, "cattle": 69461, "soy": 0, "in_arco": true}, {"id": "1100262", "name": "Rio Crespo", "uf": "RO", "pop": 3471, "cattle": 136636, "soy": 120593, "in_arco": false}, {"id": "1506161", "name": "Rio Maria", "uf": "PA", "pop": 18384, "cattle": 515019, "soy": 1678, "in_arco": false}, {"id": "1303569", "name": "Rio Preto da Eva", "uf": "AM", "pop": 24936, "cattle": 3384, "soy": 0, "in_arco": false}, {"id": "1718758", "name": "Rio Sono", "uf": "TO", "pop": 4841, "cattle": 79499, "soy": 28800, "in_arco": false}, {"id": "1718659", "name": "Rio da Conceição", "uf": "TO", "pop": 1768, "cattle": 2284, "soy": 6120, "in_arco": false}, {"id": "1718709", "name": "Rio dos Bois", "uf": "TO", "pop": 2738, "cattle": 20091, "soy": 19000, "in_arco": false}, {"id": "1200427", "name": "Rodrigues Alves", "uf": "AC", "pop": 14938, "cattle": 29491, "soy": 0, "in_arco": false}, {"id": "1100288", "name": "Rolim de Moura", "uf": "RO", "pop": 56406, "cattle": 267969, "soy": 27678, "in_arco": false}, {"id": "5107578", "name": "Rondolândia", "uf": "MT", "pop": 3505, "cattle": 346374, "soy": 703, "in_arco": true}, {"id": "1506187", "name": "Rondon do Pará", "uf": "PA", "pop": 53143, "cattle": 374950, "soy": 235200, "in_arco": true}, {"id": "5107602", "name": "Rondonópolis", "uf": "MT", "pop": 244911, "cattle": 396077, "soy": 345000, "in_arco": false}, {"id": "1400472", "name": "Rorainópolis", "uf": "RR", "pop": 32647, "cattle": 126033, "soy": 0, "in_arco": false}, {"id": "2109601", "name": "Rosário", "uf": "MA", "pop": 38475, "cattle": 1190, "soy": 0, "in_arco": false}, {"id": "5107701", "name": "Rosário Oeste", "uf": "MT", "pop": 15453, "cattle": 265389, "soy": 165870, "in_arco": false}, {"id": "1506195", "name": "Rurópolis", "uf": "PA", "pop": 35769, "cattle": 196228, "soy": 2176, "in_arco": true}, {"id": "1506203", "name": "Salinópolis", "uf": "PA", "pop": 44772, "cattle": 151, "soy": 0, "in_arco": false}, {"id": "5107750", "name": "Salto do Céu", "uf": "MT", "pop": 3679, "cattle": 214511, "soy": 6900, "in_arco": false}, {"id": "1506302", "name": "Salvaterra", "uf": "PA", "pop": 24129, "cattle": 7790, "soy": 0, "in_arco": false}, {"id": "2109700", "name": "Sambaíba", "uf": "MA", "pop": 5568, "cattle": 30960, "soy": 138176, "in_arco": false}, {"id": "1718808", "name": "Sampaio", "uf": "TO", "pop": 4215, "cattle": 13904, "soy": 0, "in_arco": false}, {"id": "1718840", "name": "Sandolândia", "uf": "TO", "pop": 3723, "cattle": 203560, "soy": 4873, "in_arco": false}, {"id": "1506351", "name": "Santa Bárbara do Pará", "uf": "PA", "pop": 21087, "cattle": 3012, "soy": 0, "in_arco": false}, {"id": "5107248", "name": "Santa Carmem", "uf": "MT", "pop": 5374, "cattle": 29539, "soy": 484900, "in_arco": false}, {"id": "1506401", "name": "Santa Cruz do Arari", "uf": "PA", "pop": 7445, "cattle": 27150, "soy": 0, "in_arco": false}, {"id": "5107743", "name": "Santa Cruz do Xingu", "uf": "MT", "pop": 2661, "cattle": 110380, "soy": 440000, "in_arco": false}, {"id": "2109759", "name": "Santa Filomena do Maranhão", "uf": "MA", "pop": 6697, "cattle": 27540, "soy": 0, "in_arco": false}, {"id": "1718865", "name": "Santa Fé do Araguaia", "uf": "TO", "pop": 7216, "cattle": 124552, "soy": 28047, "in_arco": false}, {"id": "2109809", "name": "Santa Helena", "uf": "MA", "pop": 41561, "cattle": 15074, "soy": 0, "in_arco": false}, {"id": "2109908", "name": "Santa Inês", "uf": "MA", "pop": 85014, "cattle": 66314, "soy": 0, "in_arco": false}, {"id": "1303601", "name": "Santa Isabel do Rio Negro", "uf": "AM", "pop": 14164, "cattle": 180, "soy": 0, "in_arco": false}, {"id": "1506500", "name": "Santa Izabel do Pará", "uf": "PA", "pop": 73019, "cattle": 30292, "soy": 0, "in_arco": false}, {"id": "2110005", "name": "Santa Luzia", "uf": "MA", "pop": 57635, "cattle": 349056, "soy": 44100, "in_arco": false}, {"id": "1100296", "name": "Santa Luzia D'Oeste", "uf": "RO", "pop": 7419, "cattle": 205435, "soy": 26440, "in_arco": false}, {"id": "2110039", "name": "Santa Luzia do Paruá", "uf": "MA", "pop": 24307, "cattle": 63721, "soy": 0, "in_arco": false}, {"id": "1506559", "name": "Santa Luzia do Pará", "uf": "PA", "pop": 20370, "cattle": 75698, "soy": 0, "in_arco": false}, {"id": "1506583", "name": "Santa Maria das Barreiras", "uf": "PA", "pop": 16548, "cattle": 632367, "soy": 199845, "in_arco": false}, {"id": "1506609", "name": "Santa Maria do Pará", "uf": "PA", "pop": 24624, "cattle": 22020, "soy": 0, "in_arco": false}, {"id": "1718881", "name": "Santa Maria do Tocantins", "uf": "TO", "pop": 2680, "cattle": 36691, "soy": 41361, "in_arco": false}, {"id": "2110104", "name": "Santa Quitéria do Maranhão", "uf": "MA", "pop": 23957, "cattle": 5880, "soy": 12618, "in_arco": false}, {"id": "2110203", "name": "Santa Rita", "uf": "MA", "pop": 37035, "cattle": 20682, "soy": 0, "in_arco": false}, {"id": "1718899", "name": "Santa Rita do Tocantins", "uf": "TO", "pop": 2219, "cattle": 112198, "soy": 74282, "in_arco": false}, {"id": "5107768", "name": "Santa Rita do Trivelato", "uf": "MT", "pop": 3276, "cattle": 43830, "soy": 645750, "in_arco": false}, {"id": "1200435", "name": "Santa Rosa do Purus", "uf": "AC", "pop": 6723, "cattle": 12818, "soy": 0, "in_arco": false}, {"id": "1718907", "name": "Santa Rosa do Tocantins", "uf": "TO", "pop": 4653, "cattle": 38807, "soy": 120563, "in_arco": false}, {"id": "1719004", "name": "Santa Tereza do Tocantins", "uf": "TO", "pop": 2781, "cattle": 29208, "soy": 0, "in_arco": false}, {"id": "5107776", "name": "Santa Terezinha", "uf": "MT", "pop": 7596, "cattle": 268801, "soy": 122400, "in_arco": false}, {"id": "1720002", "name": "Santa Terezinha do Tocantins", "uf": "TO", "pop": 2406, "cattle": 23639, "soy": 0, "in_arco": false}, {"id": "1600600", "name": "Santana", "uf": "AP", "pop": 107618, "cattle": 1175, "soy": 0, "in_arco": false}, {"id": "1506708", "name": "Santana do Araguaia", "uf": "PA", "pop": 32413, "cattle": 621904, "soy": 332796, "in_arco": true}, {"id": "2110237", "name": "Santana do Maranhão", "uf": "MA", "pop": 10567, "cattle": 2439, "soy": 0, "in_arco": false}, {"id": "1506807", "name": "Santarém", "uf": "PA", "pop": 331942, "cattle": 128750, "soy": 105000, "in_arco": false}, {"id": "1506906", "name": "Santarém Novo", "uf": "PA", "pop": 6116, "cattle": 3677, "soy": 0, "in_arco": false}, {"id": "5107263", "name": "Santo Afonso", "uf": "MT", "pop": 2519, "cattle": 152173, "soy": 72088, "in_arco": false}, {"id": "2110278", "name": "Santo Amaro do Maranhão", "uf": "MA", "pop": 13949, "cattle": 1356, "soy": 0, "in_arco": false}, {"id": "5107800", "name": "Santo Antônio de Leverger", "uf": "MT", "pop": 15246, "cattle": 593385, "soy": 77004, "in_arco": false}, {"id": "1303700", "name": "Santo Antônio do Içá", "uf": "AM", "pop": 28211, "cattle": 991, "soy": 0, "in_arco": false}, {"id": "5107792", "name": "Santo Antônio do Leste", "uf": "MT", "pop": 4099, "cattle": 53538, "soy": 525000, "in_arco": false}, {"id": "1507003", "name": "Santo Antônio do Tauá", "uf": "PA", "pop": 27461, "cattle": 6091, "soy": 0, "in_arco": false}, {"id": "2110302", "name": "Santo Antônio dos Lopes", "uf": "MA", "pop": 14304, "cattle": 26529, "soy": 0, "in_arco": false}, {"id": "5107875", "name": "Sapezal", "uf": "MT", "pop": 28944, "cattle": 162359, "soy": 1427889, "in_arco": false}, {"id": "1507755", "name": "Sapucaia", "uf": "PA", "pop": 5847, "cattle": 182126, "soy": 0, "in_arco": false}, {"id": "2111722", "name": "Satubinha", "uf": "MA", "pop": 8784, "cattle": 31344, "soy": 0, "in_arco": false}, {"id": "1200500", "name": "Sena Madureira", "uf": "AC", "pop": 41343, "cattle": 544495, "soy": 0, "in_arco": true}, {"id": "2111748", "name": "Senador Alexandre Costa", "uf": "MA", "pop": 10207, "cattle": 15730, "soy": 12248, "in_arco": false}, {"id": "1200450", "name": "Senador Guiomard", "uf": "AC", "pop": 21454, "cattle": 395924, "soy": 5017, "in_arco": false}, {"id": "1507805", "name": "Senador José Porfírio", "uf": "PA", "pop": 22576, "cattle": 168265, "soy": 0, "in_arco": false}, {"id": "2111763", "name": "Senador La Rocque", "uf": "MA", "pop": 14700, "cattle": 120857, "soy": 390, "in_arco": false}, {"id": "1101500", "name": "Seringueiras", "uf": "RO", "pop": 11171, "cattle": 295689, "soy": 23091, "in_arco": false}, {"id": "5107883", "name": "Serra Nova Dourada", "uf": "MT", "pop": 1800, "cattle": 133041, "soy": 69624, "in_arco": false}, {"id": "1600055", "name": "Serra do Navio", "uf": "AP", "pop": 4673, "cattle": 467, "soy": 0, "in_arco": false}, {"id": "2111789", "name": "Serrano do Maranhão", "uf": "MA", "pop": 10202, "cattle": 6065, "soy": 0, "in_arco": false}, {"id": "1720655", "name": "Silvanópolis", "uf": "TO", "pop": 5108, "cattle": 42908, "soy": 66780, "in_arco": false}, {"id": "1304005", "name": "Silves", "uf": "AM", "pop": 11559, "cattle": 9014, "soy": 0, "in_arco": false}, {"id": "5107909", "name": "Sinop", "uf": "MT", "pop": 196312, "cattle": 72474, "soy": 649250, "in_arco": false}, {"id": "5107925", "name": "Sorriso", "uf": "MT", "pop": 110635, "cattle": 101402, "soy": 2244375, "in_arco": false}, {"id": "1507904", "name": "Soure", "uf": "PA", "pop": 24204, "cattle": 38680, "soy": 0, "in_arco": false}, {"id": "1720853", "name": "Sucupira", "uf": "TO", "pop": 1577, "cattle": 64258, "soy": 84284, "in_arco": false}, {"id": "2111904", "name": "Sucupira do Norte", "uf": "MA", "pop": 10238, "cattle": 20360, "soy": 50934, "in_arco": false}, {"id": "2111953", "name": "Sucupira do Riachão", "uf": "MA", "pop": 4985, "cattle": 12045, "soy": 3740, "in_arco": false}, {"id": "2110401", "name": "São Benedito do Rio Preto", "uf": "MA", "pop": 18364, "cattle": 1250, "soy": 3800, "in_arco": false}, {"id": "2110500", "name": "São Bento", "uf": "MA", "pop": 46395, "cattle": 5539, "soy": 0, "in_arco": false}, {"id": "1720101", "name": "São Bento do Tocantins", "uf": "TO", "pop": 5654, "cattle": 42313, "soy": 0, "in_arco": false}, {"id": "2110609", "name": "São Bernardo", "uf": "MA", "pop": 26943, "cattle": 12262, "soy": 6249, "in_arco": false}, {"id": "1507102", "name": "São Caetano de Odivelas", "uf": "PA", "pop": 16666, "cattle": 4276, "soy": 0, "in_arco": false}, {"id": "1507151", "name": "São Domingos do Araguaia", "uf": "PA", "pop": 21092, "cattle": 165000, "soy": 0, "in_arco": false}, {"id": "2110658", "name": "São Domingos do Azeitão", "uf": "MA", "pop": 7992, "cattle": 9968, "soy": 99603, "in_arco": false}, {"id": "1507201", "name": "São Domingos do Capim", "uf": "PA", "pop": 30599, "cattle": 49977, "soy": 0, "in_arco": false}, {"id": "2110708", "name": "São Domingos do Maranhão", "uf": "MA", "pop": 34034, "cattle": 89712, "soy": 5445, "in_arco": false}, {"id": "1101484", "name": "São Felipe D'Oeste", "uf": "RO", "pop": 5258, "cattle": 116033, "soy": 8030, "in_arco": false}, {"id": "2110856", "name": "São Francisco do Brejão", "uf": "MA", "pop": 9051, "cattle": 76864, "soy": 72, "in_arco": false}, {"id": "1101492", "name": "São Francisco do Guaporé", "uf": "RO", "pop": 16286, "cattle": 528470, "soy": 24156, "in_arco": false}, {"id": "2110906", "name": "São Francisco do Maranhão", "uf": "MA", "pop": 12064, "cattle": 21628, "soy": 7398, "in_arco": false}, {"id": "1507409", "name": "São Francisco do Pará", "uf": "PA", "pop": 14894, "cattle": 22104, "soy": 0, "in_arco": false}, {"id": "2110807", "name": "São Félix de Balsas", "uf": "MA", "pop": 4402, "cattle": 19837, "soy": 14520, "in_arco": false}, {"id": "5107859", "name": "São Félix do Araguaia", "uf": "MT", "pop": 13621, "cattle": 313069, "soy": 1223937, "in_arco": false}, {"id": "1720150", "name": "São Félix do Tocantins", "uf": "TO", "pop": 1783, "cattle": 4442, "soy": 0, "in_arco": false}, {"id": "1507300", "name": "São Félix do Xingu", "uf": "PA", "pop": 65418, "cattle": 2452095, "soy": 31000, "in_arco": true}, {"id": "1303809", "name": "São Gabriel da Cachoeira", "uf": "AM", "pop": 51795, "cattle": 110, "soy": 0, "in_arco": false}, {"id": "1507458", "name": "São Geraldo do Araguaia", "uf": "PA", "pop": 24255, "cattle": 382500, "soy": 0, "in_arco": false}, {"id": "2111201", "name": "São José de Ribamar", "uf": "MA", "pop": 244579, "cattle": 1670, "soy": 0, "in_arco": false}, {"id": "5107297", "name": "São José do Povo", "uf": "MT", "pop": 2875, "cattle": 94910, "soy": 5393, "in_arco": false}, {"id": "5107305", "name": "São José do Rio Claro", "uf": "MT", "pop": 14911, "cattle": 156209, "soy": 522000, "in_arco": false}, {"id": "5107354", "name": "São José do Xingu", "uf": "MT", "pop": 5964, "cattle": 208605, "soy": 430560, "in_arco": true}, {"id": "2111250", "name": "São José dos Basílios", "uf": "MA", "pop": 6957, "cattle": 17611, "soy": 0, "in_arco": false}, {"id": "5107107", "name": "São José dos Quatro Marcos", "uf": "MT", "pop": 17849, "cattle": 257293, "soy": 0, "in_arco": false}, {"id": "2111003", "name": "São João Batista", "uf": "MA", "pop": 18544, "cattle": 9860, "soy": 0, "in_arco": false}, {"id": "1400506", "name": "São João da Baliza", "uf": "RR", "pop": 8858, "cattle": 32708, "soy": 0, "in_arco": false}, {"id": "1507466", "name": "São João da Ponta", "uf": "PA", "pop": 4430, "cattle": 1293, "soy": 0, "in_arco": false}, {"id": "1507474", "name": "São João de Pirabas", "uf": "PA", "pop": 20689, "cattle": 5504, "soy": 0, "in_arco": false}, {"id": "1507508", "name": "São João do Araguaia", "uf": "PA", "pop": 13664, "cattle": 120600, "soy": 1098, "in_arco": false}, {"id": "2111029", "name": "São João do Carú", "uf": "MA", "pop": 12251, "cattle": 43408, "soy": 0, "in_arco": false}, {"id": "2111052", "name": "São João do Paraíso", "uf": "MA", "pop": 9904, "cattle": 178779, "soy": 2907, "in_arco": false}, {"id": "2111078", "name": "São João do Soter", "uf": "MA", "pop": 16889, "cattle": 16990, "soy": 36378, "in_arco": false}, {"id": "2111102", "name": "São João dos Patos", "uf": "MA", "pop": 25020, "cattle": 44198, "soy": 17936, "in_arco": false}, {"id": "1400605", "name": "São Luiz do Anauá", "uf": "RR", "pop": 7315, "cattle": 54556, "soy": 0, "in_arco": false}, {"id": "2111300", "name": "São Luís", "uf": "MA", "pop": 1037775, "cattle": 1639, "soy": 0, "in_arco": false}, {"id": "2111409", "name": "São Luís Gonzaga do Maranhão", "uf": "MA", "pop": 17818, "cattle": 94654, "soy": 0, "in_arco": false}, {"id": "2111508", "name": "São Mateus do Maranhão", "uf": "MA", "pop": 38829, "cattle": 38250, "soy": 0, "in_arco": false}, {"id": "1507607", "name": "São Miguel do Guamá", "uf": "PA", "pop": 52894, "cattle": 43335, "soy": 0, "in_arco": false}, {"id": "1100320", "name": "São Miguel do Guaporé", "uf": "RO", "pop": 21635, "cattle": 288451, "soy": 96035, "in_arco": false}, {"id": "1720200", "name": "São Miguel do Tocantins", "uf": "TO", "pop": 13241, "cattle": 26796, "soy": 0, "in_arco": false}, {"id": "1303908", "name": "São Paulo de Olivença", "uf": "AM", "pop": 32967, "cattle": 450, "soy": 0, "in_arco": false}, {"id": "5107404", "name": "São Pedro da Cipa", "uf": "MT", "pop": 4191, "cattle": 38612, "soy": 10585, "in_arco": false}, {"id": "2111532", "name": "São Pedro da Água Branca", "uf": "MA", "pop": 14338, "cattle": 24925, "soy": 1980, "in_arco": false}, {"id": "2111573", "name": "São Pedro dos Crentes", "uf": "MA", "pop": 5783, "cattle": 75451, "soy": 5298, "in_arco": false}, {"id": "2111607", "name": "São Raimundo das Mangabeiras", "uf": "MA", "pop": 18672, "cattle": 51203, "soy": 53430, "in_arco": false}, {"id": "2111631", "name": "São Raimundo do Doca Bezerra", "uf": "MA", "pop": 5650, "cattle": 27269, "soy": 0, "in_arco": false}, {"id": "2111672", "name": "São Roberto", "uf": "MA", "pop": 4544, "cattle": 21492, "soy": 0, "in_arco": false}, {"id": "1720259", "name": "São Salvador do Tocantins", "uf": "TO", "pop": 2385, "cattle": 47160, "soy": 930, "in_arco": false}, {"id": "1507706", "name": "São Sebastião da Boa Vista", "uf": "PA", "pop": 25643, "cattle": 200, "soy": 0, "in_arco": false}, {"id": "1720309", "name": "São Sebastião do Tocantins", "uf": "TO", "pop": 4100, "cattle": 26027, "soy": 0, "in_arco": false}, {"id": "1303957", "name": "São Sebastião do Uatumã", "uf": "AM", "pop": 11670, "cattle": 10708, "soy": 0, "in_arco": false}, {"id": "1720499", "name": "São Valério", "uf": "TO", "pop": 4422, "cattle": 71680, "soy": 78228, "in_arco": false}, {"id": "2111706", "name": "São Vicente Ferrer", "uf": "MA", "pop": 19498, "cattle": 7948, "soy": 0, "in_arco": false}, {"id": "2111805", "name": "Sítio Novo", "uf": "MA", "pop": 17074, "cattle": 183401, "soy": 5592, "in_arco": false}, {"id": "1720804", "name": "Sítio Novo do Tocantins", "uf": "TO", "pop": 10830, "cattle": 50214, "soy": 0, "in_arco": false}, {"id": "5107941", "name": "Tabaporã", "uf": "MT", "pop": 9818, "cattle": 120197, "soy": 778958, "in_arco": true}, {"id": "1304062", "name": "Tabatinga", "uf": "AM", "pop": 66764, "cattle": 243, "soy": 0, "in_arco": false}, {"id": "1708254", "name": "Tabocão", "uf": "TO", "pop": 3455, "cattle": 66056, "soy": 15970, "in_arco": false}, {"id": "1720903", "name": "Taguatinga", "uf": "TO", "pop": 14011, "cattle": 150942, "soy": 990, "in_arco": false}, {"id": "1507953", "name": "Tailândia", "uf": "PA", "pop": 72493, "cattle": 87000, "soy": 52500, "in_arco": true}, {"id": "1720937", "name": "Taipas do Tocantins", "uf": "TO", "pop": 2021, "cattle": 35748, "soy": 0, "in_arco": false}, {"id": "1720978", "name": "Talismã", "uf": "TO", "pop": 2456, "cattle": 127521, "soy": 52151, "in_arco": false}, {"id": "5107958", "name": "Tangará da Serra", "uf": "MT", "pop": 106434, "cattle": 372048, "soy": 423540, "in_arco": false}, {"id": "1304104", "name": "Tapauá", "uf": "AM", "pop": 19599, "cattle": 7238, "soy": 0, "in_arco": false}, {"id": "5108006", "name": "Tapurah", "uf": "MT", "pop": 14370, "cattle": 84835, "soy": 795500, "in_arco": false}, {"id": "1200609", "name": "Tarauacá", "uf": "AC", "pop": 43467, "cattle": 243341, "soy": 0, "in_arco": true}, {"id": "1600709", "name": "Tartarugalzinho", "uf": "AP", "pop": 12945, "cattle": 9878, "soy": 1291, "in_arco": false}, {"id": "2112001", "name": "Tasso Fragoso", "uf": "MA", "pop": 8862, "cattle": 30476, "soy": 637918, "in_arco": false}, {"id": "1304203", "name": "Tefé", "uf": "AM", "pop": 73669, "cattle": 1258, "soy": 0, "in_arco": false}, {"id": "1101559", "name": "Teixeirópolis", "uf": "RO", "pop": 4256, "cattle": 117633, "soy": 0, "in_arco": false}, {"id": "1507961", "name": "Terra Alta", "uf": "PA", "pop": 10400, "cattle": 6236, "soy": 0, "in_arco": false}, {"id": "5108055", "name": "Terra Nova do Norte", "uf": "MT", "pop": 10616, "cattle": 301580, "soy": 104201, "in_arco": false}, {"id": "1507979", "name": "Terra Santa", "uf": "PA", "pop": 18782, "cattle": 36730, "soy": 0, "in_arco": false}, {"id": "5108105", "name": "Tesouro", "uf": "MT", "pop": 3025, "cattle": 142009, "soy": 127549, "in_arco": false}, {"id": "1101609", "name": "Theobroma", "uf": "RO", "pop": 8113, "cattle": 316742, "soy": 4755, "in_arco": false}, {"id": "2112100", "name": "Timbiras", "uf": "MA", "pop": 26484, "cattle": 21260, "soy": 0, "in_arco": false}, {"id": "2112209", "name": "Timon", "uf": "MA", "pop": 174465, "cattle": 21530, "soy": 2500, "in_arco": false}, {"id": "1721208", "name": "Tocantinópolis", "uf": "TO", "pop": 22615, "cattle": 26804, "soy": 0, "in_arco": false}, {"id": "1721109", "name": "Tocantínia", "uf": "TO", "pop": 7459, "cattle": 19662, "soy": 8900, "in_arco": false}, {"id": "1508001", "name": "Tomé-Açu", "uf": "PA", "pop": 67585, "cattle": 149710, "soy": 0, "in_arco": false}, {"id": "1304237", "name": "Tonantins", "uf": "AM", "pop": 19247, "cattle": 1393, "soy": 0, "in_arco": false}, {"id": "5108204", "name": "Torixoréu", "uf": "MT", "pop": 4164, "cattle": 120275, "soy": 96259, "in_arco": false}, {"id": "1508035", "name": "Tracuateua", "uf": "PA", "pop": 28595, "cattle": 15299, "soy": 0, "in_arco": false}, {"id": "1508050", "name": "Trairão", "uf": "PA", "pop": 15242, "cattle": 164823, "soy": 6300, "in_arco": true}, {"id": "2112233", "name": "Trizidela do Vale", "uf": "MA", "pop": 22484, "cattle": 14719, "soy": 0, "in_arco": false}, {"id": "1508084", "name": "Tucumã", "uf": "PA", "pop": 39550, "cattle": 375584, "soy": 7200, "in_arco": false}, {"id": "1508100", "name": "Tucuruí", "uf": "PA", "pop": 91306, "cattle": 83771, "soy": 0, "in_arco": false}, {"id": "2112274", "name": "Tufilândia", "uf": "MA", "pop": 5507, "cattle": 17156, "soy": 0, "in_arco": false}, {"id": "2112308", "name": "Tuntum", "uf": "MA", "pop": 36251, "cattle": 185172, "soy": 0, "in_arco": false}, {"id": "1721257", "name": "Tupirama", "uf": "TO", "pop": 1909, "cattle": 24981, "soy": 34148, "in_arco": false}, {"id": "1721307", "name": "Tupiratins", "uf": "TO", "pop": 1874, "cattle": 19234, "soy": 4881, "in_arco": false}, {"id": "2112407", "name": "Turiaçu", "uf": "MA", "pop": 37491, "cattle": 11013, "soy": 0, "in_arco": false}, {"id": "2112456", "name": "Turilândia", "uf": "MA", "pop": 31638, "cattle": 30262, "soy": 0, "in_arco": false}, {"id": "2112506", "name": "Tutóia", "uf": "MA", "pop": 53356, "cattle": 3204, "soy": 0, "in_arco": false}, {"id": "1304260", "name": "Uarini", "uf": "AM", "pop": 14431, "cattle": 486, "soy": 0, "in_arco": false}, {"id": "1400704", "name": "Uiramutã", "uf": "RR", "pop": 13751, "cattle": 14177, "soy": 0, "in_arco": false}, {"id": "1508126", "name": "Ulianópolis", "uf": "PA", "pop": 37972, "cattle": 89850, "soy": 201500, "in_arco": false}, {"id": "5108303", "name": "União do Sul", "uf": "MT", "pop": 3838, "cattle": 47092, "soy": 266549, "in_arco": false}, {"id": "2112605", "name": "Urbano Santos", "uf": "MA", "pop": 32812, "cattle": 1275, "soy": 2700, "in_arco": false}, {"id": "1508159", "name": "Uruará", "uf": "PA", "pop": 43558, "cattle": 382100, "soy": 1950, "in_arco": true}, {"id": "1304302", "name": "Urucará", "uf": "AM", "pop": 18631, "cattle": 13095, "soy": 0, "in_arco": false}, {"id": "1304401", "name": "Urucurituba", "uf": "AM", "pop": 23945, "cattle": 13158, "soy": 0, "in_arco": false}, {"id": "1101708", "name": "Urupá", "uf": "RO", "pop": 10725, "cattle": 199872, "soy": 0, "in_arco": false}, {"id": "5108352", "name": "Vale de São Domingos", "uf": "MT", "pop": 2904, "cattle": 134478, "soy": 0, "in_arco": false}, {"id": "1101757", "name": "Vale do Anari", "uf": "RO", "pop": 7788, "cattle": 197782, "soy": 8217, "in_arco": false}, {"id": "1101807", "name": "Vale do Paraíso", "uf": "RO", "pop": 6479, "cattle": 203225, "soy": 0, "in_arco": false}, {"id": "2112704", "name": "Vargem Grande", "uf": "MA", "pop": 43261, "cattle": 18470, "soy": 0, "in_arco": false}, {"id": "5108501", "name": "Vera", "uf": "MT", "pop": 12800, "cattle": 40145, "soy": 600400, "in_arco": false}, {"id": "2112803", "name": "Viana", "uf": "MA", "pop": 51442, "cattle": 17628, "soy": 0, "in_arco": false}, {"id": "1508209", "name": "Vigia", "uf": "PA", "pop": 50832, "cattle": 267, "soy": 0, "in_arco": false}, {"id": "5105507", "name": "Vila Bela da Santíssima Trindade", "uf": "MT", "pop": 16774, "cattle": 1134427, "soy": 246204, "in_arco": false}, {"id": "2112852", "name": "Vila Nova dos Martírios", "uf": "MA", "pop": 10362, "cattle": 84512, "soy": 12218, "in_arco": false}, {"id": "5108600", "name": "Vila Rica", "uf": "MT", "pop": 19888, "cattle": 608621, "soy": 206842, "in_arco": true}, {"id": "1100304", "name": "Vilhena", "uf": "RO", "pop": 95832, "cattle": 170512, "soy": 164500, "in_arco": true}, {"id": "1508308", "name": "Viseu", "uf": "PA", "pop": 58692, "cattle": 124697, "soy": 0, "in_arco": false}, {"id": "2113009", "name": "Vitorino Freire", "uf": "MA", "pop": 30845, "cattle": 101782, "soy": 0, "in_arco": false}, {"id": "1600808", "name": "Vitória do Jari", "uf": "AP", "pop": 11291, "cattle": 1077, "soy": 0, "in_arco": false}, {"id": "2112902", "name": "Vitória do Mearim", "uf": "MA", "pop": 30805, "cattle": 23213, "soy": 0, "in_arco": false}, {"id": "1508357", "name": "Vitória do Xingu", "uf": "PA", "pop": 15607, "cattle": 192052, "soy": 0, "in_arco": false}, {"id": "5108402", "name": "Várzea Grande", "uf": "MT", "pop": 300078, "cattle": 26265, "soy": 0, "in_arco": false}, {"id": "1722081", "name": "Wanderlândia", "uf": "TO", "pop": 10522, "cattle": 52931, "soy": 5301, "in_arco": false}, {"id": "1722107", "name": "Xambioá", "uf": "TO", "pop": 10517, "cattle": 101997, "soy": 1512, "in_arco": false}, {"id": "1200708", "name": "Xapuri", "uf": "AC", "pop": 18243, "cattle": 344322, "soy": 3258, "in_arco": false}, {"id": "1508407", "name": "Xinguara", "uf": "PA", "pop": 52893, "cattle": 504374, "soy": 360, "in_arco": false}, {"id": "2114007", "name": "Zé Doca", "uf": "MA", "pop": 40801, "cattle": 169510, "soy": 0, "in_arco": false}, {"id": "1500347", "name": "Água Azul do Norte", "uf": "PA", "pop": 18080, "cattle": 694455, "soy": 2000, "in_arco": false}, {"id": "5100201", "name": "Água Boa", "uf": "MT", "pop": 29219, "cattle": 340330, "soy": 745326, "in_arco": false}, {"id": "2100154", "name": "Água Doce do Maranhão", "uf": "MA", "pop": 12142, "cattle": 1745, "soy": 0, "in_arco": false}, {"id": "1505106", "name": "Óbidos", "uf": "PA", "pop": 52229, "cattle": 180010, "soy": 0, "in_arco": false}];
const VERSUS_PUZZLES = [{"id": "v-01", "num": 1, "category": "CATTLE — Pesquisa da Pecuária Municipal (PPM/IBGE 2023)", "question": "Qual município possui o MAIOR rebanho bovino?", "metric_key": "cattle", "unit": "cabeças de gado", "source": "Microdados oficiais tratados no pacote R datazoom.amazonia (Pesquisa da Pecuária Municipal (PPM/IBGE 2023)).", "left": {"name": "São Félix do Xingu", "uf": "PA", "val": "2.452.095 cabeças de gado", "num": 2452095}, "right": {"name": "Ji-Paraná", "uf": "RO", "val": "471.299 cabeças de gado", "num": 471299}, "winner": "left"}, {"id": "v-02", "num": 2, "category": "SOY — Produção Agrícola Municipal (PAM/IBGE 2023)", "question": "Qual município possui MAIOR produção de soja?", "metric_key": "soy", "unit": "toneladas de grão", "source": "Microdados oficiais tratados no pacote R datazoom.amazonia (Produção Agrícola Municipal (PAM/IBGE 2023)).", "left": {"name": "Sorriso", "uf": "MT", "val": "2.244.375 toneladas de grão", "num": 2244375}, "right": {"name": "Santarém", "uf": "PA", "val": "105.000 toneladas de grão", "num": 105000}, "winner": "left"}, {"id": "v-03", "num": 3, "category": "POP — Censo Demográfico (IBGE 2022)", "question": "Qual cidade é MAIS populosa?", "metric_key": "pop", "unit": "habitantes", "source": "Microdados oficiais tratados no pacote R datazoom.amazonia (Censo Demográfico (IBGE 2022)).", "left": {"name": "Manaus", "uf": "AM", "val": "2.063.689 habitantes", "num": 2063689}, "right": {"name": "Belém", "uf": "PA", "val": "1.303.403 habitantes", "num": 1303403}, "winner": "left"}, {"id": "v-04", "num": 4, "category": "CATTLE — Pesquisa da Pecuária Municipal (PPM/IBGE 2023)", "question": "Qual município tem MAIOR efetivo de rebanho bovino?", "metric_key": "cattle", "unit": "cabeças de gado", "source": "Microdados oficiais tratados no pacote R datazoom.amazonia (Pesquisa da Pecuária Municipal (PPM/IBGE 2023)).", "left": {"name": "Cáceres", "uf": "MT", "val": "1.399.931 cabeças de gado", "num": 1399931}, "right": {"name": "Altamira", "uf": "PA", "val": "1.079.168 cabeças de gado", "num": 1079168}, "winner": "left"}, {"id": "v-05", "num": 5, "category": "SOY — Produção Agrícola Municipal (PAM/IBGE 2023)", "question": "Qual município possui MAIOR colheita de soja?", "metric_key": "soy", "unit": "toneladas de grão", "source": "Microdados oficiais tratados no pacote R datazoom.amazonia (Produção Agrícola Municipal (PAM/IBGE 2023)).", "left": {"name": "Sapezal", "uf": "MT", "val": "1.427.889 toneladas de grão", "num": 1427889}, "right": {"name": "Balsas", "uf": "MA", "val": "602.055 toneladas de grão", "num": 602055}, "winner": "left"}, {"id": "v-06", "num": 6, "category": "POP — Censo Demográfico (IBGE 2022)", "question": "Qual capital possui MAIOR contingente populacional?", "metric_key": "pop", "unit": "habitantes", "source": "Microdados oficiais tratados no pacote R datazoom.amazonia (Censo Demográfico (IBGE 2022)).", "left": {"name": "Porto Velho", "uf": "RO", "val": "460.434 habitantes", "num": 460434}, "right": {"name": "Macapá", "uf": "AP", "val": "442.933 habitantes", "num": 442933}, "winner": "left"}, {"id": "v-07", "num": 7, "category": "CATTLE — Pesquisa da Pecuária Municipal (PPM/IBGE 2023)", "question": "Qual município possui MAIOR rebanho de gado?", "metric_key": "cattle", "unit": "cabeças de gado", "source": "Microdados oficiais tratados no pacote R datazoom.amazonia (Pesquisa da Pecuária Municipal (PPM/IBGE 2023)).", "left": {"name": "Vila Bela da Santíssima Trindade", "uf": "MT", "val": "1.134.427 cabeças de gado", "num": 1134427}, "right": {"name": "Marabá", "uf": "PA", "val": "1.305.000 cabeças de gado", "num": 1305000}, "winner": "right"}, {"id": "v-08", "num": 8, "category": "SOY — Produção Agrícola Municipal (PAM/IBGE 2023)", "question": "Qual município tem MAIOR colheita de soja em toneladas?", "metric_key": "soy", "unit": "toneladas de grão", "source": "Microdados oficiais tratados no pacote R datazoom.amazonia (Produção Agrícola Municipal (PAM/IBGE 2023)).", "left": {"name": "Campo Novo do Parecis", "uf": "MT", "val": "1.571.355 toneladas de grão", "num": 1571355}, "right": {"name": "Paragominas", "uf": "PA", "val": "841.050 toneladas de grão", "num": 841050}, "winner": "left"}, {"id": "v-09", "num": 9, "category": "POP — Censo Demográfico (IBGE 2022)", "question": "Qual cidade é MAIS populosa no Censo 2022?", "metric_key": "pop", "unit": "habitantes", "source": "Microdados oficiais tratados no pacote R datazoom.amazonia (Censo Demográfico (IBGE 2022)).", "left": {"name": "Ananindeua", "uf": "PA", "val": "478.778 habitantes", "num": 478778}, "right": {"name": "Rio Branco", "uf": "AC", "val": "364.756 habitantes", "num": 364756}, "winner": "left"}, {"id": "v-10", "num": 10, "category": "CATTLE — Pesquisa da Pecuária Municipal (PPM/IBGE 2023)", "question": "Qual município detém MAIOR número de cabeças de gado?", "metric_key": "cattle", "unit": "cabeças de gado", "source": "Microdados oficiais tratados no pacote R datazoom.amazonia (Pesquisa da Pecuária Municipal (PPM/IBGE 2023)).", "left": {"name": "Juara", "uf": "MT", "val": "963.851 cabeças de gado", "num": 963851}, "right": {"name": "Ariquemes", "uf": "RO", "val": "615.978 cabeças de gado", "num": 615978}, "winner": "left"}, {"id": "v-11", "num": 11, "category": "SOY — Produção Agrícola Municipal (PAM/IBGE 2023)", "question": "Qual município colhe MAIOR volume de soja?", "metric_key": "soy", "unit": "toneladas de grão", "source": "Microdados oficiais tratados no pacote R datazoom.amazonia (Produção Agrícola Municipal (PAM/IBGE 2023)).", "left": {"name": "Diamantino", "uf": "MT", "val": "1.675.562 toneladas de grão", "num": 1675562}, "right": {"name": "Porto Nacional", "uf": "TO", "val": "233.446 toneladas de grão", "num": 233446}, "winner": "left"}, {"id": "v-12", "num": 12, "category": "POP — Censo Demográfico (IBGE 2022)", "question": "Qual município possui MAIS habitantes?", "metric_key": "pop", "unit": "habitantes", "source": "Microdados oficiais tratados no pacote R datazoom.amazonia (Censo Demográfico (IBGE 2022)).", "left": {"name": "Santarém", "uf": "PA", "val": "331.942 habitantes", "num": 331942}, "right": {"name": "Palmas", "uf": "TO", "val": "302.692 habitantes", "num": 302692}, "winner": "left"}, {"id": "v-13", "num": 13, "category": "CATTLE — Pesquisa da Pecuária Municipal (PPM/IBGE 2023)", "question": "Qual município possui MAIOR rebanho bovino?", "metric_key": "cattle", "unit": "cabeças de gado", "source": "Microdados oficiais tratados no pacote R datazoom.amazonia (Pesquisa da Pecuária Municipal (PPM/IBGE 2023)).", "left": {"name": "Novo Repartimento", "uf": "PA", "val": "1.275.779 cabeças de gado", "num": 1275779}, "right": {"name": "Cacoal", "uf": "RO", "val": "502.394 cabeças de gado", "num": 502394}, "winner": "left"}, {"id": "v-14", "num": 14, "category": "SOY — Produção Agrícola Municipal (PAM/IBGE 2023)", "question": "Qual cidade lidera a colheita em toneladas de soja?", "metric_key": "soy", "unit": "toneladas de grão", "source": "Microdados oficiais tratados no pacote R datazoom.amazonia (Produção Agrícola Municipal (PAM/IBGE 2023)).", "left": {"name": "Querência", "uf": "MT", "val": "1.368.000 toneladas de grão", "num": 1368000}, "right": {"name": "Chapadinha", "uf": "MA", "val": "13.900 toneladas de grão", "num": 13900}, "winner": "left"}, {"id": "v-15", "num": 15, "category": "POP — Censo Demográfico (IBGE 2022)", "question": "Qual cidade possui MAIOR população residente?", "metric_key": "pop", "unit": "habitantes", "source": "Microdados oficiais tratados no pacote R datazoom.amazonia (Censo Demográfico (IBGE 2022)).", "left": {"name": "Boa Vista", "uf": "RR", "val": "413.486 habitantes", "num": 413486}, "right": {"name": "Imperatriz", "uf": "MA", "val": "273.110 habitantes", "num": 273110}, "winner": "left"}, {"id": "v-16", "num": 16, "category": "CATTLE — Pesquisa da Pecuária Municipal (PPM/IBGE 2023)", "question": "Qual município possui MAIOR rebanho de bovinos?", "metric_key": "cattle", "unit": "cabeças de gado", "source": "Microdados oficiais tratados no pacote R datazoom.amazonia (Pesquisa da Pecuária Municipal (PPM/IBGE 2023)).", "left": {"name": "Alta Floresta", "uf": "MT", "val": "753.449 cabeças de gado", "num": 753449}, "right": {"name": "Redenção", "uf": "PA", "val": "315.521 cabeças de gado", "num": 315521}, "winner": "left"}, {"id": "v-17", "num": 17, "category": "SOY — Produção Agrícola Municipal (PAM/IBGE 2023)", "question": "Qual município possui MAIOR produção de soja?", "metric_key": "soy", "unit": "toneladas de grão", "source": "Microdados oficiais tratados no pacote R datazoom.amazonia (Produção Agrícola Municipal (PAM/IBGE 2023)).", "left": {"name": "Nova Mutum", "uf": "MT", "val": "1.529.300 toneladas de grão", "num": 1529300}, "right": {"name": "Vilhena", "uf": "RO", "val": "164.500 toneladas de grão", "num": 164500}, "winner": "left"}, {"id": "v-18", "num": 18, "category": "POP — Censo Demográfico (IBGE 2022)", "question": "Qual município registrou MAIOR população no Censo?", "metric_key": "pop", "unit": "habitantes", "source": "Microdados oficiais tratados no pacote R datazoom.amazonia (Censo Demográfico (IBGE 2022)).", "left": {"name": "Castanhal", "uf": "PA", "val": "192.256 habitantes", "num": 192256}, "right": {"name": "Sinop", "uf": "MT", "val": "196.312 habitantes", "num": 196312}, "winner": "right"}, {"id": "v-19", "num": 19, "category": "CATTLE — Pesquisa da Pecuária Municipal (PPM/IBGE 2023)", "question": "Qual município possui MAIOR rebanho bovino?", "metric_key": "cattle", "unit": "cabeças de gado", "source": "Microdados oficiais tratados no pacote R datazoom.amazonia (Pesquisa da Pecuária Municipal (PPM/IBGE 2023)).", "left": {"name": "Rondon do Pará", "uf": "PA", "val": "374.950 cabeças de gado", "num": 374950}, "right": {"name": "Vilhena", "uf": "RO", "val": "170.512 cabeças de gado", "num": 170512}, "winner": "left"}, {"id": "v-20", "num": 20, "category": "SOY — Produção Agrícola Municipal (PAM/IBGE 2023)", "question": "Qual município produz MAIS toneladas de soja?", "metric_key": "soy", "unit": "toneladas de grão", "source": "Microdados oficiais tratados no pacote R datazoom.amazonia (Produção Agrícola Municipal (PAM/IBGE 2023)).", "left": {"name": "Canarana", "uf": "MT", "val": "1.209.000 toneladas de grão", "num": 1209000}, "right": {"name": "Pedro Afonso", "uf": "TO", "val": "67.464 toneladas de grão", "num": 67464}, "winner": "left"}];

// 5 DEFINIÇÕES DE GRIDS DETERMINÍSTICOS COM COMBINAÇÕES 100% GARANTIDAS
const PRESET_GRIDS_STATES = [
  // Grid 1
  {
    rows: [
      { title: "População Superior a 2 Milhões", test: s => s.pop > 2000000, val: s => s.pop.toLocaleString('pt-BR') + ' hab.' },
      { title: "População Inferior a 2 Milhões", test: s => s.pop < 2000000, val: s => s.pop.toLocaleString('pt-BR') + ' hab.' },
      { title: "Rebanho Bovino Superior a 5 Milhões de Cabeças", test: s => s.cattle > 5000000, val: s => s.cattle.toLocaleString('pt-BR') + ' cab.' }
    ],
    cols: [
      { title: "Produção de Soja Superior a 1 Milhão de Toneladas", test: s => s.soy > 1000000, val: s => s.soy.toLocaleString('pt-BR') + ' ton' },
      { title: "Possui Municípios no Arco do Desmatamento", test: s => s.in_arco, val: s => "Sim" },
      { title: "Não Possui Municípios no Arco do Desmatamento", test: s => !s.in_arco, val: s => "Não" }
    ]
  },
  // Grid 2
  {
    rows: [
      { title: "Rebanho Bovino Superior a 10 Milhões de Cabeças", test: s => s.cattle > 10000000, val: s => s.cattle.toLocaleString('pt-BR') + ' cab.' },
      { title: "Rebanho Bovino Inferior a 10 Milhões de Cabeças", test: s => s.cattle < 10000000, val: s => s.cattle.toLocaleString('pt-BR') + ' cab.' },
      { title: "Possui Municípios no Arco do Desmatamento", test: s => s.in_arco, val: s => "Sim" }
    ],
    cols: [
      { title: "População Superior a 1,5 Milhão de Habitantes", test: s => s.pop > 1500000, val: s => s.pop.toLocaleString('pt-BR') + ' hab.' },
      { title: "Produção de Soja Superior a 500 Mil Toneladas", test: s => s.soy > 500000, val: s => s.soy.toLocaleString('pt-BR') + ' ton' },
      { title: "Produção de Soja Inferior a 500 Mil Toneladas", test: s => s.soy < 500000, val: s => s.soy.toLocaleString('pt-BR') + ' ton' }
    ]
  },
  // Grid 3
  {
    rows: [
      { title: "Produção de Soja Superior a 2 Milhões de Toneladas", test: s => s.soy > 2000000, val: s => s.soy.toLocaleString('pt-BR') + ' ton' },
      { title: "Produção de Soja Inferior a 2 Milhões de Toneladas", test: s => s.soy < 2000000, val: s => s.soy.toLocaleString('pt-BR') + ' ton' },
      { title: "População Superior a 3 Milhões de Habitantes", test: s => s.pop > 3000000, val: s => s.pop.toLocaleString('pt-BR') + ' hab.' }
    ],
    cols: [
      { title: "Rebanho Bovino Superior a 5 Milhões de Cabeças", test: s => s.cattle > 5000000, val: s => s.cattle.toLocaleString('pt-BR') + ' cab.' },
      { title: "Rebanho Bovino Inferior a 5 Milhões de Cabeças", test: s => s.cattle < 5000000, val: s => s.cattle.toLocaleString('pt-BR') + ' cab.' },
      { title: "Possui Municípios no Arco do Desmatamento", test: s => s.in_arco, val: s => "Sim" }
    ]
  },
  // Grid 4
  {
    rows: [
      { title: "População Superior a 2 Milhões", test: s => s.pop > 2000000, val: s => s.pop.toLocaleString('pt-BR') + ' hab.' },
      { title: "Possui Municípios no Arco do Desmatamento", test: s => s.in_arco, val: s => "Sim" },
      { title: "Não Possui Municípios no Arco do Desmatamento", test: s => !s.in_arco, val: s => "Não" }
    ],
    cols: [
      { title: "Rebanho Bovino Superior a 10 Milhões de Cabeças", test: s => s.cattle > 10000000, val: s => s.cattle.toLocaleString('pt-BR') + ' cab.' },
      { title: "Produção de Soja Superior a 1 Milhão de Toneladas", test: s => s.soy > 1000000, val: s => s.soy.toLocaleString('pt-BR') + ' ton' },
      { title: "População Inferior a 3 Milhões de Habitantes", test: s => s.pop < 3000000, val: s => s.pop.toLocaleString('pt-BR') + ' hab.' }
    ]
  },
  // Grid 5
  {
    rows: [
      { title: "Rebanho Bovino Superior a 15 Milhões de Cabeças", test: s => s.cattle > 15000000, val: s => s.cattle.toLocaleString('pt-BR') + ' cab.' },
      { title: "Rebanho Bovino Inferior a 15 Milhões de Cabeças", test: s => s.cattle < 15000000, val: s => s.cattle.toLocaleString('pt-BR') + ' cab.' },
      { title: "Produção de Soja Superior a 2 Milhões de Toneladas", test: s => s.soy > 2000000, val: s => s.soy.toLocaleString('pt-BR') + ' ton' }
    ],
    cols: [
      { title: "População Superior a 2 Milhões de Habitantes", test: s => s.pop > 2000000, val: s => s.pop.toLocaleString('pt-BR') + ' hab.' },
      { title: "População Inferior a 2 Milhões de Habitantes", test: s => s.pop < 2000000, val: s => s.pop.toLocaleString('pt-BR') + ' hab.' },
      { title: "Possui Municípios no Arco do Desmatamento", test: s => s.in_arco, val: s => "Sim" }
    ]
  }
];

const PRESET_GRIDS_MUNICS = [
  // Grid 1
  {
    rows: [
      { title: "População Superior a 50 Mil Habitantes", test: m => m.pop > 50000, val: m => m.pop.toLocaleString('pt-BR') + ' hab.' },
      { title: "População Inferior a 50 Mil Habitantes", test: m => m.pop < 50000, val: m => m.pop.toLocaleString('pt-BR') + ' hab.' },
      { title: "Rebanho Bovino Superior a 100 Mil Cabeças", test: m => m.cattle > 100000, val: m => m.cattle.toLocaleString('pt-BR') + ' cab.' }
    ],
    cols: [
      { title: "Produção de Soja Registrada (PAM/IBGE)", test: m => m.soy > 0, val: m => m.soy.toLocaleString('pt-BR') + ' ton' },
      { title: "Município no Arco do Desmatamento (Portaria MMA)", test: m => m.in_arco, val: m => "Sim" },
      { title: "Município Fora do Arco do Desmatamento", test: m => !m.in_arco, val: m => "Não" }
    ]
  },
  // Grid 2
  {
    rows: [
      { title: "Rebanho Bovino Superior a 200 Mil Cabeças", test: m => m.cattle > 200000, val: m => m.cattle.toLocaleString('pt-BR') + ' cab.' },
      { title: "Rebanho Bovino Inferior a 50 Mil Cabeças", test: m => m.cattle < 50000, val: m => m.cattle.toLocaleString('pt-BR') + ' cab.' },
      { title: "Município no Arco do Desmatamento", test: m => m.in_arco, val: m => "Sim" }
    ],
    cols: [
      { title: "População Superior a 30 Mil Habitantes", test: m => m.pop > 30000, val: m => m.pop.toLocaleString('pt-BR') + ' hab.' },
      { title: "Produção de Soja Superior a 50 Mil Toneladas", test: m => m.soy > 50000, val: m => m.soy.toLocaleString('pt-BR') + ' ton' },
      { title: "Município Fora do Arco do Desmatamento", test: m => !m.in_arco, val: m => "Não" }
    ]
  },
  // Grid 3
  {
    rows: [
      { title: "Localizado no Pará (PA)", test: m => m.uf === 'PA', val: m => m.uf },
      { title: "Localizado no Mato Grosso (MT)", test: m => m.uf === 'MT', val: m => m.uf },
      { title: "Localizado em Rondônia ou Amazonas (RO / AM)", test: m => ['RO', 'AM'].includes(m.uf), val: m => m.uf }
    ],
    cols: [
      { title: "População Superior a 40 Mil Habitantes", test: m => m.pop > 40000, val: m => m.pop.toLocaleString('pt-BR') + ' hab.' },
      { title: "Rebanho Bovino Superior a 150 Mil Cabeças", test: m => m.cattle > 150000, val: m => m.cattle.toLocaleString('pt-BR') + ' cab.' },
      { title: "Município no Arco do Desmatamento", test: m => m.in_arco, val: m => "Sim" }
    ]
  },
  // Grid 4
  {
    rows: [
      { title: "Produção de Soja Superior a 100 Mil Toneladas", test: m => m.soy > 100000, val: m => m.soy.toLocaleString('pt-BR') + ' ton' },
      { title: "Sem Produção de Soja Registrada", test: m => m.soy === 0, val: m => "0 ton" },
      { title: "População Superior a 50 Mil Habitantes", test: m => m.pop > 50000, val: m => m.pop.toLocaleString('pt-BR') + ' hab.' }
    ],
    cols: [
      { title: "Rebanho Bovino Superior a 100 Mil Cabeças", test: m => m.cattle > 100000, val: m => m.cattle.toLocaleString('pt-BR') + ' cab.' },
      { title: "Município no Arco do Desmatamento", test: m => m.in_arco, val: m => "Sim" },
      { title: "Município Fora do Arco do Desmatamento", test: m => !m.in_arco, val: m => "Não" }
    ]
  },
  // Grid 5
  {
    rows: [
      { title: "População Superior a 100 Mil Habitantes", test: m => m.pop > 100000, val: m => m.pop.toLocaleString('pt-BR') + ' hab.' },
      { title: "População Entre 30 Mil e 100 Mil Habitantes", test: m => m.pop >= 30000 && m.pop <= 100000, val: m => m.pop.toLocaleString('pt-BR') + ' hab.' },
      { title: "Rebanho Bovino Superior a 300 Mil Cabeças", test: m => m.cattle > 300000, val: m => m.cattle.toLocaleString('pt-BR') + ' cab.' }
    ],
    cols: [
      { title: "Produção de Soja Registrada (PAM/IBGE)", test: m => m.soy > 0, val: m => m.soy.toLocaleString('pt-BR') + ' ton' },
      { title: "Município no Arco do Desmatamento", test: m => m.in_arco, val: m => "Sim" },
      { title: "Localizado no Pará ou Maranhão (PA / MA)", test: m => ['PA', 'MA'].includes(m.uf), val: m => m.uf }
    ]
  }
];

// VARIÁVEIS GLOBAIS DE ESTADO
let currentMode = 'home'; // 'home', 'grid', 'versus', 'scores'
let currentGridDifficulty = 'easy'; // 'easy' (default no grid), 'medium', 'hard'
let currentGridIndex = 0; // 0 a 4 (Grids #1 a #5)
let activeDataset = DATA_STATES;
let activeGridSpec = PRESET_GRIDS_STATES[0];

let gridBoardState = [
  [null, null, null],
  [null, null, null],
  [null, null, null]
];
let usedEntityIds = new Set();
let gridScore = 1000;
let gridTries = 9;
let gridHits = 0;
let gridTimerSeconds = 0;
let gridTimerInterval = null;
let activeCellTarget = null;

// VARIÁVEIS DO MODO VERSUS
let currentVersusIndex = 0;
let versusAnswers = new Array(20).fill(null);
let versusScore = 0;
let versusStreak = 0;
let versusTimerSeconds = 0;
let versusTimerInterval = null;

// NAVEGAÇÃO ENTRE TELAS E MODOS
function openGameMode(mode) {
  currentMode = mode;
  document.getElementById('panel-home').style.display = (mode === 'home') ? 'block' : 'none';
  document.getElementById('top-nav-switcher').style.display = (mode === 'home') ? 'none' : 'flex';

  document.getElementById('panel-grid').classList.toggle('active', mode === 'grid');
  document.getElementById('panel-versus').classList.toggle('active', mode === 'versus');
  document.getElementById('panel-scores').classList.toggle('active', mode === 'scores');

  document.getElementById('btn-tab-grid').classList.toggle('active', mode === 'grid');
  document.getElementById('btn-tab-versus').classList.toggle('active', mode === 'versus');
  document.getElementById('btn-tab-scores').classList.toggle('active', mode === 'scores');

  if (mode === 'grid') {
    loadGridPreset();
  } else if (mode === 'versus') {
    initVersusUI();
  } else if (mode === 'scores') {
    renderLeaderboard();
  }
}

// =========================================================
// MODO GRID: LÓGICA E INTERAÇÃO
// =========================================================
function setGridDifficulty(lvl) {
  currentGridDifficulty = lvl;
  document.getElementById('lvl-easy').classList.toggle('active', lvl === 'easy');
  document.getElementById('lvl-medium').classList.toggle('active', lvl === 'medium');
  document.getElementById('lvl-hard').classList.toggle('active', lvl === 'hard');

  // Ajusta dataset e presets
  if (lvl === 'easy') {
    activeDataset = DATA_STATES;
  } else if (lvl === 'medium') {
    activeDataset = DATA_MEDIUM;
  } else {
    activeDataset = DATA_HARD;
  }

  // Mostrar dicas APENAS no difícil
  document.getElementById('hints-panel').style.display = (lvl === 'hard') ? 'block' : 'none';

  loadGridPreset();
}

function selectDailyGrid(num) {
  currentGridIndex = num - 1;
  for (let i = 1; i <= 5; i++) {
    document.getElementById(`pill-grid-${i}`).classList.toggle('active', i === num);
  }
  loadGridPreset();
}

function loadGridPreset() {
  clearInterval(gridTimerInterval);
  gridTimerSeconds = 0;
  gridScore = 1000;
  gridTries = 9;
  gridHits = 0;
  usedEntityIds.clear();
  gridBoardState = [[null, null, null], [null, null, null], [null, null, null]];

  updateGridStatusDisplay();
  startGridTimer();

  const presets = (currentGridDifficulty === 'easy') ? PRESET_GRIDS_STATES : PRESET_GRIDS_MUNICS;
  activeGridSpec = presets[currentGridIndex % presets.length];

  // Renderizar critérios
  for (let i = 0; i < 3; i++) {
    document.getElementById(`col-header-${i}`).innerText = activeGridSpec.cols[i].title;
    document.getElementById(`row-header-${i}`).innerText = activeGridSpec.rows[i].title;
  }

  // Limpar tabuleiro
  for (let r = 0; r < 3; r++) {
    for (let c = 0; c < 3; c++) {
      const cellEl = document.getElementById(`cell-${r}-${c}`);
      cellEl.className = 'grid-cell';
      cellEl.innerHTML = '<span>Selecionar</span>';
    }
  }
  closeCellInput();
}

function resetCurrentGrid() {
  loadGridPreset();
}

function startGridTimer() {
  const timerEl = document.getElementById('grid-timer');
  gridTimerInterval = setInterval(() => {
    gridTimerSeconds++;
    const mins = String(Math.floor(gridTimerSeconds / 60)).padStart(2, '0');
    const secs = String(gridTimerSeconds % 60).padStart(2, '0');
    timerEl.innerText = `${mins}:${secs}`;
  }, 1000);
}

function updateGridStatusDisplay() {
  document.getElementById('grid-score').innerText = gridScore;
  document.getElementById('grid-hits').innerText = gridHits;
  document.getElementById('grid-tries').innerText = gridTries;
}

function openCellInput(r, c) {
  if (gridBoardState[r][c] !== null) return;
  activeCellTarget = { r, c };
  document.getElementById('input-target-title').innerText = 
    `Preenchendo: Linha (${activeGridSpec.rows[r].title}) × Coluna (${activeGridSpec.cols[c].title})`;
  
  const searchInput = document.getElementById('grid-search-field');
  searchInput.value = '';
  document.getElementById('cell-input-panel').style.display = 'block';
  document.getElementById('hint-display').innerText = '';
  
  renderOptionsList('');
  searchInput.focus();
}

function closeCellInput() {
  activeCellTarget = null;
  document.getElementById('cell-input-panel').style.display = 'none';
}

// RENDERIZAÇÃO DA LISTA DE OPÇÕES (SEM ENTREGAR NENHUMA MÉTRICA DE RESPOSTA)
function renderOptionsList(query) {
  const container = document.getElementById('grid-options-container');
  const cleanQ = query.trim().toLowerCase();

  const filtered = activeDataset.filter(item => {
    if (usedEntityIds.has(item.id)) return false;
    if (!cleanQ) return true; // Lista completa
    return item.name.toLowerCase().includes(cleanQ) || item.uf.toLowerCase().includes(cleanQ);
  });

  if (filtered.length === 0) {
    container.innerHTML = '<div style="padding: 16px; text-align: center; color: #888;">Nenhuma localidade corresponde à busca.</div>';
    return;
  }

  // Exibe estritamente Nome e UF, sem mostrar valores das métricas!
  container.innerHTML = filtered.map(item => `
    <div class="option-row" onclick="selectCandidate('${item.id}')">
      <span><strong>${item.name}</strong> (${item.uf})</span>
      <span style="font-size: 11px; color: var(--green-btn); font-weight: 700;">Selecionar</span>
    </div>
  `).join('');
}

function selectCandidate(entityId) {
  if (!activeCellTarget) return;
  const { r, c } = activeCellTarget;
  const candidate = activeDataset.find(e => e.id === entityId);
  if (!candidate) return;

  const rowRule = activeGridSpec.rows[r];
  const colRule = activeGridSpec.cols[c];
  const rowOk = rowRule.test(candidate);
  const colOk = colRule.test(candidate);

  gridTries--;

  if (rowOk && colOk) {
    // ACERTO
    gridBoardState[r][c] = candidate;
    usedEntityIds.add(candidate.id);
    gridHits++;
    gridScore += 100;

    const cellEl = document.getElementById(`cell-${r}-${c}`);
    cellEl.className = 'grid-cell filled';
    cellEl.innerHTML = `
      <div class="grid-cell-city">${candidate.name} (${candidate.uf})</div>
      <div class="grid-cell-meta">${rowRule.val(candidate)} | ${colRule.val(candidate)}</div>
    `;
    closeCellInput();

    if (gridHits === 9) {
      handleGridEnd(true, "Parabéns! Você completou com sucesso todos os quadrantes do DataGrid!");
      return;
    }
  } else {
    // ERRO
    gridScore = Math.max(0, gridScore - 50);
    alert(`Incorreto! ${candidate.name} (${candidate.uf}) não atende aos dois critérios combinados.`);
  }

  updateGridStatusDisplay();
  checkGridDefeat();
}

function checkGridDefeat() {
  if (gridTries <= 0 && gridHits < 9) {
    handleGridEnd(false, "Fim de Jogo: Suas 9 tentativas se esgotaram antes de completar o tabuleiro.");
    return;
  }

  // Checar se ainda existem candidatos válidos para as células vazias
  let anyCellPossible = false;
  for (let r = 0; r < 3; r++) {
    for (let c = 0; c < 3; c++) {
      if (gridBoardState[r][c] === null) {
        const hasMatch = activeDataset.some(e => 
          !usedEntityIds.has(e.id) && 
          activeGridSpec.rows[r].test(e) && 
          activeGridSpec.cols[c].test(e)
        );
        if (hasMatch) {
          anyCellPossible = true;
          break;
        }
      }
    }
    if (anyCellPossible) break;
  }

  if (!anyCellPossible && gridHits < 9) {
    handleGridEnd(false, "Fim de Jogo: Não existem mais combinações possíveis com as localidades restantes.");
  }
}

function requestHint(level) {
  if (!activeCellTarget || currentGridDifficulty !== 'hard') return;
  const { r, c } = activeCellTarget;
  const matches = activeDataset.filter(e => 
    !usedEntityIds.has(e.id) && 
    activeGridSpec.rows[r].test(e) && 
    activeGridSpec.cols[c].test(e)
  );

  const display = document.getElementById('hint-display');
  if (matches.length === 0) {
    display.innerText = "Não há mais opções válidas restantes para esta célula.";
    return;
  }

  const choice = matches[Math.floor(Math.random() * matches.length)];
  if (level === 1) {
    gridScore = Math.max(0, gridScore - 100);
    display.innerText = `Dica 1: Um dos municípios válidos pertence ao estado de ${choice.uf}.`;
  } else if (level === 2) {
    gridScore = Math.max(0, gridScore - 200);
    display.innerText = `Dica 2: Um dos municípios válidos começa com a letra '${choice.name.charAt(0)}'.`;
  }
  updateGridStatusDisplay();
}

function handleGridEnd(victory, message) {
  clearInterval(gridTimerInterval);
  const modal = document.getElementById('game-modal');
  const title = document.getElementById('modal-title');
  const body = document.getElementById('modal-body');

  title.innerText = victory ? "Vitória Completa!" : "Fim de Jogo";
  title.className = `modal-title ${victory ? 'victory' : 'defeat'}`;
  body.innerText = `${message} Pontuação Final: ${gridScore} pts | Tempo: ${document.getElementById('grid-timer').innerText}`;
  modal.style.display = 'flex';

  saveRecord('DataGrid (' + currentGridDifficulty + ')', gridScore, document.getElementById('grid-timer').innerText);
}

function closeGameModal() {
  document.getElementById('game-modal').style.display = 'none';
  loadGridPreset();
}

// =========================================================
// MODO VERSUS: 20 DESAFIOS DIÁRIOS COM CLIQUE DIRETO NO MAIOR
// =========================================================
function initVersusUI() {
  renderVersusPills();
  startVersusTimer();
  loadVersusQuestion(currentVersusIndex);
}

function renderVersusPills() {
  const container = document.getElementById('versus-pill-buttons');
  container.innerHTML = VERSUS_PUZZLES.map((p, idx) => `
    <button class="daily-pill-btn ${idx === currentVersusIndex ? 'active' : ''}" 
            id="vpill-${idx}" 
            onclick="loadVersusQuestion(${idx})">
      #${idx + 1}
    </button>
  `).join('');
}

function startVersusTimer() {
  if (versusTimerInterval) return;
  const timerEl = document.getElementById('versus-timer');
  versusTimerInterval = setInterval(() => {
    versusTimerSeconds++;
    const mins = String(Math.floor(versusTimerSeconds / 60)).padStart(2, '0');
    const secs = String(versusTimerSeconds % 60).padStart(2, '0');
    timerEl.innerText = `${mins}:${secs}`;
  }, 1000);
}

function loadVersusQuestion(idx) {
  currentVersusIndex = idx;
  for (let i = 0; i < 20; i++) {
    const pill = document.getElementById(`vpill-${i}`);
    if (pill) pill.classList.toggle('active', i === idx);
  }

  const puzzle = VERSUS_PUZZLES[idx];
  document.getElementById('versus-category').innerText = puzzle.category;
  document.getElementById('versus-question').innerText = puzzle.question;

  const cardL = document.getElementById('vcard-left');
  const cardR = document.getElementById('vcard-right');
  const valL = document.getElementById('vcard-left-val');
  const valR = document.getElementById('vcard-right-val');
  const feedback = document.getElementById('versus-feedback-box');

  // Reset classes e visualização
  cardL.className = 'versus-card';
  cardR.className = 'versus-card';
  valL.style.display = 'none';
  valR.style.display = 'none';
  feedback.style.display = 'none';

  document.getElementById('vcard-left-name').innerText = puzzle.left.name;
  document.getElementById('vcard-left-uf').innerText = puzzle.left.uf;
  valL.innerText = puzzle.left.val;

  document.getElementById('vcard-right-name').innerText = puzzle.right.name;
  document.getElementById('vcard-right-uf').innerText = puzzle.right.uf;
  valR.innerText = puzzle.right.val;

  // Se já foi respondido, renderiza o estado salvo
  if (versusAnswers[idx] !== null) {
    renderVersusAnswered(idx);
  }
}

// CLIQUE DIRETO NO CARD QUE O USUÁRIO CONSIDERA MAIOR
function handleVersusSelection(chosenSide) {
  if (versusAnswers[currentVersusIndex] !== null) return; // Já respondido

  const puzzle = VERSUS_PUZZLES[currentVersusIndex];
  const isCorrect = (chosenSide === puzzle.winner);

  versusAnswers[currentVersusIndex] = {
    chosen: chosenSide,
    correct: isCorrect
  };

  if (isCorrect) {
    versusScore++;
    versusStreak++;
  } else {
    versusStreak = 0;
  }

  document.getElementById('versus-score-badge').innerText = `${versusScore} / 20`;
  document.getElementById('versus-streak-badge').innerText = versusStreak;

  renderVersusAnswered(currentVersusIndex);
}

function renderVersusAnswered(idx) {
  const ans = versusAnswers[idx];
  const puzzle = VERSUS_PUZZLES[idx];
  const cardL = document.getElementById('vcard-left');
  const cardR = document.getElementById('vcard-right');
  const valL = document.getElementById('vcard-left-val');
  const valR = document.getElementById('vcard-right-val');
  const feedback = document.getElementById('versus-feedback-box');
  const statusTitle = document.getElementById('versus-feedback-status');
  const feedbackText = document.getElementById('versus-feedback-text');

  // Revela valores
  valL.style.display = 'block';
  valR.style.display = 'block';

  // Marcação visual: O lado certo sempre fica verde. O escolhido errado fica vermelho.
  if (puzzle.winner === 'left') {
    cardL.classList.add('correct');
    if (ans.chosen === 'right') cardR.classList.add('wrong');
  } else {
    cardR.classList.add('correct');
    if (ans.chosen === 'left') cardL.classList.add('wrong');
  }

  // Feedback Box com cor explícita
  if (ans.correct) {
    feedback.className = 'feedback-box correct';
    statusTitle.innerText = "Correto!";
    feedbackText.innerHTML = `
      <strong>${puzzle.winner === 'left' ? puzzle.left.name : puzzle.right.name} (${puzzle.winner === 'left' ? puzzle.left.uf : puzzle.right.uf})</strong> 
      possui <strong>${puzzle.winner === 'left' ? puzzle.left.val : puzzle.right.val}</strong>, superando 
      <strong>${puzzle.winner === 'left' ? puzzle.right.name : puzzle.left.name} (${puzzle.winner === 'left' ? puzzle.right.uf : puzzle.left.uf})</strong> 
      com <strong>${puzzle.winner === 'left' ? puzzle.right.val : puzzle.left.val}</strong>.<br>
      <span style="font-size: 11px; color: #556055; margin-top: 4px; display: inline-block;"><strong>Fonte Oficial:</strong> ${puzzle.source}</span>
    `;
  } else {
    feedback.className = 'feedback-box wrong';
    statusTitle.innerText = "Incorreto!";
    feedbackText.innerHTML = `
      <strong>${puzzle.winner === 'left' ? puzzle.left.name : puzzle.right.name} (${puzzle.winner === 'left' ? puzzle.left.uf : puzzle.right.uf})</strong> 
      é quem possui o maior valor com <strong>${puzzle.winner === 'left' ? puzzle.left.val : puzzle.right.val}</strong>, enquanto 
      <strong>${puzzle.winner === 'left' ? puzzle.right.name : puzzle.left.name} (${puzzle.winner === 'left' ? puzzle.right.uf : puzzle.left.uf})</strong> 
      possui <strong>${puzzle.winner === 'left' ? puzzle.right.val : puzzle.left.val}</strong>.<br>
      <span style="font-size: 11px; color: #721c24; margin-top: 4px; display: inline-block;"><strong>Fonte Oficial:</strong> ${puzzle.source}</span>
    `;
  }
  feedback.style.display = 'block';

  // Atualiza cor da pílula
  const pill = document.getElementById(`vpill-${idx}`);
  if (pill) {
    pill.style.background = ans.correct ? '#2f7d32' : '#c62828';
    pill.style.color = '#ffffff';
    pill.style.borderColor = ans.correct ? '#2f7d32' : '#c62828';
  }

  // Salva no recorde se terminou os 20
  const answeredTotal = versusAnswers.filter(a => a !== null).length;
  if (answeredTotal === 20) {
    saveRecord('Versus (20 Desafios)', `${versusScore} acertos`, document.getElementById('versus-timer').innerText);
  }
}

function goToNextVersus() {
  if (currentVersusIndex < 19) {
    loadVersusQuestion(currentVersusIndex + 1);
  } else {
    alert(`Fim dos 20 desafios! Você acertou ${versusScore} de 20 perguntas. Tempo total: ${document.getElementById('versus-timer').innerText}`);
  }
}

function resetVersusGame() {
  versusAnswers.fill(null);
  versusScore = 0;
  versusStreak = 0;
  versusTimerSeconds = 0;
  document.getElementById('versus-score-badge').innerText = '0 / 20';
  document.getElementById('versus-streak-badge').innerText = '0';
  document.getElementById('versus-timer').innerText = '00:00';
  renderVersusPills();
  loadVersusQuestion(0);
}

// =========================================================
// PLACAR E LOCALSTORAGE
// =========================================================
function saveRecord(mode, scoreVal, timeStr) {
  try {
    const list = JSON.parse(localStorage.getItem('datazoom_records') || '[]');
    list.unshift({
      mode: mode,
      score: scoreVal,
      time: timeStr,
      date: new Date().toLocaleDateString('pt-BR')
    });
    localStorage.setItem('datazoom_records', JSON.stringify(list.slice(0, 15)));
  } catch (e) {
    console.warn("localStorage indisponível:", e);
  }
}

function renderLeaderboard() {
  const tbody = document.getElementById('leaderboard-body');
  try {
    const list = JSON.parse(localStorage.getItem('datazoom_records') || '[]');
    if (list.length === 0) {
      tbody.innerHTML = '<tr><td colspan="4" style="text-align: center; color: #888;">Nenhuma partida concluída ainda.</td></tr>';
      return;
    }
    tbody.innerHTML = list.map(item => `
      <tr>
        <td><strong>${item.mode}</strong></td>
        <td><span style="font-family: monospace; font-weight: 700; color: var(--green-btn);">${item.score}</span></td>
        <td>${item.time}</td>
        <td style="color: #666; font-size: 11px;">${item.date}</td>
      </tr>
    `).join('');
  } catch (e) {
    tbody.innerHTML = '<tr><td colspan="4" style="text-align: center; color: #888;">Erro ao carregar recordes.</td></tr>';
  }
}

window.addEventListener('DOMContentLoaded', () => {
  // Default: Inicia na tela de boas-vindas para o usuário escolher o modo
  openGameMode('home');
});
</script>

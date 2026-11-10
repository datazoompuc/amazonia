---
layout: default
title: Datazoom minigames
lang: pt
description: "Explore os microdados oficiais da Amazônia Legal pelos nossos minigames!"
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
    font-size: 28px;
    font-weight: 800;
    color: #1a2e1a;
    margin-bottom: 8px;
  }
  .hub-subtitle {
    font-size: 14px;
    color: #4a5c4a;
    max-width: 680px;
    margin: 0 auto 28px auto;
    line-height: 1.5;
  }
  .mode-cards-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
    gap: 16px;
    max-width: 960px;
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

  /* NAVEGACAO SUPERIOR */
  .hub-switcher {
    display: flex;
    justify-content: center;
    gap: 8px;
    margin: 20px 0 24px 0;
    flex-wrap: wrap;
  }
  .hub-btn {
    font-family: 'Inter', sans-serif;
    font-size: 13px;
    font-weight: 700;
    padding: 9px 16px;
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

  /* PILULAS */
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
    border: 2px dashed #b8ceb8 !important;
    background: #ffffff !important;
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
    border-color: var(--green-btn) !important;
    background: #f7faf7 !important;
  }
  .grid-cell.filled {
    border: 2px solid var(--green-btn) !important;
    background: #f0f7f0 !important;
    cursor: default;
  }
  .grid-cell.gabarito-cell {
    border: 2px solid #c62828 !important;
    background: #fff5f5 !important;
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

  /* SELECAO DA CELULA */
  .cell-select-modal {
    display: none;
    background: #fdfefe;
    border: 2px solid var(--border-tech);
    border-radius: 6px;
    padding: 18px;
    margin-bottom: 22px;
    animation: fadeIn 0.15s ease;
  }
  @keyframes fadeIn {
    from { opacity: 0; transform: translateY(-4px); }
    to { opacity: 1; transform: translateY(0); }
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

  /* ALERTA IN-APP */
  .grid-inline-alert {
    display: none;
    padding: 10px 14px;
    border-radius: 4px;
    font-size: 13px;
    margin-bottom: 12px;
    font-weight: 600;
  }
  .grid-inline-alert.wrong {
    background: var(--danger-bg);
    border: 1px solid var(--danger-border);
    color: #721c24;
  }

  /* VERSUS ARENA */
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

  /* FEEDBACK BOX */
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

  /* TELA FINAL IN-PANEL */
  .completion-panel {
    display: none;
    background: #ffffff;
    border: 2px solid #b8ceb8;
    border-radius: 6px;
    padding: 30px 24px;
    text-align: center;
    margin: 20px 0;
  }
  .countdown-box {
    margin-top: 18px;
    padding: 14px;
    background: #f4f8f4;
    border: 1px dashed #b8ceb8;
    border-radius: 4px;
    display: inline-block;
    font-size: 14px;
    color: #2e4d32;
  }
  .countdown-timer {
    font-family: 'JetBrains Mono', monospace;
    font-weight: 800;
    font-size: 18px;
    color: var(--green-btn);
  }

  /* FORMULARIO DE NOME */
  .player-name-wrap {
    margin: 18px auto 14px auto;
    max-width: 320px;
    display: flex;
    gap: 6px;
  }
  .player-name-input {
    flex: 1;
    padding: 8px 12px;
    border: 1px solid #c2d6c2;
    border-radius: 4px;
    font-size: 13px;
    outline: none;
  }
  .player-name-input:focus {
    border-color: var(--green-btn);
  }
  .modal-btn {
    font-size: 12px;
    font-weight: 700;
    color: #ffffff;
    background: var(--green-btn);
    padding: 8px 14px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background 0.15s ease;
  }
  .modal-btn:hover {
    background: var(--green-hover);
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

  .data-status-note {
    font-size: 11px;
    color: #556055;
    margin-top: 8px;
    font-style: italic;
  }
</style>

<div class="jogos-wrapper">

  <!-- TELA INICIAL (DEFAULT): ESCOLHA DE MODO -->
  <div class="hub-welcome" id="panel-home">
    <div class="hub-title">Datazoom minigames</div>
    <div class="hub-subtitle">
      Explore os microdados oficiais da Amazônia Legal pelos nossos minigames! Escolha um dos modos abaixo para iniciar.
      <div class="data-status-note" id="home-data-badge">Carregando dados oficiais dos .rds...</div>
    </div>
    
    <div class="mode-cards-grid">
      <!-- 1. MODO GRID -->
      <div class="mode-card" onclick="openGameMode('grid')">
        <div>
          <div class="mode-card-title">1 - Modo Grid</div>
          <div class="mode-card-desc">
            Complete o tabuleiro 3x3 combinando critérios estatísticos de população, pecuária, agricultura e arco do desmatamento. Escolha entre Estados ou Todos os Municípios.
          </div>
        </div>
        <div class="mode-card-btn">Jogar Modo Grid &rarr;</div>
      </div>

      <!-- 2. MODO VERSUS -->
      <div class="mode-card" onclick="openGameMode('versus-daily')">
        <div>
          <div class="mode-card-title">2 - Modo Versus</div>
          <div class="mode-card-desc">
            5 rodadas do dia com comparações de cidades da Amazônia Legal. Clique diretamente na cidade que possui o maior valor e veja a explicação oficial.
          </div>
        </div>
        <div class="mode-card-btn">Jogar Modo Versus &rarr;</div>
      </div>

      <!-- 3. MODO STREAK -->
      <div class="mode-card" onclick="openGameMode('versus-streak')">
        <div>
          <div class="mode-card-title">3 - Modo Streak</div>
          <div class="mode-card-desc">
            Quantas cidades você consegue acertar em sequência? O jogo continua indefinidamente acumulando seu Streak até o primeiro erro.
          </div>
        </div>
        <div class="mode-card-btn">Jogar Modo Streak &rarr;</div>
      </div>
    </div>
  </div>

  <!-- NAVEGACAO SUPERIOR FIXA (QUANDO EM JOGO) -->
  <div class="hub-switcher" id="top-nav-switcher" style="display: none;">
    <button class="hub-btn" id="btn-tab-home" onclick="openGameMode('home')">&larr; Início / Modos</button>
    <button class="hub-btn" id="btn-tab-grid" onclick="openGameMode('grid')">1 - Modo Grid</button>
    <button class="hub-btn" id="btn-tab-v-daily" onclick="openGameMode('versus-daily')">2 - Modo Versus</button>
    <button class="hub-btn" id="btn-tab-v-streak" onclick="openGameMode('versus-streak')">3 - Modo Streak</button>
    <button class="hub-btn" id="btn-tab-scores" onclick="openGameMode('scores')">Placar &amp; Recordes</button>
  </div>

  <!-- =========================================================
       PAINEL 1: MODO GRID (2 NIVEIS: ESTADOS E MUNICIPIOS)
       ========================================================= -->
  <div class="game-panel" id="panel-grid">
    <div class="control-strip">
      <div class="level-picker">
        <span class="level-label">Dificuldade:</span>
        <button class="level-btn active" id="lvl-easy" onclick="setGridDifficulty('easy')">Fácil (Estados)</button>
        <button class="level-btn" id="lvl-hard" onclick="setGridDifficulty('hard')">Difícil (Municípios)</button>
      </div>
      <div>
        <span style="font-size: 12px; font-weight: 700; color: #556066;">1 Desafio Diário por Nível</span>
      </div>
    </div>

    <!-- Barra de Status com Timer Individual do Grid -->
    <div class="status-bar-tech">
      <div class="status-item">PONTUAÇÃO: <span class="status-val" id="grid-score">1000</span> pts</div>
      <div class="status-item">ACERTOS: <span class="status-val" id="grid-hits">0</span> / 9</div>
      <div class="status-item">TENTATIVAS: <span class="status-val" id="grid-tries">10</span></div>
      <div class="status-item">TEMPO: <span class="status-val" id="grid-timer">00:00</span></div>
    </div>

    <!-- SELECAO DA CELULA (ABRE EM CIMA DO TABULEIRO) -->
    <div class="cell-select-modal" id="cell-input-panel">
      <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 12px;">
        <span style="font-weight: 700; font-size: 13px; color: #223824;" id="input-target-title">Preenchendo Célula</span>
        <button onclick="closeCellInput()" style="background: none; border: none; font-size: 16px; cursor: pointer; color: #888;">&times; Fechar</button>
      </div>

      <!-- Alerta in-app -->
      <div class="grid-inline-alert" id="grid-error-alert"></div>

      <div class="search-box-wrap">
        <input type="text" id="grid-search-field" class="search-input" placeholder="Digite para filtrar..." oninput="renderOptionsList(this.value)" autocomplete="off">
      </div>

      <div class="options-list-scroll" id="grid-options-container"></div>

      <div id="hints-panel" style="display: none; margin-top: 12px;">
        <div class="hint-container">
          <button class="hint-btn" onclick="requestHint(1)">Dica 1: Revelar UF (-100 pts)</button>
          <button class="hint-btn" onclick="requestHint(2)">Dica 2: Revelar Primeira Letra (-200 pts)</button>
        </div>
        <div id="hint-display" style="font-size: 11px; color: #3b5240; font-style: italic; margin-top: 6px;"></div>
      </div>
    </div>

    <!-- Tabuleiro 3x3 -->
    <div class="grid-board" id="grid-board-table">
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

    <!-- TELA FINAL DO GRID (IN-PAGE) -->
    <div class="completion-panel" id="grid-completion-panel">
      <h3 id="grid-completion-title" style="font-size: 22px; font-weight: 800; margin-bottom: 8px;">Desafio Concluído!</h3>
      <p id="grid-completion-msg" style="color: #4a5c4a; font-size: 14px; margin-bottom: 14px;"></p>

      <div class="player-name-wrap">
        <input type="text" id="grid-player-name" class="player-name-input" placeholder="Seu nome para o placar...">
        <button class="modal-btn" onclick="saveGridRecordWithName()">Salvar Recorde</button>
      </div>

      <div class="countdown-box">
        Próximo Grid Diário disponível em: <br>
        <span class="countdown-timer" id="grid-countdown">--:--:--</span>
      </div>
      <div style="margin-top: 18px;" id="grid-completion-actions">
        <button class="modal-btn" id="btn-show-grid-answers" onclick="showGridAnswers()">Ver Gabarito</button>
      </div>
    </div>
  </div>

  <!-- =========================================================
       PAINEL 2: MODO VERSUS / STREAK
       ========================================================= -->
  <div class="game-panel" id="panel-versus">
    <!-- Status Bar Versus / Streak com Timer Individual -->
    <div class="status-bar-tech">
      <div class="status-item" id="v-status-score-wrap">ACERTOS: <span class="status-val" id="versus-score-badge">0 / 5</span></div>
      <div class="status-item">STREAK: <span class="status-val" id="versus-streak-badge">0</span></div>
      <div class="status-item" id="v-status-chances-wrap" style="display: none;">CHANCES RESTANTES HOJE: <span class="status-val" id="streak-chances-badge">3 / 3</span></div>
      <div class="status-item">TEMPO DO DESAFIO: <span class="status-val" id="versus-timer">00:00</span></div>
      <div id="versus-reset-btn-wrap" style="display: none;">
        <button onclick="resetCurrentVersusMode()" class="level-btn" style="color: #666;" id="versus-reset-btn">Reiniciar Tentativa</button>
      </div>
    </div>

    <!-- Seletor do Versus Diário (Para navegação ou revisão) -->
    <div class="daily-selector-bar" id="versus-daily-selector" style="display: none;">
      <span style="font-size: 12px; font-weight: 700; color: #2f7d32; width: 100%; text-align: center; margin-bottom: 4px;">
        5 DESAFIOS DIÁRIOS:
      </span>
      <div id="versus-pill-buttons" style="display: flex; flex-wrap: wrap; gap: 4px; justify-content: center;">
        <button class="daily-pill-btn active" id="vpill-0" onclick="loadVersusDailyQuestion(0)">#1</button>
        <button class="daily-pill-btn" id="vpill-1" onclick="loadVersusDailyQuestion(1)">#2</button>
        <button class="daily-pill-btn" id="vpill-2" onclick="loadVersusDailyQuestion(2)">#3</button>
        <button class="daily-pill-btn" id="vpill-3" onclick="loadVersusDailyQuestion(3)">#4</button>
        <button class="daily-pill-btn" id="vpill-4" onclick="loadVersusDailyQuestion(4)">#5</button>
      </div>
    </div>

    <!-- Container do Jogo Versus -->
    <div class="versus-container" id="versus-game-container">
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

      <!-- Explicacao dos Dados -->
      <div class="feedback-box" id="versus-feedback-box">
        <div style="font-weight: 700; margin-bottom: 4px;" id="versus-feedback-status">Resultado</div>
        <div id="versus-feedback-text"></div>
        <div style="margin-top: 12px; text-align: right;">
          <button class="modal-btn" id="versus-btn-next" onclick="goToNextVersus()">Próximo Desafio &rarr;</button>
        </div>
      </div>
    </div>

    <!-- TELA FINAL DO VERSUS / STREAK -->
    <div class="completion-panel" id="versus-completion-panel">
      <h3 id="versus-completion-title" style="font-size: 22px; font-weight: 800; margin-bottom: 8px;">Desafio Concluído!</h3>
      <p id="versus-completion-msg" style="color: #4a5c4a; font-size: 14px; margin-bottom: 14px;"></p>

      <div class="player-name-wrap">
        <input type="text" id="versus-player-name" class="player-name-input" placeholder="Seu nome para o placar...">
        <button class="modal-btn" onclick="saveVersusRecordWithName()">Salvar Recorde</button>
      </div>

      <div class="countdown-box">
        Novas chances e desafios disponíveis em: <br>
        <span class="countdown-timer" id="versus-countdown">--:--:--</span>
      </div>
      <div style="margin-top: 18px;" id="versus-completion-actions"></div>
    </div>
  </div>

  <!-- =========================================================
       PAINEL 3: RECORDES E PLACAR
       ========================================================= -->
  <div class="game-panel" id="panel-scores">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 12px; flex-wrap: wrap; gap: 8px;">
      <h3 style="font-size: 16px; font-weight: 700; color: #1e3320; margin: 0;">Placar Oficial de Recordes</h3>
      <span style="font-size: 11px; color: #2e4d32; font-weight: 600;" id="lb-sync-badge">Sincronizado</span>
    </div>
    <table class="leaderboard-table">
      <thead>
        <tr>
          <th>Jogador</th>
          <th>Modo</th>
          <th>Resultado / Pontuação</th>
          <th>Tempo</th>
          <th>Data</th>
        </tr>
      </thead>
      <tbody id="leaderboard-body">
        <tr><td colspan="5" style="text-align: center; color: #888;">Carregando recordes...</td></tr>
      </tbody>
    </table>
  </div>
</div>

<script>
// ==============================================================================
// BASES DE DADOS OFICIAIS (CARREGAMENTO DINAMICO DE MINIGAMES_DATA.JSON)
// ==============================================================================
var BASE_URL = "{{ site.baseurl }}";
var DATA_JSON_URL = BASE_URL + "/assets/data/minigames_data.json";
var STATIC_LB_URL = BASE_URL + "/assets/data/leaderboard.json";
var LOCAL_API_LB_URL = BASE_URL + "/api/leaderboard";
var REMOTE_LEADERBOARD_ENDPOINT = window.DZ_LEADERBOARD_API_URL || "";

var DATA_STATES = [];
var DATA_HARD = [];

// Municipios prioritarios para o Arco do Desmatamento (MMA / INPE)
var ARCO_DESMATAMENTO_NAMES = {
  "Acrelândia": true, "Alta Floresta": true, "Altamira": true, "Anapu": true,
  "Apuí": true, "Aripuanã": true, "Ariquemes": true, "Boca do Acre": true,
  "Brasil Novo": true, "Brasiléia": true, "Brasnorte": true, "Bujari": true,
  "Buritis": true, "Cacoal": true, "Candeias do Jamari": true, "Canutama": true,
  "Capixaba": true, "Castanheira": true, "Cláudia": true, "Colniza": true,
  "Cotriguaçu": true, "Cujubim": true, "Cumaru do Norte": true, "Feijó": true,
  "Feliz Natal": true, "Humaitá": true, "Itaituba": true, "Jacareacanga": true,
  "Juara": true, "Juína": true, "Lábrea": true, "Machadinho D'Oeste": true,
  "Marabá": true, "Marcelândia": true, "Medicilândia": true, "Monte Negro": true,
  "Nova Bandeirantes": true, "Nova Canaã do Norte": true, "Nova Maringá": true,
  "Novo Progresso": true, "Novo Repartimento": true, "Pacajá": true, "Paragominas": true,
  "Parauapebas": true, "Peixoto de Azevedo": true, "Plácido de Castro": true,
  "Porto dos Gaúchos": true, "Porto Velho": true, "Prainha": true, "Rio Branco": true,
  "Rio Crespo": true, "Rondolândia": true, "Rondon do Pará": true, "Santa Luzia": true,
  "Santana do Araguaia": true, "Santarém": true, "Senador Guiomard": true,
  "Sena Madureira": true, "Sinop": true, "São Félix do Xingu": true, "Tarauacá": true,
  "Tailândia": true, "Trairão": true, "Urupá": true, "Uruará": true, "Vila Rica": true
};

function formatMetricUnit(val, unit) {
  var num = Math.round(Number(val) || 0);
  if (unit === 'US$ FOB') {
    if (num >= 1e9) return "US$ " + (num / 1e9).toFixed(1).replace(".", ",") + " bi";
    if (num >= 1e6) return "US$ " + (num / 1e6).toFixed(1).replace(".", ",") + " mi";
    return "US$ " + num.toLocaleString('pt-BR');
  }
  if (unit === 'R$') return "R$ " + num.toLocaleString('pt-BR');
  return num.toLocaleString('pt-BR') + (unit ? " " + unit : "");
}

// ==============================================================================
// CRITERIOS DO MODO GRID (ESTADOS E MUNICIPIOS)
// ==============================================================================
var GRID_SETS_EASY = [
  {
    cols: [
      { id: "col_pop_hi", name: "População > 3 milhões", desc: "IBGE (2020)", check: function(d) { return d.pop > 3000000; } },
      { id: "col_pop_mid", name: "População entre 850 mil e 3,6 mi", desc: "IBGE (2020)", check: function(d) { return d.pop >= 850000 && d.pop <= 3600000; } },
      { id: "col_pop_lo", name: "População < 1,8 milhão", desc: "IBGE (2020)", check: function(d) { return d.pop < 1800000; } }
    ],
    rows: [
      { id: "row_florest_hi", name: "Cobertura Florestal > 74%", desc: "MapBiomas (2024)", check: function(d) { return (d.forest_pct || 0) > 74; } },
      { id: "row_florest_mid", name: "Cobertura entre 55% e 83%", desc: "MapBiomas (2024)", check: function(d) { return (d.forest_pct || 0) >= 55 && (d.forest_pct || 0) <= 83; } },
      { id: "row_florest_lo", name: "Cobertura Florestal < 73%", desc: "MapBiomas (2024)", check: function(d) { return (d.forest_pct || 0) < 73; } }
    ]
  },
  {
    cols: [
      { id: "col_exp_hi", name: "Exportações > US$ 3 bilhões", desc: "Comex Stat (2025)", check: function(d) { return (d.exports_usd || 0) > 3000000000; } },
      { id: "col_exp_mid", name: "Exportações entre US$ 250 mi e US$ 5,5 bi", desc: "Comex Stat (2025)", check: function(d) { return (d.exports_usd || 0) >= 250000000 && (d.exports_usd || 0) <= 5500000000; } },
      { id: "col_exp_lo", name: "Exportações < US$ 1 bilhão", desc: "Comex Stat (2025)", check: function(d) { return (d.exports_usd || 0) < 1000000000; } }
    ],
    rows: [
      { id: "row_pib_hi", name: "PIB per capita > R$ 27.000", desc: "IBGE (2020)", check: function(d) { return (d.gd_ppc || 0) > 27000; } },
      { id: "row_pib_mid", name: "PIB per capita entre R$ 21 mil e R$ 28 mil", desc: "IBGE (2020)", check: function(d) { return (d.gd_ppc || 0) >= 21000 && (d.gd_ppc || 0) <= 28000; } },
      { id: "row_pib_lo", name: "PIB per capita < R$ 25.500", desc: "IBGE (2020)", check: function(d) { return (d.gd_ppc || 0) < 25500; } }
    ]
  },
  {
    cols: [
      { id: "col_gado_hi", name: "Rebanho Bovino > 11 milhões", desc: "IBGE PPM (2024)", check: function(d) { return (d.cattle || 0) > 11000000; } },
      { id: "col_gado_mid", name: "Rebanho entre 2 mi e 19 mi cabeças", desc: "IBGE PPM (2024)", check: function(d) { return (d.cattle || 0) >= 2000000 && (d.cattle || 0) <= 19000000; } },
      { id: "col_gado_lo", name: "Rebanho Bovino < 5,5 milhões", desc: "IBGE PPM (2024)", check: function(d) { return (d.cattle || 0) < 5500000; } }
    ],
    rows: [
      { id: "row_ips_hi", name: "IPS Amazônia >= 59,6", desc: "IMAZON (2021)", check: function(d) { return (d.ips || 0) >= 59.6; } },
      { id: "row_ips_mid", name: "IPS entre 56,5 e 60,0", desc: "IMAZON (2021)", check: function(d) { return (d.ips || 0) >= 56.5 && (d.ips || 0) <= 60.0; } },
      { id: "row_ips_lo", name: "IPS Amazônia < 58,0", desc: "IMAZON (2021)", check: function(d) { return (d.ips || 0) < 58.0; } }
    ]
  }
];

var GRID_SETS_HARD = [
  {
    cols: [
      { id: "col_pa", name: "Pertence ao Pará (PA)", desc: "144 municípios oficiais", check: function(d) { return d.uf === "PA"; } },
      { id: "col_mt", name: "Pertence ao Mato Grosso (MT)", desc: "141 municípios oficiais", check: function(d) { return d.uf === "MT"; } },
      { id: "col_am_ro", name: "Pertence ao Amazonas (AM) ou Rondônia (RO)", desc: "AM ou RO", check: function(d) { return d.uf === "AM" || d.uf === "RO"; } }
    ],
    rows: [
      { id: "row_florest_muni", name: "Cobertura Florestal > 75%", desc: "MapBiomas (2024)", check: function(d) { return (d.forest_pct || 0) > 75; } },
      { id: "row_gado_muni", name: "Rebanho Bovino > 150.000 cabeças", desc: "IBGE PPM (2024)", check: function(d) { return (d.cattle || 0) > 150000; } },
      { id: "row_pib_muni", name: "PIB per capita > R$ 25.000", desc: "IBGE (2020)", check: function(d) { return (d.gd_ppc || 0) > 25000; } }
    ]
  },
  {
    cols: [
      { id: "col_ma_to", name: "Pertence ao Maranhão (MA) ou Tocantins (TO)", desc: "MA ou TO", check: function(d) { return d.uf === "MA" || d.uf === "TO"; } },
      { id: "col_pa2", name: "Pertence ao Pará (PA)", desc: "144 municípios oficiais", check: function(d) { return d.uf === "PA"; } },
      { id: "col_outros", name: "Pertence ao AC, AP ou RR", desc: "AC, AP ou RR", check: function(d) { return d.uf === "AC" || d.uf === "AP" || d.uf === "RR"; } }
    ],
    rows: [
      { id: "row_ips_muni", name: "IPS Amazônia >= 60,0 pontos", desc: "IMAZON (2021)", check: function(d) { return (d.ips || 0) >= 60.0; } },
      { id: "row_milho", name: "Produção de Milho > 10.000 ton", desc: "IBGE PAM (2024)", check: function(d) { return (d.corn || 0) > 10000; } },
      { id: "row_desm", name: "Desmatamento Acum. > 1.500 km²", desc: "INPE PRODES", check: function(d) { return (d.deforest_acc_km2 || 0) > 1500; } }
    ]
  },
  {
    cols: [
      { id: "col_pop_hi_muni", name: "População > 100.000 hab.", desc: "IBGE (2020)", check: function(d) { return d.pop > 100000; } },
      { id: "col_pop_mid_muni", name: "População entre 25 mil e 100 mil hab.", desc: "IBGE (2020)", check: function(d) { return d.pop >= 25000 && d.pop <= 100000; } },
      { id: "col_pop_lo_muni", name: "População < 25.000 hab.", desc: "IBGE (2020)", check: function(d) { return d.pop < 25000; } }
    ],
    rows: [
      { id: "row_exp_muni", name: "Exportações > US$ 10 milhões FOB", desc: "Comex Stat (2025)", check: function(d) { return (d.exports_usd || 0) > 10000000; } },
      { id: "row_soja_muni", name: "Produtor de Soja (> 20.000 ton)", desc: "IBGE PAM (2024)", check: function(d) { return (d.soy || 0) > 20000; } },
      { id: "row_mandioca", name: "Produtor de Mandioca (> 15.000 ton)", desc: "IBGE PAM (2024)", check: function(d) { return (d.cassava || 0) > 15000; } }
    ]
  }
];

// Algoritmo de casamento bipartido (Garante 9 respostas distintas no gabarito)
function solveMatchingSolution(dataset, rows, cols) {
  var candidates = [];
  for (var r = 0; r < 3; r++) {
    for (var c = 0; c < 3; c++) {
      var valid = dataset.filter(function(item) {
        return rows[r].check(item) && cols[c].check(item);
      });
      valid.sort(function(a, b) { return (b.pop || 0) - (a.pop || 0); });
      if (valid.length === 0) return null;
      candidates.push(valid);
    }
  }

  var solution = new Array(9).fill(null);
  var used = {};
  var order = [0, 1, 2, 3, 4, 5, 6, 7, 8].sort(function(a, b) {
    return candidates[a].length - candidates[b].length;
  });

  function backtrack(pos) {
    if (pos >= 9) return true;
    var idx = order[pos];
    var list = candidates[idx];
    var limit = Math.min(list.length, 30);
    for (var i = 0; i < limit; i++) {
      var cand = list[i];
      var key = cand.name + "__" + cand.uf;
      if (!used[key]) {
        used[key] = true;
        solution[idx] = cand;
        if (backtrack(pos + 1)) return true;
        solution[idx] = null;
        delete used[key];
      }
    }
    return false;
  }

  if (backtrack(0)) return solution;
  return null;
}

// ==============================================================================
// CONTROLE DE ESTADO GLOBAL
// ==============================================================================
var currentActiveMode = 'home';
var activeGridDifficulty = 'easy';
var gridTimerSeconds = 0;
var gridTimerInterval = null;
var pendingGridResult = null;

var gridDifficultyStates = {
  easy: {
    boardIndex: 0,
    cells: Array(3).fill(null).map(function() { return Array(3).fill(null); }),
    triesLeft: 10,
    score: 1000,
    hits: 0,
    completed: false
  },
  hard: {
    boardIndex: 0,
    cells: Array(3).fill(null).map(function() { return Array(3).fill(null); }),
    triesLeft: 10,
    score: 1000,
    hits: 0,
    completed: false
  }
};

var currentInputCell = null;
var activeVersusSubMode = 'daily';
var versusDailyIndex = 0;
var versusDailyScore = 0;
var versusDailyAnswers = [null, null, null, null, null];
var versusTimerSeconds = 0;
var versusTimerInterval = null;
var pendingVersusResult = null;

var streakCount = 0;
var currentStreakPuzzle = null;

function getDailySeedString() {
  var now = new Date();
  return now.getFullYear() + "-" +
    String(now.getMonth() + 1).padStart(2, '0') + "-" +
    String(now.getDate()).padStart(2, '0');
}

function hashSeed(str) {
  var h = 2166136261 >>> 0;
  for (var i = 0; i < str.length; i++) {
    h ^= str.charCodeAt(i);
    h = Math.imul(h, 16777619);
  }
  return h >>> 0;
}

function makeRng(seedStr) {
  var a = hashSeed(seedStr);
  return function() {
    var t = (a += 0x6D2B79F5);
    t = Math.imul(t ^ (t >>> 15), t | 1);
    t ^= t + Math.imul(t ^ (t >>> 7), t | 61);
    return ((t ^ (t >>> 14)) >>> 0) / 4294967296;
  };
}

// ==============================================================================
// NAVEGACAO ENTRE MODOS
// ==============================================================================
function openGameMode(modeKey) {
  currentActiveMode = modeKey;

  document.getElementById('panel-home').style.display = (modeKey === 'home') ? 'block' : 'none';
  document.getElementById('panel-grid').style.display = (modeKey === 'grid') ? 'block' : 'none';
  document.getElementById('panel-versus').style.display = (modeKey === 'versus-daily' || modeKey === 'versus-streak') ? 'block' : 'none';
  document.getElementById('panel-scores').style.display = (modeKey === 'scores') ? 'block' : 'none';

  document.getElementById('top-nav-switcher').style.display = (modeKey === 'home') ? 'none' : 'flex';

  var btns = ['home', 'grid', 'v-daily', 'v-streak', 'scores'];
  btns.forEach(function(b) {
    var el = document.getElementById('btn-tab-' + b);
    if (el) el.classList.remove('active');
  });

  if (modeKey === 'grid') {
    document.getElementById('btn-tab-grid').classList.add('active');
    initGridUI();
  } else if (modeKey === 'versus-daily') {
    document.getElementById('btn-tab-v-daily').classList.add('active');
    activeVersusSubMode = 'daily';
    initVersusDailyUI();
  } else if (modeKey === 'versus-streak') {
    document.getElementById('btn-tab-v-streak').classList.add('active');
    activeVersusSubMode = 'streak';
    initVersusStreakUI();
  } else if (modeKey === 'scores') {
    document.getElementById('btn-tab-scores').classList.add('active');
    renderLeaderboard();
  }
}

// ==============================================================================
// MODO GRID
// ==============================================================================
function getGridSetsForCurrentDifficulty() {
  return (activeGridDifficulty === 'easy') ? GRID_SETS_EASY : GRID_SETS_HARD;
}

function getCurrentGridSet() {
  var sets = getGridSetsForCurrentDifficulty();
  var state = gridDifficultyStates[activeGridDifficulty];
  return sets[state.boardIndex % sets.length];
}

function getCurrentGridDataPool() {
  return (activeGridDifficulty === 'easy') ? DATA_STATES : DATA_HARD;
}

function setGridDifficulty(diff) {
  activeGridDifficulty = diff;

  document.getElementById('lvl-easy').classList.toggle('active', diff === 'easy');
  document.getElementById('lvl-hard').classList.toggle('active', diff === 'hard');

  var state = gridDifficultyStates[activeGridDifficulty];
  var currentSet = getCurrentGridSet();

  document.getElementById('col-header-0').innerHTML = currentSet.cols[0].name + `<br><small style="font-weight:400;color:#555">${currentSet.cols[0].desc}</small>`;
  document.getElementById('col-header-1').innerHTML = currentSet.cols[1].name + `<br><small style="font-weight:400;color:#555">${currentSet.cols[1].desc}</small>`;
  document.getElementById('col-header-2').innerHTML = currentSet.cols[2].name + `<br><small style="font-weight:400;color:#555">${currentSet.cols[2].desc}</small>`;

  document.getElementById('row-header-0').innerHTML = currentSet.rows[0].name + `<br><small style="font-weight:400;color:#555">${currentSet.rows[0].desc}</small>`;
  document.getElementById('row-header-1').innerHTML = currentSet.rows[1].name + `<br><small style="font-weight:400;color:#555">${currentSet.rows[1].desc}</small>`;
  document.getElementById('row-header-2').innerHTML = currentSet.rows[2].name + `<br><small style="font-weight:400;color:#555">${currentSet.rows[2].desc}</small>`;

  document.getElementById('grid-score').innerText = state.score;
  document.getElementById('grid-hits').innerText = state.hits;
  document.getElementById('grid-tries').innerText = state.triesLeft;

  renderGridBoardFromState();

  var compPanel = document.getElementById('grid-completion-panel');
  if (state.completed) {
    compPanel.style.display = 'block';
    document.getElementById('grid-completion-title').innerText = (state.hits === 9) ? "Desafio Gabaritado!" : "Fim de Jogo!";
    document.getElementById('grid-completion-title').style.color = (state.hits === 9) ? "var(--green-btn)" : "var(--danger-red)";
    document.getElementById('grid-completion-msg').innerText = `Você finalizou com ${state.hits} acerto(s) e ${state.score} pontos.`;
  } else {
    compPanel.style.display = 'none';
  }

  closeCellInput();
}

function initGridUI() {
  var seedRng = makeRng("dz_grid_" + getDailySeedString());
  gridDifficultyStates.easy.boardIndex = Math.floor(seedRng() * GRID_SETS_EASY.length);
  gridDifficultyStates.hard.boardIndex = Math.floor(seedRng() * GRID_SETS_HARD.length);

  setGridDifficulty(activeGridDifficulty);
  startGridTimer();
}

function startGridTimer() {
  clearInterval(gridTimerInterval);
  var state = gridDifficultyStates[activeGridDifficulty];
  if (state.completed) return;

  gridTimerSeconds = 0;
  document.getElementById('grid-timer').innerText = "00:00";
  gridTimerInterval = setInterval(function() {
    gridTimerSeconds++;
    var mins = String(Math.floor(gridTimerSeconds / 60)).padStart(2, '0');
    var secs = String(gridTimerSeconds % 60).padStart(2, '0');
    document.getElementById('grid-timer').innerText = mins + ":" + secs;
  }, 1000);
}

function renderGridBoardFromState() {
  var state = gridDifficultyStates[activeGridDifficulty];
  for (var r = 0; r < 3; r++) {
    for (var c = 0; c < 3; c++) {
      var cellEl = document.getElementById(`cell-${r}-${c}`);
      var cellVal = state.cells[r][c];

      cellEl.classList.remove('filled', 'gabarito-cell');
      if (cellVal) {
        if (cellVal.isGabarito) {
          cellEl.classList.add('gabarito-cell');
          cellEl.innerHTML = `
            <div class="grid-cell-city" style="color: #c62828;">${cellVal.name} (${cellVal.uf})</div>
            <div class="grid-cell-meta" style="color: #c62828; font-weight:700;">Gabarito</div>
          `;
        } else {
          cellEl.classList.add('filled');
          cellEl.innerHTML = `
            <div class="grid-cell-city">${cellVal.name} (${cellVal.uf})</div>
            <div class="grid-cell-meta">Acerto</div>
          `;
        }
      } else {
        cellEl.innerHTML = `<span>Selecionar</span>`;
      }
    }
  }
}

function openCellInput(row, col) {
  var state = gridDifficultyStates[activeGridDifficulty];
  if (state.completed || state.cells[row][col]) return;

  currentInputCell = { r: row, c: col };
  var currentSet = getCurrentGridSet();
  var rowDef = currentSet.rows[row];
  var colDef = currentSet.cols[col];

  document.getElementById('input-target-title').innerText =
    `Preenchendo Célula: [${rowDef.name}] × [${colDef.name}]`;

  document.getElementById('grid-error-alert').style.display = 'none';
  document.getElementById('hints-panel').style.display = 'block';
  document.getElementById('hint-display').innerText = '';

  var searchField = document.getElementById('grid-search-field');
  searchField.value = '';
  document.getElementById('cell-input-panel').style.display = 'block';
  renderOptionsList('');
  searchField.focus();
}

function closeCellInput() {
  document.getElementById('cell-input-panel').style.display = 'none';
  currentInputCell = null;
}

function renderOptionsList(filterText) {
  var container = document.getElementById('grid-options-container');
  var pool = getCurrentGridDataPool();
  var state = gridDifficultyStates[activeGridDifficulty];

  var usedMap = {};
  for (var r = 0; r < 3; r++) {
    for (var c = 0; c < 3; c++) {
      if (state.cells[r][c]) {
        usedMap[state.cells[r][c].id] = true;
      }
    }
  }

  var normFilter = (filterText || '').toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "");

  var matches = pool.filter(function(item) {
    if (usedMap[item.id]) return false;
    var normName = item.name.toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "");
    var normUf = item.uf.toLowerCase();
    return normName.indexOf(normFilter) !== -1 || normUf === normFilter;
  });

  if (matches.length === 0) {
    container.innerHTML = '<div style="padding: 12px; color: #888; text-align: center; font-size: 13px;">Nenhuma localidade disponível encontrada.</div>';
    return;
  }

  container.innerHTML = matches.slice(0, 50).map(function(item) {
    return `
      <div class="option-row" onclick="submitGridGuess('${item.id}')">
        <span><strong>${item.name}</strong> <small style="color: #666;">(${item.uf})</small></span>
        <span style="font-size: 11px; color: #2e4d32; font-weight: 700;">Selecionar &rarr;</span>
      </div>
    `;
  }).join('');
}

function submitGridGuess(itemId) {
  if (!currentInputCell) return;
  var state = gridDifficultyStates[activeGridDifficulty];
  var pool = getCurrentGridDataPool();
  var candidate = pool.find(function(it) { return it.id === itemId; });
  if (!candidate) return;

  var currentSet = getCurrentGridSet();
  var r = currentInputCell.r;
  var c = currentInputCell.c;
  var rowValid = currentSet.rows[r].check(candidate);
  var colValid = currentSet.cols[c].check(candidate);

  if (rowValid && colValid) {
    state.cells[r][c] = { id: candidate.id, name: candidate.name, uf: candidate.uf, isGabarito: false };
    state.hits++;
    state.score += 100;

    document.getElementById('grid-hits').innerText = state.hits;
    document.getElementById('grid-score').innerText = state.score;

    renderGridBoardFromState();
    closeCellInput();

    if (state.hits === 9) {
      finishGridGame(true);
    }
  } else {
    state.triesLeft--;
    state.score = Math.max(0, state.score - 50);

    document.getElementById('grid-tries').innerText = state.triesLeft;
    document.getElementById('grid-score').innerText = state.score;

    var alertEl = document.getElementById('grid-error-alert');
    alertEl.className = 'grid-inline-alert wrong';
    alertEl.innerText = `${candidate.name} (${candidate.uf}) não atende aos critérios da Linha ou da Coluna!`;
    alertEl.style.display = 'block';

    if (state.triesLeft <= 0) {
      closeCellInput();
      finishGridGame(false);
    }
  }
}

function requestHint(type) {
  if (!currentInputCell) return;
  var state = gridDifficultyStates[activeGridDifficulty];
  var pool = getCurrentGridDataPool();
  var currentSet = getCurrentGridSet();
  var r = currentInputCell.r;
  var c = currentInputCell.c;

  var validOnes = pool.filter(function(it) {
    return currentSet.rows[r].check(it) && currentSet.cols[c].check(it);
  });

  if (validOnes.length === 0) return;
  var sample = validOnes[0];
  var hintText = '';

  if (type === 1) {
    state.score = Math.max(0, state.score - 100);
    hintText = `Dica UF: Uma das respostas válidas pertence ao estado: ${sample.uf}`;
  } else {
    state.score = Math.max(0, state.score - 200);
    hintText = `Dica Letra: Uma das respostas válidas começa com a letra "${sample.name.charAt(0)}"`;
  }

  document.getElementById('grid-score').innerText = state.score;
  document.getElementById('hint-display').innerText = hintText;
}

function finishGridGame(gabari) {
  var state = gridDifficultyStates[activeGridDifficulty];
  state.completed = true;
  clearInterval(gridTimerInterval);

  var panel = document.getElementById('grid-completion-panel');
  var title = document.getElementById('grid-completion-title');
  var msg = document.getElementById('grid-completion-msg');

  if (gabari) {
    title.innerText = "Desafio Gabaritado!";
    title.style.color = "var(--green-btn)";
    msg.innerText = `Parabéns! Você completou todas as 9 células em ${document.getElementById('grid-timer').innerText} com pontuação final de ${state.score} pts.`;
  } else {
    title.innerText = "Fim de Jogo!";
    title.style.color = "var(--danger-red)";
    msg.innerText = `Suas tentativas acabaram! Você acertou ${state.hits} de 9 células. Pontuação final: ${state.score} pts.`;
  }

  pendingGridResult = {
    mode: `Modo Grid (${activeGridDifficulty === 'easy' ? 'Estados' : 'Municípios'})`,
    score: `${state.score} pts (${state.hits}/9)`,
    time: document.getElementById('grid-timer').innerText
  };

  panel.style.display = 'block';
  updateMidnightCountdown();
}

function showGridAnswers() {
  var state = gridDifficultyStates[activeGridDifficulty];
  var pool = getCurrentGridDataPool();
  var currentSet = getCurrentGridSet();

  var solution = solveMatchingSolution(pool, currentSet.rows, currentSet.cols);
  if (solution) {
    for (var r = 0; r < 3; r++) {
      for (var c = 0; c < 3; c++) {
        var idx = r * 3 + c;
        state.cells[r][c] = {
          id: solution[idx].id,
          name: solution[idx].name,
          uf: solution[idx].uf,
          isGabarito: true
        };
      }
    }
  }

  renderGridBoardFromState();
  var btn = document.getElementById('btn-show-grid-answers');
  if (btn) btn.style.display = 'none';
}

function saveGridRecordWithName() {
  var nameInput = document.getElementById('grid-player-name');
  var pName = nameInput.value.trim() || 'Jogador Anônimo';
  if (pendingGridResult) {
    saveRecord(pName, pendingGridResult.mode, pendingGridResult.score, pendingGridResult.time);
    alert(`Recorde de ${pName} salvo no Placar!`);
    nameInput.disabled = true;
  }
}

// ==============================================================================
// MODO 2: VERSUS DIARIO & MODO 3: STREAK
// ==============================================================================
var QUESTION_SPECS = [
  {
    category: "Demografia / População",
    metric: "pop",
    unit: "habitantes",
    question: "Qual cidade possui MAIOR população residente?",
    source: "IBGE / Estimativas & Censo (load_population)",
    minVal: 30000,
    minRatio: 1.45
  },
  {
    category: "Pecuária / Rebanho",
    metric: "cattle",
    unit: "cabeças de gado",
    question: "Qual cidade possui o MAIOR rebanho bovino?",
    source: "IBGE / Pesquisa da Pecuária Municipal (load_ppm)",
    minVal: 120000,
    minRatio: 1.45
  },
  {
    category: "Agricultura / Grãos",
    metric: "soy",
    unit: "toneladas de soja",
    question: "Qual cidade produziu MAIS soja em 2024?",
    source: "IBGE / Produção Agrícola Municipal (load_pam)",
    minVal: 25000,
    minRatio: 1.50
  },
  {
    category: "Economia / Exportações",
    metric: "exports_usd",
    unit: "US$ FOB",
    question: "Qual cidade exportou MAIOR valor FOB (2025)?",
    source: "MDIC / Comex Stat (load_br_trade)",
    minVal: 15000000,
    minRatio: 1.50
  },
  {
    category: "Economia / Renda",
    metric: "gd_ppc",
    unit: "R$",
    question: "Qual cidade apresenta MAIOR PIB per capita?",
    source: "IBGE / PIB dos Municípios (load_pibmunic)",
    minVal: 12000,
    minRatio: 1.38
  },
  {
    category: "Meio Ambiente / Cobertura",
    metric: "forest_pct",
    unit: "% floresta",
    question: "Qual cidade possui MAIOR percentual de cobertura florestal?",
    source: "MapBiomas Coleção 9 (load_mapbiomas)",
    minVal: 15,
    minRatio: 1.25
  }
];

function generateVersusPair(rng, spec, forceWinner) {
  var pool = DATA_HARD.filter(function(m) {
    return (m[spec.metric] || 0) >= (spec.minVal || 1);
  });
  if (pool.length < 10) pool = DATA_HARD;

  for (var i = 0; i < 150; i++) {
    var a = pool[Math.floor(rng() * pool.length)];
    var b = pool[Math.floor(rng() * pool.length)];
    if (a.id === b.id) continue;

    var valA = Number(a[spec.metric]) || 0;
    var valB = Number(b[spec.metric]) || 0;
    if (valA === valB) continue;

    var ratio = Math.max(valA, valB) / Math.max(Math.min(valA, valB), 1);
    if (ratio < (spec.minRatio || 1.35)) continue;

    var winnerSide = (forceWinner === 'left' || forceWinner === 'right') ? forceWinner : (rng() < 0.5 ? 'left' : 'right');
    var leftCity = winnerSide === 'left' ? (valA > valB ? a : b) : (valA < valB ? a : b);
    var rightCity = winnerSide === 'left' ? (valA < valB ? a : b) : (valA > valB ? a : b);

    return {
      category: spec.category,
      question: spec.question,
      source: spec.source,
      left: {
        id: leftCity.id,
        name: leftCity.name,
        uf: leftCity.uf,
        val: formatMetricUnit(leftCity[spec.metric], spec.unit)
      },
      right: {
        id: rightCity.id,
        name: rightCity.name,
        uf: rightCity.uf,
        val: formatMetricUnit(rightCity[spec.metric], spec.unit)
      },
      winner: winnerSide
    };
  }

  // Fallback
  return {
    category: spec.category,
    question: spec.question,
    source: spec.source,
    left: { id: pool[0].id, name: pool[0].name, uf: pool[0].uf, val: formatMetricUnit(pool[0][spec.metric], spec.unit) },
    right: { id: pool[1].id, name: pool[1].name, uf: pool[1].uf, val: formatMetricUnit(pool[1][spec.metric], spec.unit) },
    winner: 'left'
  };
}

var VERSUS_DAILY_PUZZLES = [];

function buildDailyVersusPuzzles() {
  var rng = makeRng("dz_versus_daily_" + getDailySeedString());
  VERSUS_DAILY_PUZZLES = [];
  var specs = QUESTION_SPECS.slice();
  for (var k = 0; k < 5; k++) {
    var spec = specs[k % specs.length];
    var winner = (k % 2 === 0) ? 'left' : 'right';
    VERSUS_DAILY_PUZZLES.push(generateVersusPair(rng, spec, winner));
  }
}

function initVersusDailyUI() {
  document.getElementById('v-status-score-wrap').style.display = 'block';
  document.getElementById('v-status-chances-wrap').style.display = 'none';
  document.getElementById('versus-reset-btn-wrap').style.display = 'none';
  document.getElementById('versus-daily-selector').style.display = 'flex';
  document.getElementById('versus-completion-panel').style.display = 'none';
  document.getElementById('versus-game-container').style.display = 'block';

  buildDailyVersusPuzzles();
  loadVersusDailyQuestion(0);
}

function loadVersusDailyQuestion(qIndex) {
  versusDailyIndex = qIndex;
  for (var i = 0; i < 5; i++) {
    var pill = document.getElementById(`vpill-${i}`);
    if (pill) pill.classList.toggle('active', i === qIndex);
  }

  var puzzle = VERSUS_DAILY_PUZZLES[versusDailyIndex];
  renderVersusArenaQuestion(puzzle);

  var prevAns = versusDailyAnswers[qIndex];
  if (prevAns !== null) {
    renderVersusAnswerResult(prevAns, puzzle);
    clearInterval(versusTimerInterval);
    document.getElementById('versus-btn-next').innerText =
      (qIndex < 4) ? "Próximo Desafio &rarr;" : "Ver Resultado Final &rarr;";
  } else {
    startQuestionTimer();
  }
}

function initVersusStreakUI() {
  document.getElementById('v-status-score-wrap').style.display = 'none';
  document.getElementById('v-status-chances-wrap').style.display = 'block';
  document.getElementById('versus-reset-btn-wrap').style.display = 'block';
  document.getElementById('versus-daily-selector').style.display = 'none';
  document.getElementById('versus-completion-panel').style.display = 'none';
  document.getElementById('versus-game-container').style.display = 'block';

  streakCount = 0;
  document.getElementById('versus-streak-badge').innerText = streakCount;

  var leftChances = getStreakChancesRemaining();
  document.getElementById('streak-chances-badge').innerText = `${leftChances} / 3`;

  if (leftChances <= 0) {
    showStreakExhaustedPanel();
    return;
  }

  loadNextStreakRound();
}

function loadNextStreakRound() {
  var rng = makeRng("dz_streak_" + getDailySeedString() + "_" + streakCount + "_" + Date.now());
  var spec = QUESTION_SPECS[Math.floor(rng() * QUESTION_SPECS.length)];
  currentStreakPuzzle = generateVersusPair(rng, spec, null);
  renderVersusArenaQuestion(currentStreakPuzzle);
  startQuestionTimer();
}

function renderVersusArenaQuestion(puzzle) {
  document.getElementById('versus-category').innerText = puzzle.category;
  document.getElementById('versus-question').innerText = puzzle.question;

  var cardL = document.getElementById('vcard-left');
  var cardR = document.getElementById('vcard-right');
  var valL = document.getElementById('vcard-left-val');
  var valR = document.getElementById('vcard-right-val');
  var feedback = document.getElementById('versus-feedback-box');

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
}

function handleVersusSelection(chosenSide) {
  var timeTaken = document.getElementById('versus-timer').innerText;

  if (activeVersusSubMode === 'daily') {
    if (versusDailyAnswers[versusDailyIndex] !== null) return;
    clearInterval(versusTimerInterval);
    var puzzle = VERSUS_DAILY_PUZZLES[versusDailyIndex];
    var isCorrect = (chosenSide === puzzle.winner);

    versusDailyAnswers[versusDailyIndex] = { chosen: chosenSide, correct: isCorrect, time: timeTaken };
    if (isCorrect) versusDailyScore++;
    document.getElementById('versus-score-badge').innerText = `${versusDailyScore} / 5`;

    renderVersusAnswerResult(versusDailyAnswers[versusDailyIndex], puzzle);

    var pill = document.getElementById(`vpill-${versusDailyIndex}`);
    if (pill) {
      pill.style.background = isCorrect ? '#2f7d32' : '#c62828';
      pill.style.color = '#ffffff';
      pill.style.borderColor = isCorrect ? '#2f7d32' : '#c62828';
    }
  } else {
    // MODO STREAK
    clearInterval(versusTimerInterval);
    var puzzle = currentStreakPuzzle;
    var isCorrect = (chosenSide === puzzle.winner);

    renderVersusAnswerResult({ chosen: chosenSide, correct: isCorrect, time: timeTaken }, puzzle);

    if (isCorrect) {
      streakCount++;
      document.getElementById('versus-streak-badge').innerText = streakCount;
      document.getElementById('versus-btn-next').innerText = "Continuar Streak &rarr;";
    } else {
      consumeStreakChance();
      var leftChances = getStreakChancesRemaining();
      document.getElementById('streak-chances-badge').innerText = `${leftChances} / 3`;
      document.getElementById('versus-btn-next').innerText = "Ver Resultado Final &rarr;";
    }
  }
}

function renderVersusAnswerResult(ans, puzzle) {
  var cardL = document.getElementById('vcard-left');
  var cardR = document.getElementById('vcard-right');
  var valL = document.getElementById('vcard-left-val');
  var valR = document.getElementById('vcard-right-val');
  var feedback = document.getElementById('versus-feedback-box');
  var statusTitle = document.getElementById('versus-feedback-status');
  var feedbackText = document.getElementById('versus-feedback-text');

  valL.style.display = 'block';
  valR.style.display = 'block';

  if (puzzle.winner === 'left') {
    cardL.classList.add('correct');
    if (ans.chosen === 'right') cardR.classList.add('wrong');
  } else {
    cardR.classList.add('correct');
    if (ans.chosen === 'left') cardL.classList.add('wrong');
  }

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
}

function goToNextVersus() {
  if (activeVersusSubMode === 'daily') {
    if (versusDailyIndex < 4) {
      loadVersusDailyQuestion(versusDailyIndex + 1);
    } else {
      showVersusDailyFinalScreen();
    }
  } else {
    var lastAns = document.getElementById('versus-feedback-status').innerText;
    if (lastAns === "Incorreto!") {
      showStreakFinalScreen();
    } else {
      loadNextStreakRound();
    }
  }
}

function showVersusDailyFinalScreen() {
  document.getElementById('versus-game-container').style.display = 'none';
  var panel = document.getElementById('versus-completion-panel');
  var title = document.getElementById('versus-completion-title');
  var msg = document.getElementById('versus-completion-msg');

  title.innerText = "Modo Versus Diário Concluído!";
  title.style.color = "var(--green-btn)";
  msg.innerText = `Você finalizou os 5 desafios de hoje! Total de Acertos: ${versusDailyScore} de 5 perguntas.`;

  pendingVersusResult = {
    mode: 'Modo Versus',
    score: `${versusDailyScore} de 5 acertos`,
    time: '5 Desafios'
  };

  document.getElementById('versus-completion-actions').innerHTML = `
    <button class="level-btn" onclick="reviewVersusDailyQuestions()">Rever Perguntas de Hoje</button>
  `;
  panel.style.display = 'block';
  updateMidnightCountdown();
}

function reviewVersusDailyQuestions() {
  document.getElementById('versus-completion-panel').style.display = 'none';
  document.getElementById('versus-game-container').style.display = 'block';
  loadVersusDailyQuestion(0);
}

function showStreakFinalScreen() {
  document.getElementById('versus-game-container').style.display = 'none';
  var panel = document.getElementById('versus-completion-panel');
  var title = document.getElementById('versus-completion-title');
  var msg = document.getElementById('versus-completion-msg');

  var leftChances = getStreakChancesRemaining();
  title.innerText = "Fim da Corrida de Streak!";
  title.style.color = "var(--danger-red)";
  msg.innerText = `Você atingiu uma sequência de ${streakCount} acertos consecutivos. Restam ${leftChances} chance(s) para hoje.`;

  pendingVersusResult = {
    mode: 'Modo Streak',
    score: `Streak: ${streakCount}`,
    time: `Sequência Concluída`
  };

  var actionHtml = '';
  if (leftChances > 0) {
    actionHtml = `<button class="modal-btn" onclick="initVersusStreakUI()">Usar Próxima Chance (${leftChances} restantes) &rarr;</button>`;
  } else {
    actionHtml = `<span style="color:#888; font-size:13px;">Chances diárias esgotadas. Volte amanhã às 00:00!</span>`;
  }
  document.getElementById('versus-completion-actions').innerHTML = actionHtml;
  panel.style.display = 'block';
  updateMidnightCountdown();
}

function showStreakExhaustedPanel() {
  clearInterval(versusTimerInterval);
  document.getElementById('versus-game-container').style.display = 'none';
  var panel = document.getElementById('versus-completion-panel');
  var title = document.getElementById('versus-completion-title');
  var msg = document.getElementById('versus-completion-msg');

  title.innerText = "Chances Esgotadas Hoje!";
  title.style.color = "var(--danger-red)";
  msg.innerText = "Você utilizou todas as suas 3 chances diárias no Modo Streak. Volte amanhã para novas tentativas!";
  
  document.getElementById('versus-completion-actions').innerHTML = `
    <button class="level-btn" onclick="openGameMode('home')">Voltar ao Menu Principal</button>
  `;
  panel.style.display = 'block';
  updateMidnightCountdown();
}

function saveVersusRecordWithName() {
  var nameInput = document.getElementById('versus-player-name');
  var pName = nameInput.value.trim() || 'Jogador Anônimo';
  if (pendingVersusResult) {
    saveRecord(pName, pendingVersusResult.mode, pendingVersusResult.score, pendingVersusResult.time);
    alert(`Recorde de ${pName} salvo no Placar!`);
    nameInput.disabled = true;
  }
}

function resetCurrentVersusMode() {
  if (activeVersusSubMode === 'streak') {
    initVersusStreakUI();
  }
}

function startQuestionTimer() {
  clearInterval(versusTimerInterval);
  versusTimerSeconds = 0;
  document.getElementById('versus-timer').innerText = "00:00";
  versusTimerInterval = setInterval(function() {
    versusTimerSeconds++;
    var mins = String(Math.floor(versusTimerSeconds / 60)).padStart(2, '0');
    var secs = String(versusTimerSeconds % 60).padStart(2, '0');
    document.getElementById('versus-timer').innerText = mins + ":" + secs;
  }, 1000);
}

function getStreakChancesRemaining() {
  var key = `streak_chances_${getDailySeedString()}`;
  var used = parseInt(localStorage.getItem(key) || '0', 10);
  return Math.max(0, 3 - used);
}

function consumeStreakChance() {
  var key = `streak_chances_${getDailySeedString()}`;
  var used = parseInt(localStorage.getItem(key) || '0', 10);
  localStorage.setItem(key, String(used + 1));
}

function updateMidnightCountdown() {
  function tick() {
    var now = new Date();
    var tomorrow = new Date(now.getFullYear(), now.getMonth(), now.getDate() + 1);
    var diff = tomorrow - now;
    var hrs = String(Math.floor(diff / 3600000)).padStart(2, '0');
    var mins = String(Math.floor((diff % 3600000) / 60000)).padStart(2, '0');
    var secs = String(Math.floor((diff % 60000) / 1000)).padStart(2, '0');

    var text = `${hrs}:${mins}:${secs}`;
    var gEl = document.getElementById('grid-countdown');
    var vEl = document.getElementById('versus-countdown');
    if (gEl) gEl.innerText = text;
    if (vEl) vEl.innerText = text;
  }
  tick();
  setInterval(tick, 1000);
}

// ==============================================================================
// PLACAR OFICIAL (ONLINE HIBRIDO: JSON + API + LOCALSTORAGE)
// ==============================================================================
function saveRecord(playerName, mode, scoreVal, timeStr) {
  var newEntry = {
    id: "dz-" + Date.now(),
    name: playerName,
    mode: mode,
    modeLabel: mode,
    score: scoreVal,
    time: timeStr,
    detail: `${scoreVal} em ${timeStr}`,
    date: new Date().toLocaleDateString('pt-BR')
  };

  try {
    var list = JSON.parse(localStorage.getItem('datazoom_records') || '[]');
    list.unshift(newEntry);
    localStorage.setItem('datazoom_records', JSON.stringify(list.slice(0, 50)));
  } catch (e) {}

  var targets = [LOCAL_API_LB_URL];
  if (REMOTE_LEADERBOARD_ENDPOINT) targets.unshift(REMOTE_LEADERBOARD_ENDPOINT);

  targets.forEach(function(url) {
    fetch(url, {
      method: "POST",
      headers: { "Content-Type": "text/plain;charset=utf-8" },
      body: JSON.stringify({
        id: newEntry.id,
        name: playerName,
        mode: mode.indexOf('Grid (Estados)') !== -1 ? 'grid-easy' :
              mode.indexOf('Grid (Municípios)') !== -1 ? 'grid-hard' :
              mode.indexOf('Versus') !== -1 ? 'versus' : 'streak',
        score: parseInt(String(scoreVal).replace(/\D/g, '') || '1', 10),
        detail: newEntry.detail,
        date: newEntry.date
      })
    }).catch(function() {});
  });
}

function renderLeaderboard() {
  var tbody = document.getElementById('leaderboard-body');
  var badge = document.getElementById('lb-sync-badge');

  fetch(STATIC_LB_URL, { cache: "no-store" })
    .then(function(r) { return r.ok ? r.json() : { entries: [] }; })
    .catch(function() { return { entries: [] }; })
    .then(function(staticData) {
      var staticList = (staticData && Array.isArray(staticData.entries)) ? staticData.entries : [];
      var localList = [];
      try { localList = JSON.parse(localStorage.getItem('datazoom_records') || '[]'); } catch (e) {}

      var merged = [];
      var map = {};

      localList.forEach(function(it) {
        var k = it.name + "__" + it.mode + "__" + it.score;
        map[k] = true;
        merged.push(it);
      });

      staticList.forEach(function(it) {
        var k = it.name + "__" + it.modeLabel + "__" + it.score;
        if (!map[k]) {
          merged.push({
            name: it.name,
            mode: it.modeLabel || it.mode,
            score: it.score + (it.maxScore ? ` / ${it.maxScore}` : ' pts'),
            time: it.detail || '--:--',
            date: it.date
          });
        }
      });

      if (merged.length === 0) {
        tbody.innerHTML = '<tr><td colspan="5" style="text-align: center; color: #888;">Nenhuma partida concluída ainda.</td></tr>';
        return;
      }

      tbody.innerHTML = merged.slice(0, 30).map(function(item) {
        return `
          <tr>
            <td><strong>${item.name || 'Jogador'}</strong></td>
            <td>${item.mode}</td>
            <td><span style="font-family: monospace; font-weight: 700; color: var(--green-btn);">${item.score}</span></td>
            <td>${item.time}</td>
            <td style="color: #666; font-size: 11px;">${item.date}</td>
          </tr>
        `;
      }).join('');

      if (badge) badge.innerText = "Online · Sincronizado";
    });
}

// ==============================================================================
// INICIALIZACAO: CARREGA O GRAO OFICIAL DE MINIGAMES_DATA.JSON
// ==============================================================================
fetch(DATA_JSON_URL)
  .then(function(r) {
    if (!r.ok) throw new Error("HTTP " + r.status);
    return r.json();
  })
  .then(function(payload) {
    DATA_STATES = payload.states.map(function(s) {
      return {
        id: s.uf,
        name: s.name,
        uf: s.uf,
        pop: s.pop,
        cattle: s.cattle,
        soy: s.soy,
        corn: s.corn,
        cassava: s.cassava,
        exports_usd: s.exports_usd,
        forest_pct: s.forest_pct,
        deforest_acc_km2: s.deforest_acc_km2,
        ips: s.ips,
        gd_ppc: s.gd_ppc,
        is_uf: true
      };
    });

    DATA_HARD = payload.municipalities.map(function(m) {
      return {
        id: m.id,
        name: m.name,
        uf: m.uf,
        pop: m.pop,
        cattle: m.cattle,
        soy: m.soy,
        corn: m.corn,
        cassava: m.cassava,
        exports_usd: m.exports_usd,
        forest_pct: m.forest_pct,
        deforest_acc_km2: m.deforest_acc_km2,
        ips: m.ips,
        gd_ppc: m.gd_ppc,
        in_arco: !!ARCO_DESMATAMENTO_NAMES[m.name]
      };
    });

    var homeBadge = document.getElementById('home-data-badge');
    if (homeBadge) {
      homeBadge.innerText = `${DATA_STATES.length} Estados e ${DATA_HARD.length} Municípios Oficiais da Amazônia Legal (.rds)`;
    }
  })
  .catch(function(err) {
    var homeBadge = document.getElementById('home-data-badge');
    if (homeBadge) homeBadge.innerText = "Erro ao carregar dados oficiais.";
  });

window.addEventListener('DOMContentLoaded', function() {
  openGameMode('home');
});
</script>

---
layout: default
title: "Datazoom minigames"
description: "Jogos interativos diários baseados nos dados oficiais da Amazônia Legal (IBGE, INPE/PRODES, MapBiomas, Comex Stat e IPS Amazônia)"
lang: pt
---

<style>
.mg-wrapper {
  max-width: 980px;
  margin: 28px auto 48px;
  padding: 0 20px;
  font-family: 'Work Sans', sans-serif;
  color: #1f2924;
}

.mg-hero {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  align-items: flex-end;
  gap: 16px;
  padding-bottom: 18px;
  border-bottom: 2px solid #e2ebe5;
  margin-bottom: 22px;
}

.mg-hero-title h1 {
  font-size: 30px;
  font-weight: 700;
  color: #114228;
  margin: 0 0 6px 0;
  letter-spacing: -0.5px;
}

.mg-hero-title p {
  font-size: 15px;
  color: #52635a;
  margin: 0;
}

.mg-hero-badges {
  display: flex;
  gap: 10px;
  align-items: center;
  flex-wrap: wrap;
}

.mg-badge {
  background: #edf5f0;
  border: 1px solid #c5ddd0;
  color: #165634;
  padding: 6px 12px;
  border-radius: 6px;
  font-size: 13px;
  font-weight: 600;
}

.mg-badge.accent {
  background: #fef6e6;
  border-color: #f3d18c;
  color: #8c5800;
}

/* Loading & Error States (Padrao Data Zoom Web) */
.mg-loading-box,
.mg-error-box {
  background: #ffffff;
  border: 1px solid #d5e2d9;
  border-radius: 12px;
  padding: 40px 24px;
  text-align: center;
  margin: 24px 0;
}

.mg-loading-title {
  font-size: 17px;
  font-weight: 700;
  color: #114228;
  margin-bottom: 6px;
}

.mg-loading-sub {
  font-size: 14px;
  color: #5a6b62;
}

.mg-error-box {
  border-color: #e4b4b4;
  background: #fff8f8;
}

/* Mode Tabs */
.mg-tabs {
  display: flex;
  gap: 8px;
  margin-bottom: 22px;
  border-bottom: 1px solid #d5e2d9;
  padding-bottom: 12px;
  flex-wrap: wrap;
}

.mg-tab-btn {
  background: #f4f7f5;
  border: 1px solid #d0ded5;
  color: #3b4d43;
  padding: 10px 18px;
  border-radius: 8px;
  font-family: 'Work Sans', sans-serif;
  font-size: 14px;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.18s ease;
  display: flex;
  align-items: center;
  gap: 8px;
}

.mg-tab-btn:hover {
  background: #e6f0ea;
  border-color: #9ec4ad;
}

.mg-tab-btn.active {
  background: #165634;
  border-color: #165634;
  color: #ffffff;
  box-shadow: 0 3px 10px rgba(22, 86, 52, 0.18);
}

.mg-panel {
  display: none;
}

.mg-panel.active {
  display: block;
}

/* Sub-toolbar */
.mg-toolbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  flex-wrap: wrap;
  gap: 12px;
  background: #f7faf8;
  border: 1px solid #dce7e0;
  border-radius: 10px;
  padding: 12px 16px;
  margin-bottom: 20px;
}

.mg-diff-group {
  display: flex;
  gap: 6px;
  align-items: center;
  flex-wrap: wrap;
}

.mg-diff-label {
  font-size: 13px;
  font-weight: 600;
  color: #4a5c52;
  margin-right: 4px;
}

.mg-diff-btn {
  background: #ffffff;
  border: 1px solid #c8d8ce;
  color: #2f4238;
  padding: 6px 12px;
  border-radius: 6px;
  font-size: 13px;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.15s;
}

.mg-diff-btn.active {
  background: #237a4b;
  border-color: #237a4b;
  color: #ffffff;
}

.mg-stats-bar {
  display: flex;
  gap: 16px;
  align-items: center;
  font-size: 14px;
  font-weight: 600;
  color: #1f3529;
  flex-wrap: wrap;
}

.mg-stat-pill {
  background: #ffffff;
  border: 1px solid #d5e2d9;
  padding: 5px 12px;
  border-radius: 6px;
}

.mg-btn-secondary {
  background: #ffffff;
  border: 1px solid #b8ccc0;
  color: #1f3529;
  padding: 6px 12px;
  border-radius: 6px;
  font-size: 13px;
  font-weight: 600;
  cursor: pointer;
  transition: background 0.15s;
}

.mg-btn-secondary:hover {
  background: #edf5f0;
}

/* GRID 3x3 LAYOUT */
.mg-grid-board {
  display: grid;
  grid-template-columns: 165px repeat(3, 1fr);
  gap: 10px;
  align-items: stretch;
  margin-bottom: 20px;
}

.mg-grid-corner {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  background: #eff5f1;
  border: 1px dashed #bdd1c4;
  border-radius: 10px;
  padding: 10px;
  text-align: center;
  font-size: 12px;
  color: #4e6357;
  font-weight: 600;
}

.mg-axis-header {
  background: #163d28;
  color: #ffffff;
  border-radius: 10px;
  padding: 12px 10px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;
  font-size: 13px;
  font-weight: 600;
  line-height: 1.35;
  box-shadow: 0 2px 5px rgba(0,0,0,0.06);
}

.mg-axis-header .mg-axis-sub {
  font-size: 11px;
  font-weight: 400;
  color: #b7d9c5;
  margin-top: 4px;
}

.mg-cell {
  min-height: 112px;
  background: #ffffff;
  border: 2px solid #cfded4;
  border-radius: 10px;
  padding: 10px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;
  cursor: pointer;
  transition: all 0.16s ease;
  position: relative;
}

.mg-cell:hover:not(.locked) {
  border-color: #237a4b;
  background: #f5fbf7;
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(35, 122, 75, 0.12);
}

.mg-cell.correct {
  background: #e6f6ec;
  border-color: #1f8a4c;
  cursor: default;
}

.mg-cell.revealed {
  background: #fff8e8;
  border-color: #d99b26;
  cursor: default;
}

.mg-cell.wrong-flash {
  animation: mgShake 0.35s ease;
  border-color: #c93b3b;
  background: #fdf0f0;
}

@keyframes mgShake {
  0%, 100% { transform: translateX(0); }
  25% { transform: translateX(-5px); }
  75% { transform: translateX(5px); }
}

.mg-cell-plus {
  font-size: 24px;
  font-weight: 400;
  color: #8fa899;
  line-height: 1;
}

.mg-cell-hint {
  font-size: 11px;
  color: #72877b;
  margin-top: 4px;
}

.mg-cell-name {
  font-size: 14px;
  font-weight: 700;
  color: #114228;
  line-height: 1.25;
}

.mg-cell-uf {
  font-size: 11px;
  font-weight: 600;
  color: #3f624e;
  background: #cbe6d5;
  padding: 2px 7px;
  border-radius: 4px;
  margin-top: 5px;
}

.mg-cell.revealed .mg-cell-uf {
  background: #f5deb1;
  color: #784d00;
}

/* Search Modal for Grid */
.mg-modal-backdrop {
  display: none;
  position: fixed;
  inset: 0;
  background: rgba(15, 32, 23, 0.55);
  z-index: 2000;
  justify-content: center;
  align-items: center;
  padding: 16px;
}

.mg-modal-backdrop.open {
  display: flex;
}

.mg-modal {
  background: #ffffff;
  width: 100%;
  max-width: 480px;
  border-radius: 12px;
  padding: 20px;
  box-shadow: 0 16px 40px rgba(0, 0, 0, 0.22);
}

.mg-modal-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 12px;
}

.mg-modal-title {
  font-size: 16px;
  font-weight: 700;
  color: #114228;
  margin: 0;
}

.mg-modal-criteria {
  font-size: 13px;
  color: #4a5d52;
  background: #f2f7f4;
  padding: 8px 12px;
  border-radius: 6px;
  margin-bottom: 12px;
  line-height: 1.4;
}

.mg-search-input {
  width: 100%;
  box-sizing: border-box;
  padding: 10px 12px;
  font-size: 15px;
  border: 2px solid #bfd3c6;
  border-radius: 8px;
  font-family: 'Work Sans', sans-serif;
  margin-bottom: 10px;
  outline: none;
}

.mg-search-input:focus {
  border-color: #165634;
}

.mg-search-list {
  max-height: 240px;
  overflow-y: auto;
  border: 1px solid #e1ebe4;
  border-radius: 8px;
  divide-y: 1px solid #eef4f0;
}

.mg-search-item {
  padding: 10px 12px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  cursor: pointer;
  font-size: 14px;
  border-bottom: 1px solid #f0f5f2;
}

.mg-search-item:hover {
  background: #e9f4ee;
}

.mg-search-item.used {
  opacity: 0.45;
  cursor: not-allowed;
}

/* VERSUS & STREAK CARDS */
.mg-versus-stage {
  background: #ffffff;
  border: 1px solid #d5e2d9;
  border-radius: 12px;
  padding: 24px;
  box-shadow: 0 3px 12px rgba(0, 0, 0, 0.04);
}

.mg-question-prompt {
  text-align: center;
  margin-bottom: 22px;
}

.mg-question-kicker {
  font-size: 12px;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.8px;
  color: #237a4b;
  margin-bottom: 6px;
}

.mg-question-title {
  font-size: 22px;
  font-weight: 700;
  color: #132a1e;
  margin: 0 0 6px 0;
}

.mg-question-unit {
  font-size: 13px;
  color: #5c7065;
}

.mg-duel-grid {
  display: grid;
  grid-template-columns: 1fr auto 1fr;
  gap: 16px;
  align-items: stretch;
  margin-bottom: 20px;
}

.mg-duel-card {
  background: #f8fbf9;
  border: 2px solid #cde0d4;
  border-radius: 12px;
  padding: 26px 20px;
  text-align: center;
  cursor: pointer;
  transition: all 0.18s ease;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.mg-duel-card:hover:not(.disabled) {
  border-color: #165634;
  background: #eef7f1;
  transform: translateY(-3px);
  box-shadow: 0 6px 16px rgba(22, 86, 52, 0.12);
}

.mg-duel-card.winner {
  background: #e6f6ec;
  border-color: #1f8a4c;
}

.mg-duel-card.loser {
  background: #fdf0f0;
  border-color: #d44c4c;
}

.mg-duel-state {
  font-size: 12px;
  font-weight: 700;
  color: #237a4b;
  background: #dcefe3;
  padding: 3px 10px;
  border-radius: 99px;
  margin-bottom: 10px;
}

.mg-duel-name {
  font-size: 22px;
  font-weight: 700;
  color: #113823;
  margin-bottom: 10px;
}

.mg-duel-value {
  font-size: 20px;
  font-weight: 700;
  color: #165634;
  margin-top: 8px;
  min-height: 28px;
}

.mg-duel-vs {
  display: flex;
  align-items: center;
  justify-content: center;
  font-weight: 800;
  font-size: 16px;
  color: #6b8275;
}

.mg-feedback-box {
  background: #f2f7f4;
  border-left: 4px solid #165634;
  padding: 12px 16px;
  border-radius: 6px;
  display: none;
  justify-content: space-between;
  align-items: center;
  gap: 12px;
  flex-wrap: wrap;
}

.mg-feedback-box.show {
  display: flex;
}

.mg-SaveScore-banner {
  margin-top: 18px;
  background: #edf7f1;
  border: 1px solid #b7dcc5;
  border-radius: 10px;
  padding: 14px 18px;
  display: none;
  justify-content: space-between;
  align-items: center;
  flex-wrap: wrap;
  gap: 12px;
}

.mg-SaveScore-banner.show {
  display: flex;
}

.mg-input-inline {
  padding: 8px 12px;
  border: 1px solid #b5cbbd;
  border-radius: 6px;
  font-size: 14px;
  font-family: 'Work Sans', sans-serif;
}

.mg-btn-primary {
  background: #165634;
  color: #ffffff;
  border: none;
  padding: 9px 16px;
  border-radius: 6px;
  font-size: 14px;
  font-weight: 600;
  cursor: pointer;
}

.mg-btn-primary:hover {
  background: #0f3d24;
}

/* Leaderboard Table */
.mg-lb-table {
  width: 100%;
  border-collapse: collapse;
  background: #ffffff;
  border-radius: 10px;
  overflow: hidden;
  border: 1px solid #d5e2d9;
}

.mg-lb-table th,
.mg-lb-table td {
  padding: 12px 14px;
  text-align: left;
  border-bottom: 1px solid #ebf1ed;
  font-size: 14px;
}

.mg-lb-table th {
  background: #163d28;
  color: #ffffff;
  font-weight: 600;
  font-size: 13px;
}

.mg-lb-table tr:nth-child(even) {
  background: #f9fbfa;
}

.mg-rank-badge {
  display: inline-block;
  min-width: 24px;
  text-align: center;
  font-weight: 700;
  border-radius: 4px;
  padding: 2px 6px;
  background: #e6efe9;
  color: #165634;
}

@media (max-width: 720px) {
  .mg-grid-board {
    grid-template-columns: 112px repeat(3, 1fr);
    gap: 6px;
  }
  .mg-axis-header {
    font-size: 11px;
    padding: 8px 6px;
  }
  .mg-cell {
    min-height: 88px;
    padding: 6px;
  }
  .mg-duel-grid {
    grid-template-columns: 1fr;
  }
  .mg-duel-vs {
    padding: 4px 0;
  }
}
</style>

<div class="mg-wrapper">
  <div class="mg-hero">
    <div class="mg-hero-title">
      <h1>Datazoom minigames</h1>
      <p>Teste seus conhecimentos sobre economia, demografia, agropecuária e meio ambiente nos 9 estados e 772 municípios oficiais da Amazônia Legal.</p>
    </div>
    <div class="mg-hero-badges">
      <span class="mg-badge" id="mg-daily-date">Desafio Diário</span>
      <span class="mg-badge accent" id="mg-data-status">Sincronizando dados oficiais...</span>
    </div>
  </div>

  <div id="mg-loading-state" class="mg-loading-box">
    <div class="mg-loading-title">Carregando base oficial do Data Zoom Amazônia...</div>
    <div class="mg-loading-sub">Processando indicadores dos 772 municípios e 9 estados da Amazônia Legal (IBGE, INPE/PRODES, MapBiomas, Comex Stat e IPS).</div>
  </div>

  <div id="mg-error-state" class="mg-error-box" style="display:none;">
    <div class="mg-loading-title" style="color:#8f1d1d;">Não foi possível carregar os dados dos jogos</div>
    <div class="mg-loading-sub" id="mg-error-msg" style="margin-bottom:14px;">Verifique sua conexão e tente novamente.</div>
    <button class="mg-btn-primary" id="mg-retry-btn">Tentar novamente</button>
  </div>

  <div id="mg-app-content" style="display:none;">
    <!-- Navigation Tabs -->
    <div class="mg-tabs" role="tablist">
      <button class="mg-tab-btn active" data-tab="grid" role="tab">Modo Grid (3x3)</button>
      <button class="mg-tab-btn" data-tab="versus" role="tab">Modo Versus (5 Desafios Diários)</button>
      <button class="mg-tab-btn" data-tab="streak" role="tab">Modo Streak (3 Chances Diárias)</button>
      <button class="mg-tab-btn" data-tab="leaderboard" role="tab">Placar &amp; Recordes</button>
    </div>

    <!-- ==================== PANEL 1: MODO GRID ==================== -->
    <div class="mg-panel active" id="panel-grid">
      <div class="mg-toolbar">
        <div class="mg-diff-group">
          <span class="mg-diff-label">Dificuldade:</span>
          <button class="mg-diff-btn active" data-diff="easy">Estados (9 UFs da Amazônia Legal)</button>
          <button class="mg-diff-btn" data-diff="hard">Municípios (772 da Amazônia Legal)</button>
        </div>
        <div class="mg-stats-bar">
          <span class="mg-stat-pill" id="grid-score-pill">Acertos: 0 / 9</span>
          <span class="mg-stat-pill" id="grid-guesses-pill">Tentativas restantes: 10</span>
          <button class="mg-btn-secondary" id="grid-giveup-btn">Ver Gabarito</button>
        </div>
      </div>

      <div class="mg-grid-board" id="mg-grid-board">
        <!-- Populated by JS -->
      </div>

      <div class="mg-SaveScore-banner" id="grid-save-banner">
        <div>
          <strong id="grid-finish-title">Partida concluída!</strong>
          <div id="grid-finish-desc" style="font-size:13px; color:#3d5246;">Salve sua pontuação no placar online do Data Zoom Amazônia.</div>
        </div>
        <div style="display:flex; gap:8px; align-items:center;">
          <input type="text" class="mg-input-inline" id="grid-player-name" placeholder="Seu nome ou apelido" maxlength="25">
          <button class="mg-btn-primary" id="grid-save-btn">Salvar no Placar</button>
        </div>
      </div>
    </div>

    <!-- ==================== PANEL 2: MODO VERSUS ==================== -->
    <div class="mg-panel" id="panel-versus">
      <div class="mg-toolbar">
        <div class="mg-diff-group">
          <span class="mg-diff-label">Desafio Diário Oficial:</span>
          <span style="font-size:13px; color:#2b4738; font-weight:600;" id="versus-date-label">5 comparações diárias auditadas</span>
        </div>
        <div class="mg-stats-bar">
          <span class="mg-stat-pill" id="versus-progress-pill">Pergunta: 1 / 5</span>
          <span class="mg-stat-pill" id="versus-score-pill">Acertos hoje: 0 / 5</span>
        </div>
      </div>

      <div class="mg-versus-stage" id="versus-stage">
        <div class="mg-question-prompt">
          <div class="mg-question-kicker" id="versus-kicker">DESAFIO DIÁRIO #1 DE 5</div>
          <h2 class="mg-question-title" id="versus-question">Carregando pergunta...</h2>
          <div class="mg-question-unit" id="versus-unit">Selecione a localidade com o maior valor no indicador</div>
        </div>

        <div class="mg-duel-grid">
          <div class="mg-duel-card" id="versus-card-a" data-choice="0">
            <span class="mg-duel-state" id="versus-uf-a">UF</span>
            <div class="mg-duel-name" id="versus-name-a">Opção A</div>
            <div class="mg-duel-value" id="versus-val-a">?</div>
          </div>
          <div class="mg-duel-vs">VS</div>
          <div class="mg-duel-card" id="versus-card-b" data-choice="1">
            <span class="mg-duel-state" id="versus-uf-b">UF</span>
            <div class="mg-duel-name" id="versus-name-b">Opção B</div>
            <div class="mg-duel-value" id="versus-val-b">?</div>
          </div>
        </div>

        <div class="mg-feedback-box" id="versus-feedback">
          <div id="versus-feedback-text" style="font-size:14px; font-weight:600;"></div>
          <button class="mg-btn-primary" id="versus-next-btn">Próxima Pergunta &rarr;</button>
        </div>

        <div class="mg-SaveScore-banner" id="versus-save-banner">
          <div>
            <strong id="versus-finish-title">Desafio Diário Concluído!</strong>
            <div id="versus-finish-desc" style="font-size:13px; color:#3d5246;">Registre seu resultado de hoje no placar online ou reveja o gabarito das 5 perguntas.</div>
          </div>
          <div style="display:flex; gap:8px; align-items:center; flex-wrap:wrap;" id="versus-save-controls">
            <input type="text" class="mg-input-inline" id="versus-player-name" placeholder="Seu nome ou apelido" maxlength="25">
            <button class="mg-btn-primary" id="versus-save-btn">Salvar no Placar</button>
            <button class="mg-btn-secondary" id="versus-review-btn">Rever Perguntas de Hoje</button>
          </div>
        </div>
      </div>
    </div>

    <!-- ==================== PANEL 3: MODO STREAK ==================== -->
    <div class="mg-panel" id="panel-streak">
      <div class="mg-toolbar">
        <div class="mg-diff-group">
          <span class="mg-diff-label">Sobrevivência Diária:</span>
          <span style="font-size:13px; color:#4d6156;">Acerte o máximo seguido · Limite de 3 tentativas por dia</span>
        </div>
        <div class="mg-stats-bar">
          <span class="mg-stat-pill" id="streak-lives-pill">Chances hoje: 3 / 3</span>
          <span class="mg-stat-pill" id="streak-current-pill">Sequência Atual: 0</span>
          <span class="mg-stat-pill" id="streak-best-pill">Melhor Hoje: 0</span>
        </div>
      </div>

      <div class="mg-versus-stage">
        <div class="mg-question-prompt">
          <div class="mg-question-kicker" id="streak-kicker">SEQUÊNCIA DE ACERTOS</div>
          <h2 class="mg-question-title" id="streak-question">Carregando desafio...</h2>
          <div class="mg-question-unit" id="streak-unit">Um único erro encerra a tentativa atual</div>
        </div>

        <div class="mg-duel-grid" id="streak-duel-grid">
          <div class="mg-duel-card" id="streak-card-a" data-choice="0">
            <span class="mg-duel-state" id="streak-uf-a">UF</span>
            <div class="mg-duel-name" id="streak-name-a">Opção A</div>
            <div class="mg-duel-value" id="streak-val-a">?</div>
          </div>
          <div class="mg-duel-vs">VS</div>
          <div class="mg-duel-card" id="streak-card-b" data-choice="1">
            <span class="mg-duel-state" id="streak-uf-b">UF</span>
            <div class="mg-duel-name" id="streak-name-b">Opção B</div>
            <div class="mg-duel-value" id="streak-val-b">?</div>
          </div>
        </div>

        <div class="mg-feedback-box" id="streak-feedback">
          <div id="streak-feedback-text" style="font-size:14px; font-weight:600;"></div>
          <button class="mg-btn-primary" id="streak-next-btn">Continuar &rarr;</button>
        </div>

        <div class="mg-SaveScore-banner" id="streak-save-banner">
          <div>
            <strong id="streak-finish-title">Fim da sequência!</strong>
            <div id="streak-finish-desc" style="font-size:13px; color:#3d5246;">Salve sua sequência no placar online.</div>
          </div>
          <div style="display:flex; gap:8px; align-items:center; flex-wrap:wrap;">
            <input type="text" class="mg-input-inline" id="streak-player-name" placeholder="Seu nome ou apelido" maxlength="25">
            <button class="mg-btn-primary" id="streak-save-btn">Salvar Recorde</button>
          </div>
        </div>
      </div>
    </div>

    <!-- ==================== PANEL 4: LEADERBOARD ONLINE ==================== -->
    <div class="mg-panel" id="panel-leaderboard">
      <div class="mg-toolbar">
        <div class="mg-diff-group">
          <span class="mg-diff-label">Filtrar Modo:</span>
          <button class="mg-diff-btn active" data-lbfilter="all">Todos</button>
          <button class="mg-diff-btn" data-lbfilter="grid-easy">Modo Grid (Estados)</button>
          <button class="mg-diff-btn" data-lbfilter="grid-hard">Modo Grid (Municípios)</button>
          <button class="mg-diff-btn" data-lbfilter="versus">Modo Versus</button>
          <button class="mg-diff-btn" data-lbfilter="streak">Modo Streak</button>
        </div>
        <div class="mg-stats-bar">
          <span class="mg-stat-pill" id="lb-sync-status">Sincronizado</span>
          <button class="mg-btn-secondary" id="lb-refresh-btn">Atualizar Placar</button>
        </div>
      </div>

      <table class="mg-lb-table">
        <thead>
          <tr>
            <th style="width:65px;">Pos.</th>
            <th>Jogador</th>
            <th>Modo de Jogo</th>
            <th>Pontuação</th>
            <th>Detalhe</th>
            <th>Data</th>
          </tr>
        </thead>
        <tbody id="mg-lb-tbody">
          <!-- Populated by JS -->
        </tbody>
      </table>
    </div>
  </div>
</div>

<!-- Modal for selecting municipality/state in Grid Mode -->
<div class="mg-modal-backdrop" id="mg-search-modal">
  <div class="mg-modal">
    <div class="mg-modal-header">
      <h3 class="mg-modal-title">Selecionar Localidade</h3>
      <button class="mg-btn-secondary" id="mg-modal-close">Fechar</button>
    </div>
    <div class="mg-modal-criteria" id="mg-modal-criteria-text"></div>
    <input type="text" class="mg-search-input" id="mg-search-input" placeholder="Digite para filtrar..." autocomplete="off">
    <div class="mg-search-list" id="mg-search-list"></div>
  </div>
</div>

<!-- Rodape Institucional (Padrao PRs Data Zoom Amazonia) -->
<div class="rodape_viz">
  <h1>INFORMAÇÕES SOBRE A BASE DE DADOS UTILIZADA NESSA VISUALIZAÇÃO</h1>
  <p>
    Os desafios diários do <b>Datazoom minigames</b> são gerados diretamente a partir das bases oficiais processadas pelo pacote
    <code>datazoom.amazonia</code> para os <b>9 estados</b> e os <b>772 municípios</b> que compõem oficialmente a Amazônia Legal
    (filtro oficial <code>legal_amazon == 1</code> em <code>datazoom.amazonia::municipalities</code>).
  </p>
  <p>
    <b>Fontes e anos de referência consolidados:</b><br>
    &bull; <b>Cobertura e Uso da Terra (2024):</b> Projeto MapBiomas Coleção 9, extraído via <code>load_mapbiomas()</code>.<br>
    &bull; <b>Efetivo da Pecuária Municipal (2024):</b> IBGE / Pesquisa da Pecuária Municipal (PPM), extraído via <code>load_ppm()</code>.<br>
    &bull; <b>Produção Agrícola Municipal (2024):</b> IBGE / Produção Agrícola Municipal (PAM — Soja, Milho, Mandioca e Arroz), extraído via <code>load_pam()</code>.<br>
    &bull; <b>Exportações Municipais (2025):</b> MDIC / Comex Stat (último ano calendário fechado, em US$ FOB nominais), extraído via <code>load_br_trade()</code>.<br>
    &bull; <b>Desmatamento na Amazônia Legal (até 2023):</b> INPE / Projeto PRODES, extraído via <code>load_prodes()</code>.<br>
    &bull; <b>PIB Municipal, População e Cadastro Central de Empresas (2020):</b> IBGE / PIB dos Municípios e CEMPRE, extraídos via <code>load_pibmunic()</code>, <code>load_population()</code> e <code>load_cempre()</code>.<br>
    &bull; <b>Índice de Progresso Social (2021):</b> IMAZON / IPS Amazônia, extraído via <code>load_ips()</code>.
  </p>
  <div class="aviso_rodape">
    As bases de dados utilizadas nos jogos passaram pelo tratamento disponibilizado pelo pacote <b>datazoom.amazonia</b> no R e exportadas pelo script auditado <code>scripts/export_minigames_web.R</code>.
  </div>
</div>

<script>
(function() {
  var BASE_URL = "{{ site.baseurl }}";
  var DATA_JSON_URL = BASE_URL + "/assets/data/minigames_data.json";
  var STATIC_LB_URL = BASE_URL + "/assets/data/leaderboard.json";
  var LOCAL_API_LB_URL = BASE_URL + "/api/leaderboard";
  // URL opcional do Google Apps Script Web App (ver scripts/leaderboard_apps_script.gs)
  var REMOTE_LEADERBOARD_ENDPOINT = window.DZ_LEADERBOARD_API_URL || "";

  // Estado carregado do JSON oficial (.rds -> minigames_data.json)
  var DATA_META = null;
  var DATA_DICT = {};
  var DATA_STATES = [];
  var DATA_MUNIS = [];

  // Chave do dia local (YYYY-MM-DD)
  var now = new Date();
  var TODAY_KEY = now.getFullYear() + "-" +
                  String(now.getMonth() + 1).padStart(2, "0") + "-" +
                  String(now.getDate()).padStart(2, "0");
  var TODAY_BR = now.toLocaleDateString("pt-BR");

  document.getElementById("mg-daily-date").textContent = "Desafio Diário · " + TODAY_BR;
  document.getElementById("versus-date-label").textContent =
    "5 perguntas oficiais de hoje (" + TODAY_BR + ")";

  // Utilitarios de formatacao pt-BR
  function fmtInt(n) {
    return Math.round(Number(n) || 0).toLocaleString("pt-BR");
  }
  function fmtDec(n, d) {
    return (Number(n) || 0).toLocaleString("pt-BR", {
      minimumFractionDigits: d,
      maximumFractionDigits: d
    });
  }
  function fmtUSD(n) {
    var val = Number(n) || 0;
    if (val >= 1e9) return "US$ " + fmtDec(val / 1e9, 2) + " bi";
    if (val >= 1e6) return "US$ " + fmtDec(val / 1e6, 1) + " mi";
    if (val >= 1e3) return "US$ " + fmtInt(val / 1e3) + " mil";
    return "US$ " + fmtInt(val);
  }
  function formatMetricValue(metric, val) {
    if (metric === "exports_usd") return fmtUSD(val);
    if (metric === "gd_ppc") return "R$ " + fmtInt(val);
    if (metric === "gdp_mil") return "R$ " + fmtDec((Number(val) || 0) / 1e6, 2) + " bi";
    if (metric === "forest_pct") return fmtDec(val, 1) + "%";
    if (metric === "ips") return fmtDec(val, 1) + " pts";
    if (metric === "area_km2" || metric === "forest_km2" || metric === "pasture_km2" || metric === "deforest_acc_km2" || metric === "deforest_inc_km2") {
      return fmtInt(val) + " km²";
    }
    if (metric === "soy" || metric === "corn" || metric === "cassava" || metric === "rice") {
      return fmtInt(val) + " t";
    }
    if (metric === "cattle") return fmtInt(val) + " cabeças";
    if (metric === "pop") return fmtInt(val) + " hab.";
    if (metric === "empresas") return fmtInt(val) + " empresas";
    if (metric === "ocupados") return fmtInt(val) + " ocupados";
    return fmtInt(val);
  }

  // PRNG deterministico por semente textual (Mulberry32 + FNV-1a)
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

  function itemKey(item) {
    return item.name + "__" + item.uf;
  }

  // ============================================================================
  // ALGORITMO DE CASAMENTO BIPARTIDO (SDR / Hall's Marriage Theorem)
  // Garante matematicamente que qualquer tabuleiro 3x3 selecionado possui
  // 9 respostas distintas validas (nenhuma celula sem gabarito ou repetida).
  // ============================================================================
  function solveBoardMatching(dataset, rows, cols, prefilledCells) {
    var candidates = [];
    for (var r = 0; r < 3; r++) {
      for (var c = 0; c < 3; c++) {
        var idx = r * 3 + c;
        var valid = dataset.filter(function(item) {
          return rows[r].fn(item) && cols[c].fn(item);
        });
        // Ordena por maior populacao para priorizar localidades conhecidas no gabarito
        valid.sort(function(a, b) { return (b.pop || 0) - (a.pop || 0); });
        candidates.push(valid);
        if (valid.length === 0) return null;
      }
    }

    var solution = new Array(9).fill(null);
    var used = {};

    if (prefilledCells) {
      for (var k = 0; k < 9; k++) {
        if (prefilledCells[k] && prefilledCells[k].status === "correct") {
          solution[k] = prefilledCells[k];
          used[prefilledCells[k].name + "__" + prefilledCells[k].uf] = true;
        }
      }
    }

    var openIndices = [];
    for (var i = 0; i < 9; i++) {
      if (!solution[i]) openIndices.push(i);
    }
    openIndices.sort(function(a, b) {
      return candidates[a].length - candidates[b].length;
    });

    function backtrack(pos) {
      if (pos >= openIndices.length) return true;
      var cellIdx = openIndices[pos];
      var list = candidates[cellIdx];
      var limit = Math.min(list.length, 45);
      for (var i = 0; i < limit; i++) {
        var cand = list[i];
        var key = itemKey(cand);
        if (!used[key]) {
          used[key] = true;
          solution[cellIdx] = cand;
          if (backtrack(pos + 1)) return true;
          solution[cellIdx] = null;
          delete used[key];
        }
      }
      return false;
    }

    if (backtrack(0)) return solution;
    return null;
  }

  // Construtor de pools de tabuleiros 3x3 validados sobre o grao oficial
  var VALID_BOARDS_EASY = [];
  var VALID_BOARDS_HARD = [];

  function buildValidatedGridPools() {
    var stateRowSets = [
      [
        { label: "População > 3 milhões", sub: "IBGE (2020)", fn: function(d) { return d.pop > 3000000; } },
        { label: "População entre 850 mil e 3,6 mi", sub: "IBGE (2020)", fn: function(d) { return d.pop >= 850000 && d.pop <= 3600000; } },
        { label: "População < 1,8 milhão", sub: "IBGE (2020)", fn: function(d) { return d.pop < 1800000; } }
      ],
      [
        { label: "Exportações > US$ 3 bilhões", sub: "Comex Stat (2025)", fn: function(d) { return d.exports_usd > 3000000000; } },
        { label: "Exportações entre US$ 250 mi e US$ 5,5 bi", sub: "Comex Stat (2025)", fn: function(d) { return d.exports_usd >= 250000000 && d.exports_usd <= 5500000000; } },
        { label: "Exportações < US$ 1 bilhão", sub: "Comex Stat (2025)", fn: function(d) { return d.exports_usd < 1000000000; } }
      ],
      [
        { label: "Rebanho Bovino > 11 milhões", sub: "IBGE PPM (2024)", fn: function(d) { return d.cattle > 11000000; } },
        { label: "Rebanho entre 2 mi e 19 mi cabeças", sub: "IBGE PPM (2024)", fn: function(d) { return d.cattle >= 2000000 && d.cattle <= 19000000; } },
        { label: "Rebanho Bovino < 5,5 milhões", sub: "IBGE PPM (2024)", fn: function(d) { return d.cattle < 5500000; } }
      ],
      [
        { label: "Desmatamento Acum. > 95 mil km²", sub: "INPE PRODES", fn: function(d) { return d.deforest_acc_km2 > 95000; } },
        { label: "Desmatamento entre 25 mil e 110 mil km²", sub: "INPE PRODES", fn: function(d) { return d.deforest_acc_km2 >= 25000 && d.deforest_acc_km2 <= 110000; } },
        { label: "Desmatamento Acum. < 50 mil km²", sub: "INPE PRODES", fn: function(d) { return d.deforest_acc_km2 < 50000; } }
      ],
      [
        { label: "Mais de 34 mil empresas ativas", sub: "IBGE CEMPRE (2020)", fn: function(d) { return d.empresas > 34000; } },
        { label: "Entre 8 mil e 60 mil empresas", sub: "IBGE CEMPRE (2020)", fn: function(d) { return d.empresas >= 8000 && d.empresas <= 60000; } },
        { label: "Menos de 30 mil empresas ativas", sub: "IBGE CEMPRE (2020)", fn: function(d) { return d.empresas < 30000; } }
      ]
    ];

    var stateColSets = [
      [
        { label: "Cobertura Florestal > 74%", sub: "MapBiomas (2024)", fn: function(d) { return d.forest_pct > 74; } },
        { label: "Cobertura Florestal entre 55% e 83%", sub: "MapBiomas (2024)", fn: function(d) { return d.forest_pct >= 55 && d.forest_pct <= 83; } },
        { label: "Cobertura Florestal < 73%", sub: "MapBiomas (2024)", fn: function(d) { return d.forest_pct < 73; } }
      ],
      [
        { label: "PIB per capita > R$ 27.000", sub: "IBGE PIB (2020)", fn: function(d) { return d.gd_ppc > 27000; } },
        { label: "PIB per capita entre R$ 21 mil e R$ 28 mil", sub: "IBGE PIB (2020)", fn: function(d) { return d.gd_ppc >= 21000 && d.gd_ppc <= 28000; } },
        { label: "PIB per capita < R$ 25.500", sub: "IBGE PIB (2020)", fn: function(d) { return d.gd_ppc < 25500; } }
      ],
      [
        { label: "Produção de Soja > 2 milhões t", sub: "IBGE PAM (2024)", fn: function(d) { return d.soy > 2000000; } },
        { label: "Soja entre 60 mil e 3,8 mi t", sub: "IBGE PAM (2024)", fn: function(d) { return d.soy >= 60000 && d.soy <= 3800000; } },
        { label: "Produção de Soja < 500 mil t", sub: "IBGE PAM (2024)", fn: function(d) { return d.soy < 500000; } }
      ],
      [
        { label: "IPS Amazônia >= 59,6", sub: "IMAZON (2021)", fn: function(d) { return d.ips >= 59.6; } },
        { label: "IPS Amazônia entre 56,5 e 60,0", sub: "IMAZON (2021)", fn: function(d) { return d.ips >= 56.5 && d.ips <= 60.0; } },
        { label: "IPS Amazônia < 58,0", sub: "IMAZON (2021)", fn: function(d) { return d.ips < 58.0; } }
      ],
      [
        { label: "Produção de Mandioca > 350 mil t", sub: "IBGE PAM (2024)", fn: function(d) { return d.cassava > 350000; } },
        { label: "Mandioca entre 100 mil e 500 mil t", sub: "IBGE PAM (2024)", fn: function(d) { return d.cassava >= 100000 && d.cassava <= 500000; } },
        { label: "Produção de Mandioca < 300 mil t", sub: "IBGE PAM (2024)", fn: function(d) { return d.cassava < 300000; } }
      ]
    ];

    VALID_BOARDS_EASY = [];
    for (var i = 0; i < stateRowSets.length; i++) {
      for (var j = 0; j < stateColSets.length; j++) {
        if (solveBoardMatching(DATA_STATES, stateRowSets[i], stateColSets[j], null)) {
          VALID_BOARDS_EASY.push({ rows: stateRowSets[i], cols: stateColSets[j] });
        }
      }
    }

    var muniRowSets = [
      [
        { label: "Pertence ao Pará (PA)", sub: "144 municípios na Amazônia Legal", fn: function(d) { return d.uf === "PA"; } },
        { label: "Pertence ao Mato Grosso (MT)", sub: "141 municípios na Amazônia Legal", fn: function(d) { return d.uf === "MT"; } },
        { label: "Pertence ao Amazonas (AM) ou Rondônia (RO)", sub: "AM (62) ou RO (52)", fn: function(d) { return d.uf === "AM" || d.uf === "RO"; } }
      ],
      [
        { label: "Pertence ao Maranhão (MA) ou Tocantins (TO)", sub: "MA (181) ou TO (139)", fn: function(d) { return d.uf === "MA" || d.uf === "TO"; } },
        { label: "Pertence ao Pará (PA)", sub: "144 municípios na Amazônia Legal", fn: function(d) { return d.uf === "PA"; } },
        { label: "Pertence ao Acre (AC), Amapá (AP) ou Roraima (RR)", sub: "AC, AP ou RR", fn: function(d) { return d.uf === "AC" || d.uf === "AP" || d.uf === "RR"; } }
      ],
      [
        { label: "População > 100.000 hab.", sub: "IBGE (2020)", fn: function(d) { return d.pop > 100000; } },
        { label: "População entre 25 mil e 100 mil hab.", sub: "IBGE (2020)", fn: function(d) { return d.pop >= 25000 && d.pop <= 100000; } },
        { label: "População < 25.000 hab.", sub: "IBGE (2020)", fn: function(d) { return d.pop < 25000; } }
      ],
      [
        { label: "Exportador (> US$ 10 milhões FOB)", sub: "Comex Stat (2025)", fn: function(d) { return d.exports_usd > 10000000; } },
        { label: "Produtor de Soja (> 20.000 ton)", sub: "IBGE PAM (2024)", fn: function(d) { return d.soy > 20000; } },
        { label: "Produtor de Mandioca (> 15.000 ton)", sub: "IBGE PAM (2024)", fn: function(d) { return d.cassava > 15000; } }
      ],
      [
        { label: "Rebanho Bovino > 250.000 cabeças", sub: "IBGE PPM (2024)", fn: function(d) { return d.cattle > 250000; } },
        { label: "Cobertura Florestal > 80%", sub: "MapBiomas (2024)", fn: function(d) { return d.forest_pct > 80; } },
        { label: "Mais de 1.000 empresas ativas", sub: "IBGE CEMPRE (2020)", fn: function(d) { return d.empresas > 1000; } }
      ]
    ];

    var muniColSets = [
      [
        { label: "Cobertura Florestal > 75%", sub: "MapBiomas (2024)", fn: function(d) { return d.forest_pct > 75; } },
        { label: "Rebanho Bovino > 150.000 cabeças", sub: "IBGE PPM (2024)", fn: function(d) { return d.cattle > 150000; } },
        { label: "PIB per capita > R$ 25.000", sub: "IBGE PIB (2020)", fn: function(d) { return d.gd_ppc > 25000; } }
      ],
      [
        { label: "IPS Amazônia >= 60,0 pontos", sub: "IMAZON (2021)", fn: function(d) { return d.ips >= 60.0; } },
        { label: "Produção de Milho > 10.000 ton", sub: "IBGE PAM (2024)", fn: function(d) { return d.corn > 10000; } },
        { label: "Desmatamento Acum. > 1.500 km²", sub: "INPE PRODES", fn: function(d) { return d.deforest_acc_km2 > 1500; } }
      ],
      [
        { label: "Área Territorial > 8.000 km²", sub: "MapBiomas / IBGE", fn: function(d) { return d.area_km2 > 8000; } },
        { label: "Exportações > US$ 1 milhão FOB", sub: "Comex Stat (2025)", fn: function(d) { return d.exports_usd > 1000000; } },
        { label: "População > 40.000 hab.", sub: "IBGE (2020)", fn: function(d) { return d.pop > 40000; } }
      ],
      [
        { label: "Produção de Mandioca > 10.000 ton", sub: "IBGE PAM (2024)", fn: function(d) { return d.cassava > 10000; } },
        { label: "Mais de 500 empresas ativas", sub: "IBGE CEMPRE (2020)", fn: function(d) { return d.empresas > 500; } },
        { label: "Cobertura Florestal < 50%", sub: "MapBiomas (2024)", fn: function(d) { return d.forest_pct < 50; } }
      ]
    ];

    VALID_BOARDS_HARD = [];
    for (var m = 0; m < muniRowSets.length; m++) {
      for (var n = 0; n < muniColSets.length; n++) {
        if (solveBoardMatching(DATA_MUNIS, muniRowSets[m], muniColSets[n], null)) {
          VALID_BOARDS_HARD.push({ rows: muniRowSets[m], cols: muniColSets[n] });
        }
      }
    }
  }

  // ============================================================================
  // GERADOR DE PERGUNTAS COM SENTIDO ESTATISTICO (VERSUS DIARIO E STREAK)
  // Filtra apenas municipios com atividade relevante na metrica consultada
  // e exige diferenca minima real entre A e B.
  // ============================================================================
  var QUESTION_SPECS = [
    {
      metric: "pop",
      qState: "Qual estado da Amazônia Legal possui MAIOR população residente?",
      qMuni: "Qual município possui MAIOR população residente?",
      unit: "População residente · IBGE (2020) · load_population()",
      minVal: 30000,
      minRatio: 1.45,
      maxRatio: 18.0
    },
    {
      metric: "gd_ppc",
      qState: "Qual estado apresenta MAIOR PIB per capita na Amazônia Legal?",
      qMuni: "Qual município apresenta MAIOR PIB per capita?",
      unit: "PIB per capita em R$ · IBGE (2020) · load_pibmunic()",
      minVal: 12000,
      minPop: 35000,
      minRatio: 1.38,
      maxRatio: 8.0
    },
    {
      metric: "cattle",
      qState: "Qual estado possui o MAIOR rebanho bovino na Amazônia Legal?",
      qMuni: "Qual município possui o MAIOR efetivo de bovinos?",
      unit: "Cabeças de gado · IBGE PPM (2024) · load_ppm()",
      minVal: 120000,
      minPop: 18000,
      minRatio: 1.45,
      maxRatio: 15.0
    },
    {
      metric: "soy",
      qState: "Qual estado colheu a MAIOR safra de soja na Amazônia Legal?",
      qMuni: "Qual município produziu MAIS soja em 2024?",
      unit: "Toneladas produzidas · IBGE PAM (2024) · load_pam()",
      minVal: 25000,
      minPop: 15000,
      minRatio: 1.50,
      maxRatio: 20.0
    },
    {
      metric: "corn",
      qState: "Qual estado produziu MAIS milho na Amazônia Legal?",
      qMuni: "Qual município teve MAIOR produção de milho em 2024?",
      unit: "Toneladas produzidas · IBGE PAM (2024) · load_pam()",
      minVal: 25000,
      minPop: 15000,
      minRatio: 1.50,
      maxRatio: 20.0
    },
    {
      metric: "cassava",
      qState: "Qual estado teve MAIOR produção de mandioca na Amazônia Legal?",
      qMuni: "Qual município produziu MAIS mandioca em 2024?",
      unit: "Toneladas produzidas · IBGE PAM (2024) · load_pam()",
      minVal: 18000,
      minPop: 20000,
      minRatio: 1.45,
      maxRatio: 18.0
    },
    {
      metric: "exports_usd",
      qState: "Qual estado registrou MAIOR valor de exportações (US$ FOB)?",
      qMuni: "Qual município exportou MAIS em valor FOB (2025)?",
      unit: "Valor FOB em US$ · MDIC Comex Stat (2025) · load_br_trade()",
      minVal: 15000000,
      minPop: 20000,
      minRatio: 1.50,
      maxRatio: 25.0
    },
    {
      metric: "forest_pct",
      qState: "Qual estado mantém MAIOR proporção de cobertura florestal nativa?",
      qMuni: "Qual município preserva MAIOR percentual de cobertura florestal?",
      unit: "% da área com cobertura florestal · MapBiomas (2024) · load_mapbiomas()",
      minVal: 15,
      minPop: 40000,
      minDiffAbs: 14.0
    },
    {
      metric: "deforest_acc_km2",
      qState: "Qual estado acumula MAIOR área desmatada histórica no PRODES?",
      qMuni: "Qual município possui MAIOR área de desmatamento acumulado (PRODES)?",
      unit: "Área acumulada em km² · INPE PRODES · load_prodes()",
      minVal: 800,
      minPop: 25000,
      minRatio: 1.45,
      maxRatio: 15.0
    },
    {
      metric: "ips",
      qState: "Qual estado apresenta MAIOR Índice de Progresso Social (IPS)?",
      qMuni: "Qual município possui MAIOR Índice de Progresso Social (IPS)?",
      unit: "Pontuação IPS (0 a 100) · IMAZON / IPS Amazônia (2021) · load_ips()",
      minVal: 45,
      minPop: 40000,
      minDiffAbs: 4.0
    },
    {
      metric: "empresas",
      qState: "Qual estado concentra MAIS empresas e organizações ativas (CEMPRE)?",
      qMuni: "Qual município possui MAIS empresas ativas no Cadastro Central do IBGE?",
      unit: "Unidades locais ativas · IBGE CEMPRE (2020) · load_cempre()",
      minVal: 600,
      minPop: 35000,
      minRatio: 1.45,
      maxRatio: 16.0
    }
  ];

  function generateMeaningfulPair(rng, spec, useStates, forceWinnerSide) {
    var pool;
    if (useStates) {
      pool = DATA_STATES.slice();
    } else {
      var minPop = spec.minPop || 25000;
      pool = DATA_MUNIS.filter(function(m) {
        return (m[spec.metric] || 0) >= (spec.minVal || 1) && (m.pop || 0) >= minPop;
      });
      if (pool.length < 12) {
        pool = DATA_MUNIS.filter(function(m) {
          return (m[spec.metric] || 0) > 0;
        });
      }
    }

    for (var attempt = 0; attempt < 160; attempt++) {
      var idxA = Math.floor(rng() * pool.length);
      var idxB = Math.floor(rng() * pool.length);
      if (idxA === idxB) continue;

      var candA = pool[idxA];
      var candB = pool[idxB];
      var valA = Number(candA[spec.metric]) || 0;
      var valB = Number(candB[spec.metric]) || 0;
      if (valA === valB) continue;

      var hi = Math.max(valA, valB);
      var lo = Math.min(valA, valB);

      if (spec.minDiffAbs) {
        if ((hi - lo) < spec.minDiffAbs) continue;
      } else {
        var ratio = hi / Math.max(lo, 1);
        var minR = useStates ? 1.18 : (spec.minRatio || 1.35);
        var maxR = useStates ? 60.0 : (spec.maxRatio || 25.0);
        if (ratio < minR || ratio > maxR) continue;
      }

      var higherItem = valA > valB ? candA : candB;
      var lowerItem = valA > valB ? candB : candA;
      var winSide = (forceWinnerSide === 0 || forceWinnerSide === 1)
        ? forceWinnerSide
        : (rng() < 0.5 ? 0 : 1);

      var itemA = winSide === 0 ? higherItem : lowerItem;
      var itemB = winSide === 0 ? lowerItem : higherItem;

      var explain = higherItem.name + " (" + higherItem.uf + ") registra " +
                    formatMetricValue(spec.metric, higherItem[spec.metric]) +
                    ", frente a " + formatMetricValue(spec.metric, lowerItem[spec.metric]) +
                    " de " + lowerItem.name + " (" + lowerItem.uf + ").";

      return {
        q: useStates ? spec.qState : spec.qMuni,
        unit: spec.unit,
        metric: spec.metric,
        a: { name: itemA.name, uf: itemA.uf, val: itemA[spec.metric] },
        b: { name: itemB.name, uf: itemB.uf, val: itemB[spec.metric] },
        explain: explain
      };
    }

    // Fallback deterministico ordenado caso o filtro aleatorio nao convirja
    var sorted = pool.slice().sort(function(x, y) {
      return (y[spec.metric] || 0) - (x[spec.metric] || 0);
    });
    var topItem = sorted[0];
    var midItem = sorted[Math.min(4, sorted.length - 1)];
    return {
      q: useStates ? spec.qState : spec.qMuni,
      unit: spec.unit,
      metric: spec.metric,
      a: { name: topItem.name, uf: topItem.uf, val: topItem[spec.metric] },
      b: { name: midItem.name, uf: midItem.uf, val: midItem[spec.metric] },
      explain: topItem.name + " (" + topItem.uf + ") lidera com " + formatMetricValue(spec.metric, topItem[spec.metric]) + "."
    };
  }

  function getDailyVersusQuestions() {
    var rng = makeRng("dz_versus_daily_" + TODAY_KEY);
    // Embaralha especificacoes para escolher 5 metricas distintas para o dia
    var specsCopy = QUESTION_SPECS.slice();
    for (var i = specsCopy.length - 1; i > 0; i--) {
      var j = Math.floor(rng() * (i + 1));
      var tmp = specsCopy[i];
      specsCopy[i] = specsCopy[j];
      specsCopy[j] = tmp;
    }

    var questions = [];
    for (var k = 0; k < 5; k++) {
      var spec = specsCopy[k];
      // Alterna estados (2 perguntas) e municipios relevantes (3 perguntas)
      var useStates = (k === 1 || k === 3);
      var winSide = (rng() < 0.5) ? 0 : 1;
      questions.push(generateMeaningfulPair(rng, spec, useStates, winSide));
    }
    return questions;
  }

  // ============================================================================
  // TABS NAVIGATION
  // ============================================================================
  var tabBtns = document.querySelectorAll(".mg-tab-btn");
  var panels = {
    grid: document.getElementById("panel-grid"),
    versus: document.getElementById("panel-versus"),
    streak: document.getElementById("panel-streak"),
    leaderboard: document.getElementById("panel-leaderboard")
  };

  tabBtns.forEach(function(btn) {
    btn.addEventListener("click", function() {
      var target = btn.getAttribute("data-tab");
      tabBtns.forEach(function(b) { b.classList.remove("active"); });
      btn.classList.add("active");
      Object.keys(panels).forEach(function(k) {
        panels[k].classList.toggle("active", k === target);
      });
      if (target === "leaderboard") renderLeaderboard();
    });
  });

  // ============================================================================
  // MODO 1: GRID 3x3 (ESTADOS E MUNICIPIOS, ESTADO INDEPENDENTE POR NIVEL)
  // ============================================================================
  var GRID_STORAGE_PREFIX = "dz_amz_grid_v2_" + TODAY_KEY + "_";
  var gridState = {
    diff: "easy",
    boardIndex: 0,
    cells: new Array(9).fill(null),
    guessesLeft: 10,
    score: 0,
    finished: false,
    saved: false,
    activeCell: null
  };

  function getDatasetForDiff(diff) {
    return diff === "easy" ? DATA_STATES : DATA_MUNIS;
  }

  function getBoardsForDiff(diff) {
    return diff === "easy" ? VALID_BOARDS_EASY : VALID_BOARDS_HARD;
  }

  function getDailyBoardIndex(diff) {
    var boards = getBoardsForDiff(diff);
    if (!boards.length) return 0;
    var rng = makeRng("dz_grid_daily_" + TODAY_KEY + "_" + diff);
    return Math.floor(rng() * boards.length);
  }

  function saveGridProgress() {
    try {
      localStorage.setItem(GRID_STORAGE_PREFIX + gridState.diff, JSON.stringify({
        boardIndex: gridState.boardIndex,
        cells: gridState.cells,
        guessesLeft: gridState.guessesLeft,
        score: gridState.score,
        finished: gridState.finished,
        saved: gridState.saved
      }));
    } catch (e) {}
  }

  function initGrid(diff, forceReset) {
    gridState.diff = diff || gridState.diff;
    gridState.activeCell = null;

    if (!forceReset) {
      try {
        var raw = localStorage.getItem(GRID_STORAGE_PREFIX + gridState.diff);
        if (raw) {
          var savedState = JSON.parse(raw);
          var boards = getBoardsForDiff(gridState.diff);
          if (savedState && Array.isArray(savedState.cells) && savedState.cells.length === 9 && savedState.boardIndex < boards.length) {
            gridState.boardIndex = savedState.boardIndex;
            gridState.cells = savedState.cells;
            gridState.guessesLeft = typeof savedState.guessesLeft === "number" ? savedState.guessesLeft : 10;
            gridState.score = typeof savedState.score === "number" ? savedState.score : 0;
            gridState.finished = !!savedState.finished;
            gridState.saved = !!savedState.saved;
            renderGrid();
            return;
          }
        }
      } catch (e) {}
    }

    gridState.boardIndex = getDailyBoardIndex(gridState.diff);
    gridState.cells = new Array(9).fill(null);
    gridState.guessesLeft = 10;
    gridState.score = 0;
    gridState.finished = false;
    gridState.saved = false;
    saveGridProgress();
    renderGrid();
  }

  function renderGrid() {
    var boards = getBoardsForDiff(gridState.diff);
    var board = boards[gridState.boardIndex % boards.length];
    var container = document.getElementById("mg-grid-board");
    container.innerHTML = "";

    var corner = document.createElement("div");
    corner.className = "mg-grid-corner";
    corner.innerHTML = "<span>CRITÉRIOS</span><span style='font-size:11px;font-weight:400;margin-top:3px;'>Linha × Coluna</span>";
    container.appendChild(corner);

    board.cols.forEach(function(col) {
      var ch = document.createElement("div");
      ch.className = "mg-axis-header";
      ch.innerHTML = "<div>" + col.label + "</div><div class='mg-axis-sub'>" + col.sub + "</div>";
      container.appendChild(ch);
    });

    for (var r = 0; r < 3; r++) {
      var rh = document.createElement("div");
      rh.className = "mg-axis-header";
      rh.innerHTML = "<div>" + board.rows[r].label + "</div><div class='mg-axis-sub'>" + board.rows[r].sub + "</div>";
      container.appendChild(rh);

      for (var c = 0; c < 3; c++) {
        var idx = r * 3 + c;
        var cellData = gridState.cells[idx];
        var cell = document.createElement("div");
        cell.className = "mg-cell";
        if (cellData) {
          cell.classList.add("locked");
          cell.classList.add(cellData.status === "correct" ? "correct" : "revealed");
          cell.innerHTML =
            "<div class='mg-cell-name'>" + cellData.name + "</div>" +
            "<span class='mg-cell-uf'>" + cellData.uf + (cellData.status === "revealed" ? " · Gabarito" : "") + "</span>";
        } else {
          if (gridState.finished) cell.classList.add("locked");
          cell.innerHTML = "<div class='mg-cell-plus'>+</div><div class='mg-cell-hint'>Selecionar</div>";
          (function(cellIndex, rowObj, colObj) {
            cell.addEventListener("click", function() {
              if (gridState.finished || gridState.cells[cellIndex]) return;
              openSearchModal(cellIndex, rowObj, colObj);
            });
          })(idx, board.rows[r], board.cols[c]);
        }
        container.appendChild(cell);
      }
    }

    document.getElementById("grid-score-pill").textContent = "Acertos: " + gridState.score + " / 9";
    document.getElementById("grid-guesses-pill").textContent = "Tentativas restantes: " + gridState.guessesLeft;

    var banner = document.getElementById("grid-save-banner");
    var saveBtn = document.getElementById("grid-save-btn");
    var nameInput = document.getElementById("grid-player-name");
    if (gridState.finished) {
      banner.classList.add("show");
      document.getElementById("grid-finish-title").textContent =
        gridState.score === 9 ? "Parabéns! Você gabaritou o Grid 3x3!" : "Fim de jogo no Grid (" + gridState.score + "/9 acertos)";
      if (gridState.saved) {
        saveBtn.disabled = true;
        saveBtn.textContent = "Salvo!";
        nameInput.disabled = true;
      } else {
        saveBtn.disabled = false;
        saveBtn.textContent = "Salvar no Placar";
        nameInput.disabled = false;
      }
    } else {
      banner.classList.remove("show");
    }
  }

  var modal = document.getElementById("mg-search-modal");
  var searchInput = document.getElementById("mg-search-input");
  var searchList = document.getElementById("mg-search-list");

  function openSearchModal(cellIdx, rowObj, colObj) {
    gridState.activeCell = { idx: cellIdx, row: rowObj, col: colObj };
    document.getElementById("mg-modal-criteria-text").innerHTML =
      "<strong>Linha:</strong> " + rowObj.label + "<br><strong>Coluna:</strong> " + colObj.label;
    searchInput.value = "";
    modal.classList.add("open");
    renderSearchItems("");
    setTimeout(function() { searchInput.focus(); }, 40);
  }

  function closeSearchModal() {
    modal.classList.remove("open");
    gridState.activeCell = null;
  }

  document.getElementById("mg-modal-close").addEventListener("click", closeSearchModal);
  modal.addEventListener("click", function(e) {
    if (e.target === modal) closeSearchModal();
  });

  searchInput.addEventListener("input", function() {
    renderSearchItems(searchInput.value);
  });

  function normalizeStr(s) {
    return (s || "").toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "");
  }

  function renderSearchItems(query) {
    var dataset = getDatasetForDiff(gridState.diff);
    var q = normalizeStr(query.trim());
    var usedKeys = {};
    gridState.cells.forEach(function(c) {
      if (c) usedKeys[c.name + "__" + c.uf] = true;
    });

    var filtered = dataset.filter(function(item) {
      if (!q) return true;
      return normalizeStr(item.name).indexOf(q) !== -1 || normalizeStr(item.uf).indexOf(q) !== -1;
    }).slice(0, 80);

    searchList.innerHTML = "";
    if (filtered.length === 0) {
      searchList.innerHTML = "<div style='padding:12px;color:#6c7d73;font-size:13px;'>Nenhuma localidade encontrada na Amazônia Legal.</div>";
      return;
    }

    filtered.forEach(function(item) {
      var key = itemKey(item);
      var isUsed = !!usedKeys[key];
      var row = document.createElement("div");
      row.className = "mg-search-item" + (isUsed ? " used" : "");
      row.innerHTML = "<span><strong>" + item.name + "</strong></span><span class='mg-cell-uf'>" + item.uf + (isUsed ? " (Já usado)" : "") + "</span>";
      if (!isUsed) {
        row.addEventListener("click", function() {
          handleGridGuess(item);
        });
      }
      searchList.appendChild(row);
    });
  }

  function handleGridGuess(item) {
    if (!gridState.activeCell || gridState.finished) return;
    var cellIdx = gridState.activeCell.idx;
    var rowObj = gridState.activeCell.row;
    var colObj = gridState.activeCell.col;
    closeSearchModal();

    gridState.guessesLeft--;
    var isValid = rowObj.fn(item) && colObj.fn(item);

    if (isValid) {
      gridState.cells[cellIdx] = { name: item.name, uf: item.uf, status: "correct" };
      gridState.score++;
      if (gridState.score === 9 || gridState.guessesLeft <= 0) {
        gridState.finished = true;
      }
      saveGridProgress();
      renderGrid();
    } else {
      if (gridState.guessesLeft <= 0) {
        gridState.finished = true;
        revealRemainingGridCells();
      }
      saveGridProgress();
      renderGrid();
      var cellEls = document.querySelectorAll("#mg-grid-board .mg-cell");
      if (cellEls[cellIdx]) {
        cellEls[cellIdx].classList.add("wrong-flash");
        setTimeout(function() {
          if (cellEls[cellIdx]) cellEls[cellIdx].classList.remove("wrong-flash");
        }, 450);
      }
    }
  }

  function revealRemainingGridCells() {
    var boards = getBoardsForDiff(gridState.diff);
    var board = boards[gridState.boardIndex % boards.length];
    var dataset = getDatasetForDiff(gridState.diff);

    // Exibe gabarito completo de 9 respostas distintas para as 9 celulas
    var fullSolution = solveBoardMatching(dataset, board.rows, board.cols, null);
    if (fullSolution) {
      for (var k = 0; k < 9; k++) {
        gridState.cells[k] = {
          name: fullSolution[k].name,
          uf: fullSolution[k].uf,
          status: "revealed"
        };
      }
    }
  }

  document.querySelectorAll("#panel-grid .mg-diff-btn").forEach(function(btn) {
    btn.addEventListener("click", function() {
      document.querySelectorAll("#panel-grid .mg-diff-btn").forEach(function(b) { b.classList.remove("active"); });
      btn.classList.add("active");
      initGrid(btn.getAttribute("data-diff"), false);
    });
  });

  document.getElementById("grid-giveup-btn").addEventListener("click", function() {
    if (gridState.finished) return;
    gridState.finished = true;
    revealRemainingGridCells();
    saveGridProgress();
    renderGrid();
  });

  document.getElementById("grid-save-btn").addEventListener("click", function() {
    var name = document.getElementById("grid-player-name").value.trim() || "Jogador Anônimo";
    var modeKey = gridState.diff === "easy" ? "grid-easy" : "grid-hard";
    var modeLabel = gridState.diff === "easy" ? "Grid (Estados)" : "Grid (Municípios)";
    var usedGuesses = 10 - gridState.guessesLeft;
    addLeaderboardEntry({
      name: name,
      mode: modeKey,
      modeLabel: modeLabel,
      score: gridState.score,
      maxScore: 9,
      detail: gridState.score + "/9 células · " + usedGuesses + " palpites"
    });
    gridState.saved = true;
    saveGridProgress();
    renderGrid();
  });

  // ============================================================================
  // MODO 2: VERSUS (5 DESAFIOS DIARIOS DETERMINISTICOS)
  // ============================================================================
  var VERSUS_STORAGE_KEY = "dz_amz_versus_v2_" + TODAY_KEY;
  var versusState = {
    questions: [],
    idx: 0,
    score: 0,
    answered: false,
    finished: false,
    reviewMode: false,
    saved: false,
    choices: []
  };

  function saveVersusProgress() {
    try {
      localStorage.setItem(VERSUS_STORAGE_KEY, JSON.stringify({
        idx: versusState.idx,
        score: versusState.score,
        finished: versusState.finished,
        saved: versusState.saved,
        choices: versusState.choices
      }));
    } catch (e) {}
  }

  function initVersus() {
    versusState.questions = getDailyVersusQuestions();
    try {
      var raw = localStorage.getItem(VERSUS_STORAGE_KEY);
      if (raw) {
        var saved = JSON.parse(raw);
        if (saved && Array.isArray(saved.choices)) {
          versusState.choices = saved.choices;
          versusState.score = saved.score || 0;
          versusState.finished = !!saved.finished;
          versusState.saved = !!saved.saved;
          versusState.reviewMode = false;
          versusState.idx = versusState.finished ? 4 : Math.min(saved.choices.length, 4);
          versusState.answered = versusState.finished;
          renderVersusQuestion();
          return;
        }
      }
    } catch (e) {}

    versusState.idx = 0;
    versusState.score = 0;
    versusState.answered = false;
    versusState.finished = false;
    versusState.reviewMode = false;
    versusState.saved = false;
    versusState.choices = [];
    renderVersusQuestion();
  }

  function renderVersusQuestion() {
    var q = versusState.questions[versusState.idx];
    document.getElementById("versus-kicker").textContent =
      (versusState.reviewMode ? "REVISÃO DO GABARITO · " : "DESAFIO DIÁRIO · ") +
      "PERGUNTA #" + (versusState.idx + 1) + " DE 5";
    document.getElementById("versus-question").textContent = q.q;
    document.getElementById("versus-unit").textContent = q.unit;
    document.getElementById("versus-progress-pill").textContent = "Pergunta: " + (versusState.idx + 1) + " / 5";
    document.getElementById("versus-score-pill").textContent = "Acertos hoje: " + versusState.score + " / 5";

    var cardA = document.getElementById("versus-card-a");
    var cardB = document.getElementById("versus-card-b");
    cardA.className = "mg-duel-card";
    cardB.className = "mg-duel-card";

    document.getElementById("versus-uf-a").textContent = q.a.uf;
    document.getElementById("versus-name-a").textContent = q.a.name;
    document.getElementById("versus-val-a").textContent = "?";

    document.getElementById("versus-uf-b").textContent = q.b.uf;
    document.getElementById("versus-name-b").textContent = q.b.name;
    document.getElementById("versus-val-b").textContent = "?";

    var fb = document.getElementById("versus-feedback");
    var banner = document.getElementById("versus-save-banner");

    if (versusState.reviewMode) {
      var prevChoice = versusState.choices[versusState.idx];
      showVersusResolution(q, prevChoice !== undefined ? prevChoice : -1);
      fb.classList.add("show");
      document.getElementById("versus-next-btn").textContent =
        versusState.idx < 4 ? "Próxima Pergunta (" + (versusState.idx + 2) + "/5) →" : "Voltar à Pergunta #1";
      banner.classList.add("show");
    } else if (versusState.finished) {
      var lastChoice = versusState.choices[versusState.idx];
      showVersusResolution(q, lastChoice !== undefined ? lastChoice : -1);
      fb.classList.remove("show");
      banner.classList.add("show");
      document.getElementById("versus-finish-title").textContent =
        "Você já completou o Desafio Diário de hoje (" + versusState.score + "/5 acertos)!";
      var saveBtn = document.getElementById("versus-save-btn");
      var nameInp = document.getElementById("versus-player-name");
      if (versusState.saved) {
        saveBtn.disabled = true;
        saveBtn.textContent = "Salvo no Placar";
        nameInp.disabled = true;
      } else {
        saveBtn.disabled = false;
        saveBtn.textContent = "Salvar no Placar";
        nameInp.disabled = false;
      }
    } else {
      fb.classList.remove("show");
      banner.classList.remove("show");
    }
  }

  function showVersusResolution(q, choice) {
    var cardA = document.getElementById("versus-card-a");
    var cardB = document.getElementById("versus-card-b");
    cardA.classList.add("disabled");
    cardB.classList.add("disabled");

    var winChoice = q.a.val >= q.b.val ? 0 : 1;
    var isCorrect = (choice === winChoice);

    document.getElementById("versus-val-a").textContent = formatMetricValue(q.metric, q.a.val);
    document.getElementById("versus-val-b").textContent = formatMetricValue(q.metric, q.b.val);

    if (winChoice === 0) {
      cardA.classList.add("winner");
      if (choice === 1) cardB.classList.add("loser");
    } else {
      cardB.classList.add("winner");
      if (choice === 0) cardA.classList.add("loser");
    }

    var fbText = document.getElementById("versus-feedback-text");
    if (choice === -1) {
      fbText.textContent = q.explain;
      fbText.style.color = "#165634";
    } else {
      fbText.textContent = (isCorrect ? "Correto! " : "Incorreto. ") + q.explain;
      fbText.style.color = isCorrect ? "#165634" : "#a82828";
    }
  }

  function handleVersusChoice(choice) {
    if (versusState.answered || versusState.finished || versusState.reviewMode) return;
    versusState.answered = true;
    var q = versusState.questions[versusState.idx];
    var winChoice = q.a.val >= q.b.val ? 0 : 1;
    if (choice === winChoice) versusState.score++;
    versusState.choices[versusState.idx] = choice;

    showVersusResolution(q, choice);
    document.getElementById("versus-score-pill").textContent = "Acertos hoje: " + versusState.score + " / 5";

    if (versusState.idx < 4) {
      var fb = document.getElementById("versus-feedback");
      fb.classList.add("show");
      document.getElementById("versus-next-btn").textContent = "Próxima Pergunta →";
    } else {
      versusState.finished = true;
      var banner = document.getElementById("versus-save-banner");
      banner.classList.add("show");
      document.getElementById("versus-finish-title").textContent =
        "Desafio Diário Concluído! Você acertou " + versusState.score + " de 5.";
    }
    saveVersusProgress();
  }

  document.getElementById("versus-card-a").addEventListener("click", function() { handleVersusChoice(0); });
  document.getElementById("versus-card-b").addEventListener("click", function() { handleVersusChoice(1); });

  document.getElementById("versus-next-btn").addEventListener("click", function() {
    if (versusState.reviewMode) {
      versusState.idx = (versusState.idx + 1) % 5;
      renderVersusQuestion();
      return;
    }
    if (versusState.idx < 4) {
      versusState.idx++;
      versusState.answered = false;
      saveVersusProgress();
      renderVersusQuestion();
    }
  });

  document.getElementById("versus-review-btn").addEventListener("click", function() {
    versusState.reviewMode = true;
    versusState.idx = 0;
    renderVersusQuestion();
  });

  document.getElementById("versus-save-btn").addEventListener("click", function() {
    if (versusState.saved) return;
    var name = document.getElementById("versus-player-name").value.trim() || "Jogador Anônimo";
    addLeaderboardEntry({
      name: name,
      mode: "versus",
      modeLabel: "Modo Versus",
      score: versusState.score,
      maxScore: 5,
      detail: versusState.score + "/5 no desafio diário (" + TODAY_BR + ")"
    });
    versusState.saved = true;
    saveVersusProgress();
    renderVersusQuestion();
  });

  // ============================================================================
  // MODO 3: STREAK (3 CHANCES DIARIAS)
  // ============================================================================
  var STREAK_STORAGE_KEY = "dz_amz_streak_v2_" + TODAY_KEY;
  var MAX_STREAK_CHANCES = 3;

  var streakState = {
    current: 0,
    bestToday: 0,
    attemptsUsed: 0,
    step: 0,
    answered: false,
    gameOver: false,
    savedThisRun: false,
    activePair: null
  };

  function loadStreakProgress() {
    try {
      var raw = localStorage.getItem(STREAK_STORAGE_KEY);
      if (raw) {
        var parsed = JSON.parse(raw);
        streakState.bestToday = parsed.bestToday || 0;
        streakState.attemptsUsed = parsed.attemptsUsed || 0;
        streakState.step = parsed.step || 0;
      }
    } catch (e) {}
  }

  function saveStreakProgress() {
    try {
      localStorage.setItem(STREAK_STORAGE_KEY, JSON.stringify({
        bestToday: streakState.bestToday,
        attemptsUsed: streakState.attemptsUsed,
        step: streakState.step
      }));
    } catch (e) {}
  }

  function generateStreakPair() {
    streakState.step++;
    var rng = makeRng("dz_streak_" + TODAY_KEY + "_run_" + streakState.attemptsUsed + "_step_" + streakState.step);
    var spec = QUESTION_SPECS[Math.floor(rng() * QUESTION_SPECS.length)];
    var useStates = (streakState.step % 4 === 1);
    var winSide = rng() < 0.5 ? 0 : 1;
    return generateMeaningfulPair(rng, spec, useStates, winSide);
  }

  function initStreak() {
    loadStreakProgress();
    streakState.current = 0;
    streakState.answered = false;
    streakState.savedThisRun = false;
    document.getElementById("streak-save-banner").classList.remove("show");

    if (streakState.attemptsUsed >= MAX_STREAK_CHANCES) {
      streakState.gameOver = true;
      renderStreakLocked();
      return;
    }

    streakState.gameOver = false;
    nextStreakRound();
  }

  function renderStreakLocked() {
    var chancesLeft = Math.max(0, MAX_STREAK_CHANCES - streakState.attemptsUsed);
    document.getElementById("streak-lives-pill").textContent = "Chances hoje: " + chancesLeft + " / " + MAX_STREAK_CHANCES;
    document.getElementById("streak-current-pill").textContent = "Sequência Atual: " + streakState.current;
    document.getElementById("streak-best-pill").textContent = "Melhor Hoje: " + streakState.bestToday;

    document.getElementById("streak-kicker").textContent = "LIMITE DIÁRIO ATINGIDO (" + TODAY_BR + ")";
    document.getElementById("streak-question").textContent =
      "Você já utilizou suas 3 chances diárias no Modo Streak!";
    document.getElementById("streak-unit").textContent =
      "Sua melhor sequência de hoje foi de " + streakState.bestToday + " acertos seguidos. Volte amanhã para 3 novas chances!";

    document.getElementById("streak-card-a").className = "mg-duel-card disabled";
    document.getElementById("streak-card-b").className = "mg-duel-card disabled";
    document.getElementById("streak-feedback").classList.remove("show");

    var banner = document.getElementById("streak-save-banner");
    banner.classList.add("show");
    document.getElementById("streak-finish-title").textContent =
      "Chances de hoje encerradas! Melhor marca hoje: " + streakState.bestToday + " acertos.";
    document.getElementById("streak-finish-desc").textContent =
      "Registre sua melhor marca de hoje no placar online.";
  }

  function nextStreakRound() {
    streakState.answered = false;
    streakState.activePair = generateStreakPair();
    var p = streakState.activePair;

    var chancesLeft = Math.max(0, MAX_STREAK_CHANCES - streakState.attemptsUsed);
    document.getElementById("streak-lives-pill").textContent = "Chances hoje: " + chancesLeft + " / " + MAX_STREAK_CHANCES;
    document.getElementById("streak-current-pill").textContent = "Sequência Atual: " + streakState.current;
    document.getElementById("streak-best-pill").textContent = "Melhor Hoje: " + streakState.bestToday;

    document.getElementById("streak-kicker").textContent =
      "RODADA #" + (streakState.current + 1) + " · TENTATIVA " + (streakState.attemptsUsed + 1) + " DE 3";
    document.getElementById("streak-question").textContent = p.q;
    document.getElementById("streak-unit").textContent = p.unit;

    var cardA = document.getElementById("streak-card-a");
    var cardB = document.getElementById("streak-card-b");
    cardA.className = "mg-duel-card";
    cardB.className = "mg-duel-card";

    document.getElementById("streak-uf-a").textContent = p.a.uf;
    document.getElementById("streak-name-a").textContent = p.a.name;
    document.getElementById("streak-val-a").textContent = "?";

    document.getElementById("streak-uf-b").textContent = p.b.uf;
    document.getElementById("streak-name-b").textContent = p.b.name;
    document.getElementById("streak-val-b").textContent = "?";

    document.getElementById("streak-feedback").classList.remove("show");
  }

  function handleStreakChoice(choice) {
    if (streakState.answered || streakState.gameOver) return;
    streakState.answered = true;
    var p = streakState.activePair;
    var cardA = document.getElementById("streak-card-a");
    var cardB = document.getElementById("streak-card-b");
    cardA.classList.add("disabled");
    cardB.classList.add("disabled");

    var winChoice = p.a.val >= p.b.val ? 0 : 1;
    var isCorrect = (choice === winChoice);

    document.getElementById("streak-val-a").textContent = formatMetricValue(p.metric, p.a.val);
    document.getElementById("streak-val-b").textContent = formatMetricValue(p.metric, p.b.val);

    if (winChoice === 0) {
      cardA.classList.add("winner");
      if (!isCorrect) cardB.classList.add("loser");
    } else {
      cardB.classList.add("winner");
      if (!isCorrect) cardA.classList.add("loser");
    }

    var fb = document.getElementById("streak-feedback");
    var fbText = document.getElementById("streak-feedback-text");
    var nextBtn = document.getElementById("streak-next-btn");

    if (isCorrect) {
      streakState.current++;
      if (streakState.current > streakState.bestToday) {
        streakState.bestToday = streakState.current;
      }
      saveStreakProgress();
      document.getElementById("streak-current-pill").textContent = "Sequência Atual: " + streakState.current;
      document.getElementById("streak-best-pill").textContent = "Melhor Hoje: " + streakState.bestToday;

      fbText.textContent = "Correto! Sequência em " + streakState.current + ". " + p.explain;
      fbText.style.color = "#165634";
      nextBtn.style.display = "inline-block";
      nextBtn.textContent = "Próximo Desafio →";
      fb.classList.add("show");
    } else {
      streakState.attemptsUsed++;
      streakState.gameOver = true;
      saveStreakProgress();

      var chancesLeft = Math.max(0, MAX_STREAK_CHANCES - streakState.attemptsUsed);
      document.getElementById("streak-lives-pill").textContent = "Chances hoje: " + chancesLeft + " / " + MAX_STREAK_CHANCES;

      fbText.textContent = "Fim da tentativa! Você alcançou " + streakState.current + " acertos seguidos. (" + chancesLeft + " chance(s) restante(s) hoje)";
      fbText.style.color = "#a82828";

      if (chancesLeft > 0) {
        nextBtn.style.display = "inline-block";
        nextBtn.textContent = "Usar Próxima Chance (" + chancesLeft + " restante) →";
      } else {
        nextBtn.style.display = "none";
      }
      fb.classList.add("show");

      var banner = document.getElementById("streak-save-banner");
      banner.classList.add("show");
      document.getElementById("streak-finish-title").textContent =
        "Tentativa encerrada com " + streakState.current + " acertos seguidos!";
      document.getElementById("streak-finish-desc").textContent =
        chancesLeft > 0
          ? "Salve sua pontuação ou clique em 'Usar Próxima Chance' acima."
          : "Você concluiu suas 3 chances de hoje! Salve sua melhor pontuação no placar.";
    }
  }

  document.getElementById("streak-card-a").addEventListener("click", function() { handleStreakChoice(0); });
  document.getElementById("streak-card-b").addEventListener("click", function() { handleStreakChoice(1); });

  document.getElementById("streak-next-btn").addEventListener("click", function() {
    if (streakState.gameOver) {
      if (streakState.attemptsUsed < MAX_STREAK_CHANCES) {
        streakState.current = 0;
        streakState.gameOver = false;
        streakState.savedThisRun = false;
        document.getElementById("streak-save-banner").classList.remove("show");
        nextStreakRound();
      } else {
        renderStreakLocked();
      }
      return;
    }
    nextStreakRound();
  });

  document.getElementById("streak-save-btn").addEventListener("click", function() {
    var scoreToSave = Math.max(streakState.current, streakState.bestToday);
    if (scoreToSave <= 0 || streakState.savedThisRun) return;
    var name = document.getElementById("streak-player-name").value.trim() || "Jogador Anônimo";
    addLeaderboardEntry({
      name: name,
      mode: "streak",
      modeLabel: "Modo Streak",
      score: scoreToSave,
      maxScore: null,
      detail: scoreToSave + " acertos seguidos (" + TODAY_BR + ")"
    });
    streakState.savedThisRun = true;
    document.getElementById("streak-save-btn").textContent = "Recorde Salvo!";
  });

  // ============================================================================
  // MODO 4: LEADERBOARD ONLINE HIBRIDO (Static JSON + Serverless API + Local Sync)
  // ============================================================================
  var LB_STORAGE_KEY = "dz_amz_leaderboard_v3";
  var lbFilter = "all";
  var lbEntriesCache = [];
  var lbSyncChannel = (typeof BroadcastChannel !== "undefined")
    ? new BroadcastChannel("dz_amz_leaderboard_sync")
    : null;

  if (lbSyncChannel) {
    lbSyncChannel.onmessage = function() {
      syncLeaderboardOnline(false);
    };
  }

  function getLocalLbEntries() {
    try {
      var raw = localStorage.getItem(LB_STORAGE_KEY);
      if (raw) {
        var parsed = JSON.parse(raw);
        if (Array.isArray(parsed)) return parsed;
      }
    } catch (e) {}
    return [];
  }

  function saveLocalLbEntries(entries) {
    try {
      localStorage.setItem(LB_STORAGE_KEY, JSON.stringify(entries.slice(0, 150)));
    } catch (e) {}
  }

  function mergeLbEntries(lists) {
    var map = {};
    lists.forEach(function(list) {
      if (!Array.isArray(list)) return;
      list.forEach(function(item) {
        if (!item || !item.name || !(Number(item.score) > 0)) return;
        var key = item.id || (item.name + "__" + item.mode + "__" + item.score + "__" + item.date);
        map[key] = {
          id: key,
          name: String(item.name).slice(0, 28),
          mode: item.mode,
          modeLabel: item.modeLabel || item.mode,
          score: Number(item.score),
          maxScore: item.maxScore === undefined ? null : item.maxScore,
          detail: item.detail || "",
          date: item.date || TODAY_BR
        };
      });
    });
    var merged = Object.keys(map).map(function(k) { return map[k]; });
    merged.sort(function(a, b) { return b.score - a.score; });
    return merged;
  }

  function syncLeaderboardOnline(showRefreshing) {
    var statusEl = document.getElementById("lb-sync-status");
    if (showRefreshing && statusEl) statusEl.textContent = "Sincronizando...";

    var localList = getLocalLbEntries();

    // 1. Carrega assets/data/leaderboard.json (sempre disponivel no GitHub Pages e local)
    fetch(STATIC_LB_URL, { cache: "no-store" })
      .then(function(r) { return r.ok ? r.json() : { entries: [] }; })
      .catch(function() { return { entries: [] }; })
      .then(function(staticData) {
        var baseEntries = (staticData && Array.isArray(staticData.entries)) ? staticData.entries : [];
        lbEntriesCache = mergeLbEntries([baseEntries, localList]);
        renderLeaderboard();

        // 2. Se houver endpoint serverless configurado ou API local ativa, sincroniza em seguida
        var apiTarget = REMOTE_LEADERBOARD_ENDPOINT || LOCAL_API_LB_URL;
        return fetch(apiTarget, { cache: "no-store" })
          .then(function(r) { return r.ok ? r.json() : null; })
          .catch(function() { return null; });
      })
      .then(function(remoteData) {
        if (remoteData && Array.isArray(remoteData.entries)) {
          lbEntriesCache = mergeLbEntries([lbEntriesCache, remoteData.entries]);
          saveLocalLbEntries(lbEntriesCache);
          if (statusEl) {
            statusEl.textContent = REMOTE_LEADERBOARD_ENDPOINT
              ? "Online · Nuvem Data Zoom"
              : "Online · Servidor Sincronizado";
          }
          renderLeaderboard();
        } else if (statusEl) {
          statusEl.textContent = "Online · Base Oficial Data Zoom";
        }
      });
  }

  function addLeaderboardEntry(entry) {
    var newEntry = {
      id: "dz-" + Date.now() + "-" + Math.floor(Math.random() * 1000),
      name: entry.name,
      mode: entry.mode,
      modeLabel: entry.modeLabel,
      score: entry.score,
      maxScore: entry.maxScore,
      detail: entry.detail,
      date: TODAY_BR
    };

    var localList = getLocalLbEntries();
    localList.push(newEntry);
    saveLocalLbEntries(localList);
    lbEntriesCache = mergeLbEntries([lbEntriesCache, [newEntry]]);
    renderLeaderboard();

    if (lbSyncChannel) {
      try { lbSyncChannel.postMessage({ type: "new_score" }); } catch (e) {}
    }

    // Envia para API local (em desenvolvimento) e/ou Google Apps Script Web App (em producao)
    var targets = [LOCAL_API_LB_URL];
    if (REMOTE_LEADERBOARD_ENDPOINT) targets.unshift(REMOTE_LEADERBOARD_ENDPOINT);

    targets.forEach(function(url) {
      fetch(url, {
        method: "POST",
        headers: { "Content-Type": "text/plain;charset=utf-8" },
        body: JSON.stringify(newEntry)
      })
        .then(function(r) { return r.ok ? r.json() : null; })
        .then(function(resp) {
          if (resp && Array.isArray(resp.entries)) {
            lbEntriesCache = mergeLbEntries([lbEntriesCache, resp.entries]);
            renderLeaderboard();
          }
        })
        .catch(function() {});
    });

    document.querySelector('[data-tab="leaderboard"]').click();
  }

  function renderLeaderboard() {
    var tbody = document.getElementById("mg-lb-tbody");
    if (!tbody) return;
    var filtered = lbEntriesCache.filter(function(item) {
      if (lbFilter === "all") return true;
      return item.mode === lbFilter;
    });

    filtered.sort(function(a, b) { return b.score - a.score; });

    tbody.innerHTML = "";
    if (filtered.length === 0) {
      tbody.innerHTML = "<tr><td colspan='6' style='text-align:center;color:#6c7d73;padding:24px;'>Nenhum registro neste modo ainda. Jogue uma partida e salve seu recorde!</td></tr>";
      return;
    }

    filtered.slice(0, 50).forEach(function(item, idx) {
      var tr = document.createElement("tr");
      var scoreText = item.maxScore ? (item.score + " / " + item.maxScore) : (item.score + " pts");
      tr.innerHTML =
        "<td><span class='mg-rank-badge'>" + (idx + 1) + "º</span></td>" +
        "<td><strong>" + item.name + "</strong></td>" +
        "<td>" + item.modeLabel + "</td>" +
        "<td><strong>" + scoreText + "</strong></td>" +
        "<td style='color:#4f6358;'>" + item.detail + "</td>" +
        "<td style='color:#6b7d73;'>" + item.date + "</td>";
      tbody.appendChild(tr);
    });
  }

  document.querySelectorAll("[data-lbfilter]").forEach(function(btn) {
    btn.addEventListener("click", function() {
      document.querySelectorAll("[data-lbfilter]").forEach(function(b) { b.classList.remove("active"); });
      btn.classList.add("active");
      lbFilter = btn.getAttribute("data-lbfilter");
      renderLeaderboard();
    });
  });

  document.getElementById("lb-refresh-btn").addEventListener("click", function() {
    syncLeaderboardOnline(true);
  });

  // ============================================================================
  // BOOTSTRAP: CARREGA O GRAO OFICIAL (assets/data/minigames_data.json)
  // ============================================================================
  function loadOfficialGameData() {
    var loadingBox = document.getElementById("mg-loading-state");
    var errorBox = document.getElementById("mg-error-state");
    var appContent = document.getElementById("mg-app-content");
    var statusBadge = document.getElementById("mg-data-status");

    loadingBox.style.display = "block";
    errorBox.style.display = "none";
    appContent.style.display = "none";

    fetch(DATA_JSON_URL)
      .then(function(resp) {
        if (!resp.ok) throw new Error("HTTP " + resp.status + " ao carregar " + DATA_JSON_URL);
        return resp.json();
      })
      .then(function(payload) {
        if (!payload || !Array.isArray(payload.states) || !Array.isArray(payload.municipalities)) {
          throw new Error("Formato de minigames_data.json inválido.");
        }
        DATA_META = payload.meta || {};
        DATA_DICT = payload.dictionary || {};
        DATA_STATES = payload.states;
        DATA_MUNIS = payload.municipalities;

        buildValidatedGridPools();

        loadingBox.style.display = "none";
        appContent.style.display = "block";
        statusBadge.textContent =
          DATA_STATES.length + " Estados · " + DATA_MUNIS.length + " Municípios Oficiais (.rds)";

        initGrid("easy", false);
        initVersus();
        initStreak();
        syncLeaderboardOnline(false);
      })
      .catch(function(err) {
        loadingBox.style.display = "none";
        errorBox.style.display = "block";
        statusBadge.textContent = "Erro ao carregar base";
        document.getElementById("mg-error-msg").textContent =
          "Detalhe técnico: " + (err && err.message ? err.message : String(err));
      });
  }

  document.getElementById("mg-retry-btn").addEventListener("click", loadOfficialGameData);

  loadOfficialGameData();
})();
</script>

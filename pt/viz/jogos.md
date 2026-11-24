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
    display: inline-flex;
    align-items: center;
    gap: 6px;
  }
  .status-val {
    font-family: 'JetBrains Mono', monospace;
    font-weight: 700;
    color: #1e2d24;
  }
  .assist-toggle-btn {
    background: #fff8e1;
    color: #b78103;
    border: 1px solid #ffe082;
    padding: 3px 8px;
    border-radius: 4px;
    font-size: 11px;
    font-weight: 700;
    cursor: pointer;
    display: inline-flex;
    align-items: center;
    gap: 4px;
    transition: all 0.15s ease;
  }
  .assist-toggle-btn:hover {
    background: #ffecb3;
    border-color: #ffd54f;
    color: #8c6000;
  }
  .assist-toggle-btn.active {
    background: #ffc107;
    color: #3e2723;
    border-color: #ffa000;
    box-shadow: 0 0 0 2px rgba(255, 193, 7, 0.3);
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
    margin: 6px 0 6px 0;
    line-height: 1.3;
  }
  .versus-question-subtitle {
    font-size: 13px;
    color: #4f6356;
    margin: 0 auto 20px auto;
    max-width: 620px;
    line-height: 1.4;
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
  .feedback-r-box {
    margin-top: 10px;
    padding: 10px 12px;
    background: #ffffff;
    border: 1px solid #d0e0d5;
    border-radius: 4px;
    font-family: 'JetBrains Mono', monospace;
    font-size: 11px;
    color: #1e3d28;
    line-height: 1.5;
  }
  .feedback-r-title {
    font-family: 'Inter', sans-serif;
    font-weight: 700;
    font-size: 11px;
    color: #2f7d32;
    margin-bottom: 4px;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
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

  /* CALENDARIO & STREAK LOCAL DISCRETO NO CANTO DO MODO GRID */
  .grid-cal-corner-wrap {
    position: relative;
    display: flex;
    align-items: center;
  }
  .gsc-toggle-btn {
    background: #ffffff;
    border: 1px solid #c2d6c2;
    border-radius: 4px;
    padding: 6px 10px;
    font-size: 12px;
    color: #2e4d32;
    display: inline-flex;
    align-items: center;
    gap: 6px;
    cursor: pointer;
    font-family: inherit;
    transition: background 0.15s ease, border-color 0.15s ease;
  }
  .gsc-toggle-btn:hover {
    background: #f0f7f0;
    border-color: var(--green-btn);
  }
  .grid-cal-popover {
    display: none;
    position: absolute;
    top: calc(100% + 6px);
    right: 0;
    width: 268px;
    z-index: 60;
    background: #ffffff;
    border: 1px solid #c2d6c2;
    border-radius: 6px;
    padding: 12px;
    box-shadow: 0 8px 24px rgba(26, 46, 26, 0.14);
  }
  .grid-cal-popover.open {
    display: block;
  }
  .gsc-popover-head {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 8px;
    padding-bottom: 6px;
    border-bottom: 1px solid #e2ece2;
  }
  .gsc-popover-head span {
    font-size: 12px;
    font-weight: 800;
    color: #1e3d28;
  }
  .gsc-popover-close {
    background: none;
    border: none;
    font-size: 16px;
    line-height: 1;
    color: #667;
    cursor: pointer;
    padding: 0 2px;
  }
  .gsc-stats {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 6px;
    margin-bottom: 10px;
  }
  .gsc-stat-pill {
    background: #f4f8f4;
    border: 1px solid #d2e2d2;
    padding: 5px 4px;
    border-radius: 4px;
    text-align: center;
  }
  .gsc-stat-num {
    font-family: 'JetBrains Mono', monospace;
    font-size: 13px;
    font-weight: 800;
    color: var(--green-btn);
    display: block;
    line-height: 1.1;
  }
  .gsc-stat-label {
    font-size: 9px;
    font-weight: 700;
    color: #556055;
    text-transform: uppercase;
    letter-spacing: 0.4px;
  }
  .gsc-calendar-wrap {
    display: flex;
    flex-direction: column;
    gap: 4px;
  }
  .gsc-month-title {
    font-size: 12px;
    font-weight: 700;
    color: #2e4d32;
    text-align: center;
    margin-bottom: 2px;
    text-transform: capitalize;
  }
  .gsc-cal-grid {
    display: grid;
    grid-template-columns: repeat(7, 1fr);
    gap: 3px;
    width: 100%;
  }
  .gsc-day-header {
    font-size: 9.5px;
    font-weight: 700;
    color: #8da1af;
    text-align: center;
    padding: 2px 0;
  }
  .gsc-day-cell {
    aspect-ratio: 1;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    border-radius: 4px;
    font-size: 10.5px;
    font-weight: 600;
    color: #4a5c4a;
    background: #fafcfa;
    border: 1px solid #eef3ee;
    transition: all 0.15s ease;
    position: relative;
    cursor: pointer;
  }
  .gsc-day-cell:hover:not(.empty):not(.future) {
    border-color: var(--green-btn);
    background: #f0f7f0;
  }
  .gsc-day-cell.empty {
    background: transparent;
    border: none;
    cursor: default;
  }
  .gsc-day-cell.future {
    opacity: 0.45;
    cursor: not-allowed;
  }
  .gsc-day-cell.selected-day {
    outline: 2px solid #2e4d32;
    box-shadow: 0 0 0 2px rgba(46,77,50,0.2);
  }
  .gsc-day-cell.today {
    border: 2px solid var(--green-btn);
    font-weight: 800;
    color: #111;
  }
  .gsc-day-cell.completed {
    background: #e2f2e2;
    border-color: #8ac08a;
    color: #1b4d24;
    font-weight: 800;
  }
  .gsc-day-cell.completed::after {
    content: "✓";
    font-size: 8px;
    font-weight: 900;
    color: var(--green-btn);
    position: absolute;
    bottom: 1px;
    line-height: 1;
  }
  .past-day-banner {
    display: none;
    background: #fff8e1;
    border: 1px solid #ffe082;
    border-left: 4px solid #ffb300;
    padding: 10px 14px;
    border-radius: 4px;
    margin-bottom: 14px;
    font-size: 12px;
    color: #795548;
    align-items: center;
    justify-content: space-between;
  }
  .past-day-banner button {
    background: #ffb300;
    color: #ffffff;
    border: none;
    font-weight: 700;
    font-size: 11px;
    padding: 4px 10px;
    border-radius: 3px;
    cursor: pointer;
  }
  .gsc-legend {
    display: flex;
    justify-content: center;
    gap: 10px;
    margin-top: 8px;
    font-size: 10px;
    color: #667;
  }
  .gsc-legend-item {
    display: flex;
    align-items: center;
    gap: 4px;
  }
  .gsc-legend-swatch {
    width: 10px;
    height: 10px;
    border-radius: 2px;
  }

  .leaderboard-table-wrap {
    width: 100%;
    overflow-x: auto;
    -webkit-overflow-scrolling: touch;
  }

  @media (max-width: 680px) {
    .jogos-wrapper { padding: 12px 10px 40px 10px; }
    .hub-welcome { padding: 20px 14px; margin: 10px 0 18px 0; }
    .hub-title { font-size: 22px; }
    .hub-subtitle { font-size: 13px; margin-bottom: 18px; }
    .mode-cards-grid { grid-template-columns: 1fr; gap: 12px; }
    .mode-card { padding: 16px 14px; }
    .hub-switcher { gap: 6px; margin: 10px 0 14px 0; }
    .hub-btn { font-size: 12px; padding: 7px 10px; flex: 1 1 auto; text-align: center; }
    .game-panel { padding: 14px 10px; }
    .control-strip { padding: 10px 12px; gap: 8px; }
    .level-picker { width: 100%; flex-wrap: wrap; }
    .level-btn { font-size: 11px; padding: 6px 8px; flex: 1; text-align: center; }
    .grid-cal-corner-wrap { width: 100%; justify-content: flex-end; }
    .grid-cal-popover { width: min(272px, calc(100vw - 36px)); right: 0; }
    .past-day-banner { flex-direction: column; align-items: flex-start; gap: 8px; }
    .past-day-banner button { width: 100%; padding: 7px 10px; }
    .status-bar-tech { display: grid; grid-template-columns: 1fr 1fr; gap: 8px; padding: 10px 12px; margin-bottom: 14px; }
    .grid-board { grid-template-columns: 84px repeat(3, minmax(0, 1fr)); grid-gap: 5px; }
    .grid-header-col, .grid-header-row {
      padding: 6px 4px;
      font-size: 10px;
      line-height: 1.2;
      word-break: break-word;
      overflow-wrap: anywhere;
      min-height: 40px;
    }
    .grid-header-col small, .grid-header-row small {
      font-size: 8.5px;
      display: block;
      margin-top: 2px;
    }
    .grid-cell { min-height: 70px; padding: 5px 3px; }
    .grid-cell > span { font-size: 11px; }
    .grid-cell-city { font-size: 10.5px; line-height: 1.2; word-break: break-word; }
    .grid-cell-meta { font-size: 9.5px; }
    .cell-select-modal { padding: 12px; }
    .search-input, .player-name-input { font-size: 16px; }
    .hint-container { flex-direction: column; }
    .hint-btn { width: 100%; padding: 8px 10px; }
    .versus-question-title { font-size: 17px; }
    .versus-question-subtitle { font-size: 12px; margin-bottom: 14px; }
    .versus-card { min-height: 110px; padding: 16px 14px; }
    .versus-name { font-size: 16px; }
    .versus-divider { width: 34px; height: 34px; font-size: 13px; }
    .feedback-box { padding: 12px; font-size: 12.5px; }
    .feedback-r-box { overflow-x: auto; font-size: 10.5px; word-break: break-word; }
    .completion-panel { padding: 20px 14px; }
    .leaderboard-table th, .leaderboard-table td { padding: 7px 8px; font-size: 12px; white-space: nowrap; }
  }

  @media (max-width: 420px) {
    .grid-board { grid-template-columns: 72px repeat(3, minmax(0, 1fr)); grid-gap: 4px; }
    .grid-header-col, .grid-header-row { font-size: 9.5px; padding: 5px 3px; }
    .player-name-wrap { flex-direction: column; }
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
      <div class="grid-cal-corner-wrap">
        <button type="button" class="gsc-toggle-btn" id="gsc-toggle-btn" onclick="toggleGridCalendar(event)" title="Calendário e Streak do Grid">
          <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
            <rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
            <line x1="16" y1="2" x2="16" y2="6"></line>
            <line x1="8" y1="2" x2="8" y2="6"></line>
            <line x1="3" y1="10" x2="21" y2="10"></line>
          </svg>
          <span id="gsc-trigger-date">--/--</span>
          <span style="color:#9ab09a;">·</span>
          <span>Streak: <strong id="gsc-trigger-streak">0</strong></span>
          <span style="font-size:10px; color:#556055;">▾</span>
        </button>

        <!-- POPOVER DISCRETO DO CALENDARIO E STREAK DO MODO GRID -->
        <div class="grid-cal-popover" id="grid-streak-calendar" onclick="event.stopPropagation()">
          <div class="gsc-popover-head">
            <span>Progresso do Grid</span>
            <button type="button" class="gsc-popover-close" onclick="closeGridCalendar()" aria-label="Fechar calendário">&times;</button>
          </div>
          <div class="gsc-stats">
            <div class="gsc-stat-pill">
              <span class="gsc-stat-num" id="gsc-current-streak">0</span>
              <span class="gsc-stat-label">Atual</span>
            </div>
            <div class="gsc-stat-pill">
              <span class="gsc-stat-num" id="gsc-best-streak">0</span>
              <span class="gsc-stat-label">Recorde</span>
            </div>
            <div class="gsc-stat-pill">
              <span class="gsc-stat-num" id="gsc-month-total">0</span>
              <span class="gsc-stat-label">Mês</span>
            </div>
          </div>
          <div class="gsc-calendar-wrap">
            <div class="gsc-month-title" id="gsc-calendar-month-name">Mês / Ano</div>
            <div class="gsc-cal-grid" id="gsc-calendar-grid">
              <!-- Gerado via JavaScript -->
            </div>
            <div class="gsc-legend">
              <div class="gsc-legend-item">
                <span class="gsc-legend-swatch" style="border: 2px solid var(--green-btn); background: #fafcfa;"></span>
                <span>Hoje</span>
              </div>
              <div class="gsc-legend-item">
                <span class="gsc-legend-swatch" style="background: #e2f2e2; border: 1px solid #8ac08a;"></span>
                <span>Concluído</span>
              </div>
              <div class="gsc-legend-item">
                <span class="gsc-legend-swatch" style="background: #fafcfa; border: 1px solid #eef3ee;"></span>
                <span>Pendente</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- AVISO DE JOGO DE DIA ANTERIOR (MODO TREINO / SEM PONTUACAO) -->
    <div class="past-day-banner" id="grid-past-day-alert">
      <span>
        <strong>Modo Histórico:</strong> Você está jogando o tabuleiro do dia <span id="grid-selected-day-label" style="font-weight: 700;">--/--/----</span>. Esta partida é livre para treino e <strong>não pontua no placar nem altera a streak diária</strong>.
      </span>
      <button onclick="selectGridDate(getTodayDateString())">Voltar para o Desafio de Hoje</button>
    </div>

    <!-- Barra de Status com Timer Individual do Grid -->
    <div class="status-bar-tech">
      <div class="status-item">
        <span>PONTUAÇÃO:</span>
        <span class="status-val" id="grid-score">1000</span> pts
        <button type="button" class="assist-toggle-btn" id="btn-toggle-assist" onclick="toggleAssistMode()" title="Ativa o Modo Facilitado com 10 opções (corta a pontuação pela metade)">
          <svg width="13" height="13" viewBox="0 0 24 24" fill="currentColor" stroke="none" aria-hidden="true" style="vertical-align: middle;">
            <path d="M12 2a7 7 0 0 0-7 7c0 2.38 1.19 4.47 3 5.74V17a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-2.26c1.81-1.27 3-3.36 3-5.74a7 7 0 0 0-7-7zM9 21a1 1 0 0 0 1 1h4a1 1 0 0 0 1-1v-1H9v1z"/>
          </svg>
          <span id="assist-btn-label">Modo Facilitado: 10 Opções (-50% pts)</span>
        </button>
      </div>
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
          <button class="hint-btn" onclick="requestHint(1)">Dica UF (-100 pts)</button>
          <button class="hint-btn" onclick="requestHint(2)">Dica 1ª Letra (-150 pts)</button>
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
      <div id="versus-subtitle" class="versus-question-subtitle" style="display: none;"></div>

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
    <div class="leaderboard-table-wrap">
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
</div>

<script>
// ==============================================================================
// BASES DE DADOS OFICIAIS (CARREGAMENTO DINAMICO DE MINIGAMES_DATA.JSON)
// ==============================================================================
var BASE_URL = "{{ site.baseurl }}";
var DATA_JSON_URL = BASE_URL + "/assets/data/minigames_data.json";
var STATIC_LB_URL = BASE_URL + "/assets/data/leaderboard.json";
var LOCAL_API_LB_URL = BASE_URL + "/api/leaderboard";
var REMOTE_LEADERBOARD_ENDPOINT = window.DZ_LEADERBOARD_API_URL || "https://script.google.com/macros/s/AKfycbzGKVQyYif1LPMCq-YsDVaEj3GWpbm6NLwh0hiJQKFIs-9dC4ER8krpI5YH6Iklfa_vOQ/exec";

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
  if (unit === 'US$ FOB / hab') {
    return "US$ " + num.toLocaleString('pt-BR') + " / hab";
  }
  if (unit === 'US$ FOB') {
    if (num >= 1e9) return "US$ " + (num / 1e9).toFixed(1).replace(".", ",") + " bi";
    if (num >= 1e6) return "US$ " + (num / 1e6).toFixed(1).replace(".", ",") + " mi";
    return "US$ " + num.toLocaleString('pt-BR');
  }
  if (unit === 'milhões R$') {
    if (num >= 1e6) return "R$ " + (num / 1e6).toFixed(1).replace(".", ",") + " tri";
    if (num >= 1e3) return "R$ " + (num / 1e3).toFixed(1).replace(".", ",") + " bi";
    return "R$ " + num.toLocaleString('pt-BR') + " mi";
  }
  if (unit === 'R$') return "R$ " + num.toLocaleString('pt-BR');
  return num.toLocaleString('pt-BR') + (unit ? " " + unit : "");
}

// ==============================================================================
// DIMENSOES ATOMICAS PARA O GERADOR PROCEDURAL DO MODO GRID (BASES AUDITADAS)
// ==============================================================================
var STATE_GRID_DIMENSIONS = [
  // 1. Geografia Política & Fronteiras
  { id: "st_fronteira", name: "Fronteira internacional", desc: "Geografia Oficial", check: function(s) { return ["AC", "AM", "AP", "MT", "PA", "RO", "RR"].indexOf(s.uf) !== -1; } },
  { id: "st_norte", name: "Pertence à Região Norte", desc: "Divisão Regional IBGE", check: function(s) { return ["AC", "AP", "AM", "PA", "RO", "RR", "TO"].indexOf(s.uf) !== -1; } },
  { id: "st_ocidental", name: "Amazônia Ocidental", desc: "AC, AM, RO ou RR (SUFRAMA)", check: function(s) { return ["AC", "AM", "RO", "RR"].indexOf(s.uf) !== -1; } },
  { id: "st_oriental", name: "Amazônia Oriental", desc: "AP, MA, MT, PA ou TO", check: function(s) { return ["AP", "MA", "MT", "PA", "TO"].indexOf(s.uf) !== -1; } },
  { id: "st_litoral", name: "Possui costa litorânea (marítima)", desc: "AP, MA ou PA (IBGE)", check: function(s) { return ["AP", "MA", "PA"].indexOf(s.uf) !== -1; } },

  // 2. Malha Municipal & Dimensão Territorial
  { id: "st_munis_100", name: "Mais de 100 municípios", desc: "IBGE Malha Municipal", check: function(s) { return (s.n_munis || 0) > 100; } },
  { id: "st_munis_sub70", name: "Menos de 70 municípios", desc: "IBGE Malha Municipal", check: function(s) { return (s.n_munis || 0) < 70; } },
  { id: "st_area_500k", name: "Área Territorial > 500.000 km²", desc: "IBGE Malha Municipal", check: function(s) { return (s.area_km2 || 0) > 500000; } },
  { id: "st_area_sub300k", name: "Área Territorial < 300.000 km²", desc: "IBGE Malha Municipal", check: function(s) { return (s.area_km2 || 0) < 300000; } },

  // 3. Demografia
  { id: "st_pop_15m", name: "População maior que 1,5 milhão", desc: "IBGE Censo / Estimativas", check: function(s) { return s.pop > 1500000; } },
  { id: "st_pop_sub1m", name: "População menor que 1 milhão", desc: "IBGE Censo / Estimativas", check: function(s) { return s.pop < 1000000; } },

  // 4. Uso da Terra e Floresta (MapBiomas)
  { id: "st_forest_70", name: "Mais de 70% de Floresta Nativa", desc: "MapBiomas (2024)", check: function(s) { return (s.forest_pct || 0) > 70.0; } },
  { id: "st_forest_80", name: "Mais de 80% de Floresta Nativa", desc: "MapBiomas (2024)", check: function(s) { return (s.forest_pct || 0) > 80.0; } },
  { id: "st_forest_sub60", name: "Menos de 60% de Cobertura Florestal", desc: "MapBiomas (2024)", check: function(s) { return (s.forest_pct || 0) < 60.0; } },

  // 5. Agropecuária (IBGE PPM & PAM)
  { id: "st_cattle_pop", name: "Mais gado bovino do que habitantes", desc: "IBGE PPM / Censo", check: function(s) { return (s.cattle || 0) > (s.pop || 0); } },
  { id: "st_cattle_10m", name: "Rebanho bovino > 10 milhões de cabeças", desc: "IBGE PPM (2024)", check: function(s) { return (s.cattle || 0) > 10000000; } },
  { id: "st_soy_1m", name: "Produção de Soja > 1 milhão de toneladas", desc: "IBGE PAM (2024)", check: function(s) { return (s.soy || 0) > 1000000; } },

  // 6. Economia & Comércio Exterior
  { id: "st_exp_1bi", name: "Exportações > US$ 1 bilhão FOB", desc: "Comex Stat (2025)", check: function(s) { return (s.exports_usd || 0) > 1000000000; } },
  { id: "st_exp_pc_1k", name: "Exportação > US$ 1.000 / hab", desc: "Comex Stat / IBGE", check: function(s) { return (s.exports_pc || 0) > 1000.0; } },
  { id: "st_gdp_50bi", name: "PIB Estadual > R$ 50 bilhões", desc: "IBGE Contas Regionais", check: function(s) { return (s.gdp_mil || 0) > 50000000; } },
  { id: "st_gd_ppc_25k", name: "PIB per capita > R$ 25.000", desc: "IBGE Contas Regionais", check: function(s) { return (s.gd_ppc || 0) > 25000; } },

  // 7. Toponímia
  { id: "st_letra_a", name: "Nome começa com a letra A", desc: "Toponímia oficial", check: function(s) { return s.name.charAt(0) === 'A'; } },
  { id: "st_letra_mprt", name: "Nome começa com M, P, R ou T", desc: "Toponímia oficial", check: function(s) { return ["M", "P", "R", "T"].indexOf(s.name.charAt(0)) !== -1; } }
];

var MUNI_GRID_DIMENSIONS = [
  { id: "mu_pa", name: "Pertence ao Pará (PA)", desc: "144 municípios oficiais", check: function(m) { return m.uf === "PA"; } },
  { id: "mu_mt", name: "Pertence ao Mato Grosso (MT)", desc: "141 municípios oficiais", check: function(m) { return m.uf === "MT"; } },
  { id: "mu_am_ro", name: "Pertence ao Amazonas ou Rondônia", desc: "AM ou RO", check: function(m) { return ["AM", "RO"].indexOf(m.uf) !== -1; } },
  { id: "mu_ma_to", name: "Pertence ao Maranhão ou Tocantins", desc: "MA ou TO", check: function(m) { return ["MA", "TO"].indexOf(m.uf) !== -1; } },
  { id: "mu_ac_ap_rr", name: "Pertence ao Acre, Amapá ou Roraima", desc: "AC, AP ou RR", check: function(m) { return ["AC", "AP", "RR"].indexOf(m.uf) !== -1; } },
  { id: "mu_pop_50k", name: "População > 50.000 habitantes", desc: "IBGE Censo / Estimativas", check: function(m) { return m.pop > 50000; } },
  { id: "mu_pop_20k", name: "População > 20.000 habitantes", desc: "IBGE Censo / Estimativas", check: function(m) { return m.pop > 20000; } },
  { id: "mu_pop_sub15k", name: "População < 15.000 habitantes", desc: "IBGE Censo / Estimativas", check: function(m) { return m.pop < 15000; } },
  { id: "mu_area_10k", name: "Área Territorial > 10.000 km²", desc: "IBGE Malha Municipal", check: function(m) { return (m.area_km2 || 0) > 10000; } },
  { id: "mu_area_sub2k", name: "Área Territorial < 2.000 km²", desc: "IBGE Malha Municipal", check: function(m) { return (m.area_km2 || 0) < 2000; } },
  { id: "mu_forest_75", name: "Mais de 75% de Floresta Nativa", desc: "MapBiomas (2024)", check: function(m) { return (m.forest_pct || 0) > 75.0; } },
  { id: "mu_forest_sub50", name: "Menos de 50% de Cobertura Florestal", desc: "MapBiomas (2024)", check: function(m) { return (m.forest_pct || 0) < 50.0; } },
  { id: "mu_exp_1m", name: "Exportador (> US$ 1 milhão FOB)", desc: "Comex Stat (2025)", check: function(m) { return (m.exports_usd || 0) > 1000000; } },
  { id: "mu_exp_10m", name: "Exportador (> US$ 10 milhões FOB)", desc: "Comex Stat (2025)", check: function(m) { return (m.exports_usd || 0) > 10000000; } },
  { id: "mu_exp_pc_500", name: "Exportação > US$ 500 / hab", desc: "Comex Stat / IBGE", check: function(m) { return (m.exports_pc || 0) > 500.0; } },
  { id: "mu_gd_ppc_35k", name: "PIB per capita > R$ 35.000", desc: "IBGE PIB dos Municípios", check: function(m) { return (m.gd_ppc || 0) > 35000; } },
  { id: "mu_gdp_500m", name: "PIB Municipal > R$ 500 milhões", desc: "IBGE PIB dos Municípios", check: function(m) { return (m.gdp_mil || 0) > 500000; } },
  { id: "mu_letra_smp", name: "Nome começa com S, M ou P", desc: "Toponímia oficial", check: function(m) { return ["S", "M", "P"].indexOf(m.name.charAt(0)) !== -1; } },
  { id: "mu_arco", name: "Município no Arco do Desmatamento", desc: "Ministério do Meio Ambiente", check: function(m) { return !!ARCO_DESMATAMENTO_NAMES[m.name]; } }
];

// Gerador procedimental garantido por data:
function generateProceduralGridSet(diff, dateStr) {
  var pool = (diff === 'easy') ? DATA_STATES : DATA_HARD;
  var dims = (diff === 'easy') ? STATE_GRID_DIMENSIONS : MUNI_GRID_DIMENSIONS;
  var seedDiff = (diff === 'assist') ? 'hard' : diff;

  for (var attempt = 0; attempt < 250; attempt++) {
    var seedStr = "dz_proc_grid_" + seedDiff + "_" + dateStr + "_" + attempt;
    var rng = makeRng(seedStr);
    var shuffled = dims.slice();
    for (var i = shuffled.length - 1; i > 0; i--) {
      var j = Math.floor(rng() * (i + 1));
      var temp = shuffled[i];
      shuffled[i] = shuffled[j];
      shuffled[j] = temp;
    }
    var cols = shuffled.slice(0, 3);
    var rows = shuffled.slice(3, 6);
    var sol = solveMatchingSolution(pool, rows, cols);
    if (sol) {
      return { cols: cols, rows: rows, solution: sol };
    }
  }

  // Fallback seguro caso necessario
  return {
    cols: dims.slice(0, 3),
    rows: dims.slice(3, 6),
    solution: null
  };
}

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
// GESTAO DA STREAK LOCAL E CALENDARIO DIARIO DO MODO GRID
// ==============================================================================
var GRID_STREAK_STORAGE_KEY = 'datazoom_grid_streak_history';

function getGridCompletionHistory() {
  try {
    return JSON.parse(localStorage.getItem(GRID_STREAK_STORAGE_KEY) || '[]');
  } catch (e) {
    return [];
  }
}

function recordGridDailyCompletion() {
  if (!isPlayingTodayGrid()) {
    // Dias anteriores sao para treino livre e nao alteram a streak
    return;
  }
  var history = getGridCompletionHistory();
  var todayStr = getTodayDateString();
  if (history.indexOf(todayStr) === -1) {
    history.push(todayStr);
    history.sort();
    try {
      localStorage.setItem(GRID_STREAK_STORAGE_KEY, JSON.stringify(history));
    } catch (e) {}
  }
  renderGridStreakCalendar();
}

function computeGridStreaks(history) {
  if (!history || history.length === 0) {
    return { current: 0, best: 0 };
  }

  var sorted = history.slice().sort();
  var set = {};
  sorted.forEach(function(d) { set[d] = true; });

  // Calcular melhor streak historica
  var best = 0;
  var currentRun = 0;
  var prevDate = null;

  for (var i = 0; i < sorted.length; i++) {
    var parts = sorted[i].split('-').map(Number);
    var d = new Date(parts[0], parts[1] - 1, parts[2]);

    if (!prevDate) {
      currentRun = 1;
    } else {
      var diffDays = Math.round((d.getTime() - prevDate.getTime()) / (1000 * 3600 * 24));
      if (diffDays === 1) {
        currentRun++;
      } else if (diffDays > 1) {
        currentRun = 1;
      }
    }
    prevDate = d;
    if (currentRun > best) best = currentRun;
  }

  // Calcular streak atual terminando hoje ou ontem
  var now = new Date();
  var today = new Date(now.getFullYear(), now.getMonth(), now.getDate());
  var yest = new Date(now.getFullYear(), now.getMonth(), now.getDate() - 1);

  function formatDate(dt) {
    return dt.getFullYear() + "-" +
      String(dt.getMonth() + 1).padStart(2, '0') + "-" +
      String(dt.getDate()).padStart(2, '0');
  }

  var todayStr = formatDate(today);
  var yestStr = formatDate(yest);

  var currentStreak = 0;
  var checkDate = null;

  if (set[todayStr]) {
    checkDate = today;
  } else if (set[yestStr]) {
    checkDate = yest;
  }

  if (checkDate) {
    var runner = new Date(checkDate.getTime());
    while (set[formatDate(runner)]) {
      currentStreak++;
      runner.setDate(runner.getDate() - 1);
    }
  }

  return { current: currentStreak, best: best };
}

function toggleGridCalendar(e) {
  if (e) e.stopPropagation();
  var cal = document.getElementById('grid-streak-calendar');
  if (cal) cal.classList.toggle('open');
}

function closeGridCalendar() {
  var cal = document.getElementById('grid-streak-calendar');
  if (cal) cal.classList.remove('open');
}

document.addEventListener('click', function(e) {
  if (!e.target || !e.target.closest || !e.target.closest('.grid-cal-corner-wrap')) {
    closeGridCalendar();
  }
});

function renderGridStreakCalendar() {
  var history = getGridCompletionHistory();
  var streaks = computeGridStreaks(history);
  var historySet = {};
  history.forEach(function(d) { historySet[d] = true; });

  var curEl = document.getElementById('gsc-current-streak');
  var bestEl = document.getElementById('gsc-best-streak');
  var totalEl = document.getElementById('gsc-month-total');
  var titleEl = document.getElementById('gsc-calendar-month-name');
  var gridEl = document.getElementById('gsc-calendar-grid');
  var trigStreakEl = document.getElementById('gsc-trigger-streak');
  var trigDateEl = document.getElementById('gsc-trigger-date');

  if (curEl) curEl.innerText = streaks.current;
  if (bestEl) bestEl.innerText = streaks.best;
  if (trigStreakEl) trigStreakEl.innerText = streaks.current;
  if (trigDateEl && selectedGridDate) {
    var dParts = selectedGridDate.split('-');
    if (dParts.length === 3) {
      trigDateEl.innerText = `${dParts[2]}/${dParts[1]}`;
    }
  }

  var now = new Date();
  var year = now.getFullYear();
  var month = now.getMonth();
  var todayDate = now.getDate();

  var monthNames = [
    'Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho',
    'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'
  ];
  if (titleEl) {
    titleEl.innerText = `${monthNames[month]} de ${year}`;
  }

  var firstDayIndex = new Date(year, month, 1).getDay(); // 0 = Dom, 1 = Seg...
  var daysInMonth = new Date(year, month + 1, 0).getDate();

  var countInMonth = 0;
  for (var day = 1; day <= daysInMonth; day++) {
    var dStr = year + "-" + String(month + 1).padStart(2, '0') + "-" + String(day).padStart(2, '0');
    if (historySet[dStr]) countInMonth++;
  }
  if (totalEl) totalEl.innerText = `${countInMonth} / ${daysInMonth}`;

  if (!gridEl) return;

  var dayLabels = ['D', 'S', 'T', 'Q', 'Q', 'S', 'S'];
  var html = '';

  dayLabels.forEach(function(lbl) {
    html += `<div class="gsc-day-header">${lbl}</div>`;
  });

  // Dias vazios no comeco
  for (var pad = 0; pad < firstDayIndex; pad++) {
    html += `<div class="gsc-day-cell empty"></div>`;
  }

  // Dias do mes
  for (var d = 1; d <= daysInMonth; d++) {
    var dateString = year + "-" + String(month + 1).padStart(2, '0') + "-" + String(d).padStart(2, '0');
    var isToday = (d === todayDate);
    var isDone = !!historySet[dateString];
    var isFuture = (dateString > getTodayDateString());
    var isSelected = (dateString === selectedGridDate);

    var classes = ['gsc-day-cell'];
    if (isToday) classes.push('today');
    if (isDone) classes.push('completed');
    if (isFuture) classes.push('future');
    if (isSelected) classes.push('selected-day');

    var clickAttr = isFuture ? '' : `onclick="selectGridDate('${dateString}')"`;

    html += `<div class="${classes.join(' ')}" ${clickAttr} title="${d} de ${monthNames[month]} ${isDone ? '· Concluído' : ''} ${isFuture ? '· Futuro' : '· Clique para jogar'}">${d}</div>`;
  }

  gridEl.innerHTML = html;
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
    completed: false,
    assistEnabled: false,
    scoreCutApplied: false
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

function getTodayDateString() {
  var now = new Date();
  return now.getFullYear() + "-" +
    String(now.getMonth() + 1).padStart(2, '0') + "-" +
    String(now.getDate()).padStart(2, '0');
}

function getDailySeedString() {
  return selectedGridDate || getTodayDateString();
}

var selectedGridDate = getTodayDateString();

function isPlayingTodayGrid() {
  return selectedGridDate === getTodayDateString();
}

function selectGridDate(dateStr) {
  var todayStr = getTodayDateString();
  if (dateStr > todayStr) return; // Nao permitir datas futuras

  selectedGridDate = dateStr;

  // Atualizar banner de dia anterior
  var banner = document.getElementById('grid-past-day-alert');
  var bannerLabel = document.getElementById('grid-selected-day-label');
  if (banner) {
    if (!isPlayingTodayGrid()) {
      var parts = dateStr.split('-');
      if (bannerLabel) bannerLabel.innerText = `${parts[2]}/${parts[1]}/${parts[0]}`;
      banner.style.display = 'flex';
    } else {
      banner.style.display = 'none';
    }
  }

  // Resetar estados das dificuldades para a data selecionada
  gridDifficultyStates.easy = {
    boardSet: null,
    cells: Array(3).fill(null).map(function() { return Array(3).fill(null); }),
    triesLeft: 10,
    score: 1000,
    hits: 0,
    completed: false
  };
  gridDifficultyStates.hard = {
    boardSet: null,
    cells: Array(3).fill(null).map(function() { return Array(3).fill(null); }),
    triesLeft: 10,
    score: 1000,
    hits: 0,
    completed: false,
    assistEnabled: false,
    scoreCutApplied: false
  };

  closeGridCalendar();
  initGridUI();
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
function getCurrentGridSet() {
  var state = gridDifficultyStates[activeGridDifficulty];
  if (!state.boardSet) {
    state.boardSet = generateProceduralGridSet(activeGridDifficulty, selectedGridDate);
  }
  return state.boardSet;
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

  // Atualizar visibilidade e estado do botao de Modo Facilitado (lampada amarela)
  var assistBtn = document.getElementById('btn-toggle-assist');
  var assistLabel = document.getElementById('assist-btn-label');
  if (assistBtn) {
    if (diff === 'hard') {
      assistBtn.style.display = 'inline-flex';
      assistBtn.classList.toggle('active', !!state.assistEnabled);
      if (assistLabel) {
        assistLabel.innerText = state.assistEnabled ? "Modo Facilitado Ativo (10 Opções)" : "Modo Facilitado: 10 Opções (-50% pts)";
      }
    } else {
      assistBtn.style.display = 'none';
    }
  }

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
  setGridDifficulty(activeGridDifficulty);
  startGridTimer();
  renderGridStreakCalendar();
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

function toggleAssistMode() {
  if (activeGridDifficulty !== 'hard') return;
  var state = gridDifficultyStates.hard;
  if (state.completed) return;

  // Se ja estiver ativado, nao permite desativar (irreversivel na partida atual)
  if (state.assistEnabled) {
    alert("O Modo Facilitado já está ativado para esta partida e não pode ser desfeito.");
    return;
  }

  state.assistEnabled = true;

  // Corta pontuacao pela metade na ativacao
  if (!state.scoreCutApplied) {
    state.score = Math.floor(state.score / 2);
    state.scoreCutApplied = true;
  }

  var assistBtn = document.getElementById('btn-toggle-assist');
  var assistLabel = document.getElementById('assist-btn-label');
  if (assistBtn) {
    assistBtn.classList.add('active');
    assistBtn.style.cursor = 'default';
    assistBtn.title = "Modo Facilitado ativado (permanente para esta partida)";
    if (assistLabel) {
      assistLabel.innerText = "Modo Facilitado Ativo (10 Opções)";
    }
  }

  document.getElementById('grid-score').innerText = state.score;

  if (currentInputCell) {
    var searchBoxWrap = document.querySelector('#cell-input-panel .search-box-wrap');
    if (searchBoxWrap) {
      searchBoxWrap.style.display = 'none';
    }
    renderOptionsList('');
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

  var isAssist = (activeGridDifficulty === 'hard' && state.assistEnabled);
  var searchBoxWrap = document.querySelector('#cell-input-panel .search-box-wrap');
  if (searchBoxWrap) {
    searchBoxWrap.style.display = isAssist ? 'none' : 'block';
  }

  var searchField = document.getElementById('grid-search-field');
  searchField.value = '';
  document.getElementById('cell-input-panel').style.display = 'block';
  renderOptionsList('');
  if (!isAssist) {
    searchField.focus();
  }
}

function closeCellInput() {
  document.getElementById('cell-input-panel').style.display = 'none';
  currentInputCell = null;
}

function renderOptionsList(filterText) {
  var container = document.getElementById('grid-options-container');
  var pool = getCurrentGridDataPool();
  var state = gridDifficultyStates[activeGridDifficulty];
  var currentSet = getCurrentGridSet();

  var usedMap = {};
  for (var r = 0; r < 3; r++) {
    for (var c = 0; c < 3; c++) {
      if (state.cells[r][c]) {
        usedMap[state.cells[r][c].id] = true;
      }
    }
  }

  // MODO FACILITADO (10 opcoes: 1 correta e 9 distratores)
  var isAssist = (activeGridDifficulty === 'hard' && state.assistEnabled);
  if (isAssist && currentInputCell) {
    var cellR = currentInputCell.r;
    var cellC = currentInputCell.c;
    var rowDef = currentSet.rows[cellR];
    var colDef = currentSet.cols[cellC];

    // Candidatos validos e invalidos para esta celula
    var validMunis = pool.filter(function(it) {
      return !usedMap[it.id] && rowDef.check(it) && colDef.check(it);
    });
    var invalidMunis = pool.filter(function(it) {
      return !usedMap[it.id] && !(rowDef.check(it) && colDef.check(it));
    });

    if (validMunis.length === 0) {
      container.innerHTML = '<div style="padding: 12px; color: #888; text-align: center; font-size: 13px;">Nenhuma localidade válida restante para esta célula.</div>';
      return;
    }

    var cellSeed = "dz_assist_" + getDailySeedString() + "_" + cellR + "_" + cellC;
    var rng = makeRng(cellSeed);

    // 1 municipio correto (prioriza o do gabarito ou um aleatorio deterministico)
    var correctPick = validMunis[Math.floor(rng() * validMunis.length)];

    // 9 distratores invalidos
    var shuffledInvalid = invalidMunis.slice();
    for (var i = shuffledInvalid.length - 1; i > 0; i--) {
      var j = Math.floor(rng() * (i + 1));
      var temp = shuffledInvalid[i];
      shuffledInvalid[i] = shuffledInvalid[j];
      shuffledInvalid[j] = temp;
    }
    var distractorPicks = shuffledInvalid.slice(0, 9);

    // Combina e embaralha as 10 opcoes
    var tenOptions = [correctPick].concat(distractorPicks);
    for (var k = tenOptions.length - 1; k > 0; k--) {
      var idx = Math.floor(rng() * (k + 1));
      var t = tenOptions[k];
      tenOptions[k] = tenOptions[idx];
      tenOptions[idx] = t;
    }

    container.innerHTML = `
      <div style="padding: 6px 10px 10px; font-size: 12px; color: #2e4d32; font-weight: 600; border-bottom: 1px solid #e2ede2; margin-bottom: 6px;">
        Dica Ativada: Selecione 1 entre as 10 opções abaixo (apenas 1 é correta):
      </div>
    ` + tenOptions.map(function(item) {
      return `
        <div class="option-row" onclick="submitGridGuess('${item.id}')" style="cursor: pointer; padding: 10px 12px;">
          <span><strong>${item.name}</strong> <small style="color: #666;">(${item.uf})</small></span>
          <span style="font-size: 11px; color: #2e4d32; font-weight: 700;">Escolher &rarr;</span>
        </div>
      `;
    }).join('');
    return;
  }

  var normFilter = (filterText || '').toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "").trim();

  // No modo dificil (municipios), exige pelo menos 2 letras digitadas para nao listar cidades antes da busca
  if (activeGridDifficulty === 'hard' && normFilter.length < 2) {
    container.innerHTML = '<div style="padding: 18px 12px; color: #738a75; text-align: center; font-size: 13px;">Digite pelo menos <strong>2 letras</strong> do nome da cidade para buscar...</div>';
    return;
  }

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
  } else if (type === 2) {
    state.score = Math.max(0, state.score - 150);
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
    recordGridDailyCompletion();
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

  var solution = currentSet.solution || solveMatchingSolution(pool, currentSet.rows, currentSet.cols);
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
  if (!isPlayingTodayGrid()) {
    alert("Partidas de dias anteriores são apenas para treino e não pontuam no Placar Oficial.");
    return;
  }
  var nameInput = document.getElementById('grid-player-name');
  var pName = nameInput.value.trim() || 'Jogador Anônimo';
  if (pendingGridResult) {
    saveRecord(pName, pendingGridResult.mode, pendingGridResult.score, pendingGridResult.time);
    alert(`Recorde de ${pName} salvo no Placar!`);
    nameInput.disabled = true;
  }
}

// ==============================================================================
// MODO 2: VERSUS DIARIO & MODO 3: STREAK (BASES AUDITADAS E PAREADAS)
// ==============================================================================
var QUESTION_SPECS = [
  {
    category: "Comércio Exterior / Intensidade",
    metric: "exports_pc",
    unit: "US$ FOB / hab",
    question: "Qual cidade possui MAIOR valor de exportações por habitante (US$ FOB / hab)?",
    hint: "Normaliza o valor total exportado pelo tamanho da população residente, medindo a real intensidade e inserção exportadora per capita do município.",
    source: "MDIC / Comex Stat (2025) & IBGE",
    rCode: "datazoom.amazonia::load_br_trade(dataset = 'exportation')",
    filterFn: function(m) { return (m.exports_pc || 0) >= 80 && m.pop >= 15000; },
    isPeer: function(a, b) {
      var popRatio = Math.max(a.pop, b.pop) / Math.max(Math.min(a.pop, b.pop), 1);
      return popRatio <= 2.2; // Cidades de porte populacional rigorosamente comparavel
    },
    minRatio: 1.45
  },
  {
    category: "Economia / Renda per capita",
    metric: "gd_ppc",
    unit: "R$",
    question: "Qual cidade apresenta MAIOR PIB per capita?",
    hint: "O PIB per capita divide o valor adicionado de toda a economia local pelo número de habitantes, revelando a produtividade econômica média do município.",
    source: "IBGE / PIB dos Municípios",
    rCode: "datazoom.amazonia::load_pibmunic()",
    filterFn: function(m) { return m.pop >= 15000 && (m.gd_ppc || 0) >= 15000; },
    isPeer: function(a, b) {
      var popRatio = Math.max(a.pop, b.pop) / Math.max(Math.min(a.pop, b.pop), 1);
      return popRatio <= 2.0; // Cidades de mesmo estrato populacional
    },
    minRatio: 1.40
  },
  {
    category: "Economia / Produção Municipal",
    metric: "gdp_mil",
    unit: "milhões R$",
    question: "Qual cidade possui MAIOR PIB total (produção econômica municipal)?",
    hint: "Soma de todos os bens e serviços finais produzidos a preços correntes no município, refletindo a escala econômica agregada da localidade.",
    source: "IBGE / PIB dos Municípios",
    rCode: "datazoom.amazonia::load_pibmunic()",
    filterFn: function(m) { return m.pop >= 25000 && (m.gdp_mil || 0) >= 300000; },
    isPeer: function(a, b) {
      var popRatio = Math.max(a.pop, b.pop) / Math.max(Math.min(a.pop, b.pop), 1);
      return popRatio <= 2.2; // Cidades polos de relevância comparavel
    },
    minRatio: 1.45
  },
  {
    category: "Meio Ambiente / Cobertura Nativa",
    metric: "forest_pct",
    unit: "% floresta",
    question: "Qual cidade possui MAIOR proporção de floresta nativa preservada (% do território)?",
    hint: "Calculado pela razão oficial entre a área de cobertura florestal natural e a área territorial total do município monitorada por satélite.",
    source: "MapBiomas Coleção 9 (2024)",
    rCode: "datazoom.amazonia::load_mapbiomas(dataset = 'municipality_coverage')",
    filterFn: function(m) { return m.pop >= 15000 && (m.forest_pct || 0) >= 5; },
    isPeer: function(a, b) {
      var popRatio = Math.max(a.pop, b.pop) / Math.max(Math.min(a.pop, b.pop), 1);
      return popRatio <= 2.5; // Municípios comparáveis em escala com contraste florestal real
    },
    minRatio: 1.35
  },
  {
    category: "Demografia / População",
    metric: "pop",
    unit: "habitantes",
    question: "Qual cidade possui MAIOR população residente?",
    hint: "População residente estimada pelos levantamentos demográficos e Censos oficiais do IBGE.",
    source: "IBGE / Estimativas & Censo",
    rCode: "datazoom.amazonia::load_population()",
    filterFn: function(m) { return m.pop >= 20000; },
    isPeer: function(a, b) {
      // Cidades vizinhas do mesmo estado ou estados limítrofes com porte próximo (ratio <= 2.0)
      var popRatio = Math.max(a.pop, b.pop) / Math.max(Math.min(a.pop, b.pop), 1);
      return popRatio <= 2.0;
    },
    minRatio: 1.40
  },
  {
    category: "Geografia / Dimensão Territorial",
    metric: "area_km2",
    unit: "km²",
    question: "Qual cidade possui MAIOR extensão territorial (área em km²)?",
    hint: "Área territorial total oficial da malha municipal calculada pelo IBGE e MapBiomas.",
    source: "IBGE / Malha Municipal & MapBiomas",
    rCode: "datazoom.amazonia::load_mapbiomas(dataset = 'municipality_coverage')",
    filterFn: function(m) { return m.pop >= 10000 && (m.area_km2 || 0) >= 1000; },
    isPeer: function(a, b) {
      var popRatio = Math.max(a.pop, b.pop) / Math.max(Math.min(a.pop, b.pop), 1);
      return popRatio <= 2.2;
    },
    minRatio: 1.50
  },
  {
    category: "Comércio Exterior / Volume Total",
    metric: "exports_usd",
    unit: "US$ FOB",
    question: "Qual cidade possui MAIOR volume total de exportações (US$ FOB)?",
    hint: "Volume financeiro total das mercadorias exportadas pelo município a preços correntes FOB.",
    source: "MDIC / Comex Stat (2025)",
    rCode: "datazoom.amazonia::load_br_trade(dataset = 'exportation')",
    filterFn: function(m) { return (m.exports_usd || 0) >= 10000000 && m.pop >= 15000; },
    isPeer: function(a, b) {
      var popRatio = Math.max(a.pop, b.pop) / Math.max(Math.min(a.pop, b.pop), 1);
      return popRatio <= 2.2;
    },
    minRatio: 1.50
  }
];

function generateVersusPair(rng, spec, forceWinner) {
  var pool = DATA_HARD.filter(function(m) {
    if (spec.filterFn) return spec.filterFn(m);
    return (m[spec.metric] || 0) >= (spec.minVal || 1);
  });
  if (pool.length < 10) pool = DATA_HARD;

  for (var i = 0; i < 250; i++) {
    var a = pool[Math.floor(rng() * pool.length)];
    var b = pool[Math.floor(rng() * pool.length)];
    if (a.id === b.id) continue;

    if (spec.isPeer && !spec.isPeer(a, b)) continue;

    var valA = Number(a[spec.metric]) || 0;
    var valB = Number(b[spec.metric]) || 0;
    if (valA === valB) continue;

    var ratio = Math.max(valA, valB) / Math.max(Math.min(valA, valB), 0.0001);
    if (ratio < (spec.minRatio || 1.35)) continue;

    var winnerSide = (forceWinner === 'left' || forceWinner === 'right') ? forceWinner : (rng() < 0.5 ? 'left' : 'right');
    var leftCity = winnerSide === 'left' ? (valA > valB ? a : b) : (valA < valB ? a : b);
    var rightCity = winnerSide === 'left' ? (valA < valB ? a : b) : (valA > valB ? a : b);

    return {
      category: spec.category,
      question: spec.question,
      hint: spec.hint || "",
      source: spec.source,
      rCode: spec.rCode,
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

  // Fallback seguro caso necessario
  var first = pool[0];
  var second = pool[1] || pool[0];
  return {
    category: spec.category,
    question: spec.question,
    hint: spec.hint || "",
    source: spec.source,
    rCode: spec.rCode,
    left: { id: first.id, name: first.name, uf: first.uf, val: formatMetricUnit(first[spec.metric], spec.unit) },
    right: { id: second.id, name: second.name, uf: second.uf, val: formatMetricUnit(second[spec.metric], spec.unit) },
    winner: 'left'
  };
}

var VERSUS_DAILY_PUZZLES = [];

function buildDailyVersusPuzzles() {
  var rng = makeRng("dz_versus_daily_" + getDailySeedString());
  VERSUS_DAILY_PUZZLES = [];
  var specs = QUESTION_SPECS.slice();
  // Embaralha as categorias diariamente para que cada dia tenha uma sequencia unica
  for (var i = specs.length - 1; i > 0; i--) {
    var j = Math.floor(rng() * (i + 1));
    var temp = specs[i];
    specs[i] = specs[j];
    specs[j] = temp;
  }
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
    document.getElementById('versus-btn-next').innerHTML =
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

  var subEl = document.getElementById('versus-subtitle');
  if (subEl) {
    if (puzzle.hint) {
      subEl.innerText = puzzle.hint;
      subEl.style.display = 'block';
    } else {
      subEl.style.display = 'none';
    }
  }

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
      document.getElementById('versus-btn-next').innerHTML = "Continuar Streak &rarr;";
    } else {
      consumeStreakChance();
      var leftChances = getStreakChancesRemaining();
      document.getElementById('streak-chances-badge').innerText = `${leftChances} / 3`;
      document.getElementById('versus-btn-next').innerHTML = "Ver Resultado Final &rarr;";
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

  var rSnippetHtml = '';
  if (puzzle.rCode) {
    rSnippetHtml = `
      <div class="feedback-r-box">
        <div class="feedback-r-title">
          <span>Como consultar esses dados no R (pacote oficial):</span>
          <span style="font-size: 10px; color: #666; font-family: sans-serif;">datazoom.amazonia</span>
        </div>
        <code># Instalação: remotes::install_github("datazoompuc/datazoom.amazonia")<br>dados <- ${puzzle.rCode}</code>
      </div>
    `;
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
      ${rSnippetHtml}
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
      ${rSnippetHtml}
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
        n_munis: s.n_munis,
        area_km2: s.area_km2,
        cattle: s.cattle,
        soy: s.soy,
        gdp_mil: s.gdp_mil,
        gd_ppc: s.gd_ppc,
        exports_usd: s.exports_usd,
        exports_pc: s.exports_pc || (s.pop ? Math.round(s.exports_usd / s.pop) : 0),
        forest_pct: s.forest_pct,
        is_uf: true
      };
    });

    DATA_HARD = payload.municipalities.map(function(m) {
      return {
        id: m.id,
        name: m.name,
        uf: m.uf,
        pop: m.pop,
        area_km2: m.area_km2,
        gdp_mil: m.gdp_mil,
        gd_ppc: m.gd_ppc,
        exports_usd: m.exports_usd,
        exports_pc: m.exports_pc || (m.pop ? Math.round(m.exports_usd / m.pop) : 0),
        forest_pct: m.forest_pct,
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

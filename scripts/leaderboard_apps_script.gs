/**
 * ============================================================================
 * Data Zoom Amazonia — Serverless Leaderboard API (Google Apps Script)
 * ============================================================================
 *
 * Como funciona no site estatico (GitHub Pages):
 *   - Sites Jekyll no GitHub Pages sao 100% estaticos e nao executam backend.
 *   - Publicando este script gratuitamente como "App da Web" (Web App) em uma
 *     Planilha Google da conta Data Zoom, a pagina `pt/viz/jogos.md` consegue
 *     ler (`GET`) e gravar (`POST` com Content-Type `text/plain;charset=utf-8`
 *     para evitar bloqueio de CORS preflight `OPTIONS`) os recordes globais em
 *     tempo real.
 *
 * Passo a passo de publicacao (2 minutos):
 *   1. Crie uma Planilha Google com uma aba chamada `Leaderboard` e cabecalhos
 *      na linha 1: `id | name | mode | modeLabel | score | maxScore | detail | date | created_at`
 *   2. No menu da planilha, clique em Extensoes -> Apps Script e cole este codigo.
 *   3. Clique em Implantar -> Nova implantacao -> Tipo: "App da Web".
 *   4. Em "Executar como": selecione "Eu".
 *   5. Em "Quem pode acessar": selecione "Qualquer pessoa".
 *   6. Copie a URL gerada (`https://script.google.com/macros/s/.../exec`) e
 *      cole na constante `REMOTE_LEADERBOARD_ENDPOINT` em `pt/viz/jogos.md`.
 */

const SHEET_NAME = "Leaderboard";
const MAX_ROWS_RETURNED = 150;

function getSheet_() {
  const ss = SpreadsheetApp.getActiveSpreadsheet();
  let sheet = ss.getSheetByName(SHEET_NAME);
  if (!sheet) {
    sheet = ss.insertSheet(SHEET_NAME);
    sheet.appendRow(["id", "name", "mode", "modeLabel", "score", "maxScore", "detail", "date", "created_at"]);
  }
  return sheet;
}

function jsonResponse_(obj) {
  return ContentService
    .createTextOutput(JSON.stringify(obj))
    .setMimeType(ContentService.MimeType.JSON);
}

function doGet() {
  try {
    const sheet = getSheet_();
    const values = sheet.getDataRange().getValues();
    if (values.length <= 1) {
      return jsonResponse_({ updated_at: new Date().toISOString(), entries: [] });
    }
    const rows = values.slice(1).map(function(r) {
      return {
        id: String(r[0] || ""),
        name: String(r[1] || "Jogador").slice(0, 28),
        mode: String(r[2] || "grid-easy"),
        modeLabel: String(r[3] || "Grid (Estados)"),
        score: Number(r[4]) || 0,
        maxScore: r[5] === "" || r[5] === null ? null : Number(r[5]),
        detail: String(r[6] || ""),
        date: String(r[7] || "")
      };
    }).filter(function(item) {
      return item.score > 0 && item.name.length > 0;
    });

    rows.sort(function(a, b) { return b.score - a.score; });
    return jsonResponse_({
      updated_at: new Date().toISOString(),
      source: "Data Zoom Amazonia - Nuvem Oficial",
      entries: rows.slice(0, MAX_ROWS_RETURNED)
    });
  } catch (err) {
    return jsonResponse_({ error: String(err), entries: [] });
  }
}

function doPost(e) {
  const lock = LockService.getScriptLock();
  lock.waitLock(5000);
  try {
    const raw = (e && e.postData && e.postData.contents) ? e.postData.contents : "{}";
    const body = JSON.parse(raw);

    const allowedModes = {
      "grid-easy": { label: "Grid (Estados)", max: 9 },
      "grid-hard": { label: "Grid (Municípios)", max: 9 },
      "versus": { label: "Modo Versus", max: 5 },
      "streak": { label: "Modo Streak", max: 200 }
    };

    const mode = String(body.mode || "");
    if (!allowedModes[mode]) {
      return jsonResponse_({ ok: false, error: "Modo invalido" });
    }

    const score = Math.floor(Number(body.score) || 0);
    if (score <= 0 || score > allowedModes[mode].max) {
      return jsonResponse_({ ok: false, error: "Pontuacao fora do intervalo permitido" });
    }

    const name = String(body.name || "").trim().replace(/[<>]/g, "").slice(0, 25);
    if (!name) {
      return jsonResponse_({ ok: false, error: "Nome obrigatorio" });
    }

    const id = String(body.id || ("gas-" + new Date().getTime()));
    const maxScore = mode === "streak" ? "" : allowedModes[mode].max;
    const detail = String(body.detail || "").slice(0, 50);
    const date = String(body.date || new Date().toLocaleDateString("pt-BR")).slice(0, 16);

    const sheet = getSheet_();
    sheet.appendRow([
      id,
      name,
      mode,
      allowedModes[mode].label,
      score,
      maxScore,
      detail,
      date,
      new Date().toISOString()
    ]);

    return doGet();
  } catch (err) {
    return jsonResponse_({ ok: false, error: String(err) });
  } finally {
    lock.releaseLock();
  }
}

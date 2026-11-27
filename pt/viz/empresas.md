---
layout: default
title: Empresas
lang: pt
description: "Empresas e emprego formal na Amazônia Legal: estabelecimentos, pessoal ocupado e massa salarial por município"
---

<link rel="stylesheet" href="style.css">

<br>

<h1 class="title-about">Empresas</h1>

<br>

<p class="text-center" style="max-width: 900px; margin: 0 auto;">
  O mapa do emprego formal na Amazônia Legal, de 2006 a 2020: número de
  estabelecimentos, pessoas ocupadas, assalariados e massa salarial, município a
  município. Veja em <strong>total</strong>, <strong>por habitante</strong> ou
  como <strong>percentual do PIB</strong> municipal, e compare dois anos lado a
  lado.
</p>

<br>

<!-- O app estático, servido pelo GitHub Pages do repositório datazoom_viz.
     ?embed=1 esconde o que esta página já mostra: marca, descrição, logo e o
     seletor de idioma (quem troca o idioma aqui é a nav bar, que recarrega a
     página inteira; o do app trocaria só o iframe). -->
<div class="container-fluid p-0">
  <iframe
    class="viz-embed"
    src="{{ site.viz_app_base }}/map_dz_munic_cempre/?embed=1"
    width="100%"
    frameborder="0"
    allowfullscreen
    loading="lazy"
    title="Empresas e emprego formal na Amazônia Legal — Data Zoom"
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
        Dados do <a href="https://www.ibge.gov.br/estatisticas/economicas/comercio/9016-estatisticas-do-cadastro-central-de-empresas.html" target="_blank" rel="noreferrer noopener">CEMPRE</a>,
        o Cadastro Central de Empresas do IBGE, que reúne as empresas e outras organizações
        formalmente constituídas, com o pessoal ocupado e os salários pagos. O cadastro
        registra o estabelecimento pelo endereço do CNPJ, então a folha de uma administração
        com sede numa capital aparece inteira naquele município.
      </p>

      <p>
        <strong>Quer os dados por trás deste mapa?</strong> Eles saem do nosso pacote
        <strong>datazoom.amazonia</strong>, em <strong>R</strong>. No seu console:
      </p>
      <pre class="dzam-code"><code>install.packages("datazoom.amazonia")

dados &lt;- datazoom.amazonia::load_cempre(
  dataset     = "cempre",
  geo_level   = "municipality",
  time_period = 2006:2020,
  language    = "pt"
)</code></pre>
      <p>
        As medidas por habitante e como percentual do PIB usam, respectivamente,
        <code class="code_viz">load_population()</code> e <code class="code_viz">load_pibmunic()</code>,
        do mesmo pacote. A lista completa, com exemplos, está em
        <a href="{{ site.baseurl }}/pt/codigos-e-dados/">Códigos e Dados</a>; o código do pacote
        está no <a href="https://github.com/datazoompuc/datazoom.amazonia" target="_blank" rel="noreferrer noopener">GitHub</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Atenção</strong>: Esta visualização é alimentada por dados tratados através do pacote
        <code class="code_viz">datazoom.amazonia</code> no <code class="code_viz">R</code> (função <code class="code_viz">load_cempre()</code>)
        e está sujeita a erro diante de alterações nas fontes externas. Os valores são nominais, sem correção
        pela inflação. Caso o usuário identifique alguma discrepância de informação, solicitamos que reporte nos
        <a href="https://github.com/datazoompuc/datazoom.amazonia/issues" target="_blank" rel="noreferrer noopener">Issues do GitHub</a>.
      </p>
     </div>
   </div>
  </div>
</div>

<!-- O app é um painel com barra lateral: precisa de altura, não da faixa de 800px
     que as visualizações antigas usavam. vh para preencher a tela, com um piso para
     telas baixas. -->
<style>
  /* mesmo bloco de código usado em Códigos e Dados */
  .dzam-code { background:#f6f8fa; border:1px solid #e1e4e8; border-radius:8px; padding:12px; overflow:auto; }
  .viz-embed { height: calc(100vh - 180px); min-height: 760px; display: block; }
  @media (max-width: 992px) { .viz-embed { height: 80vh !important; min-height: 620px; } }
  @media (max-width: 576px) { .viz-embed { height: 85vh !important; min-height: 560px; } }
</style>

<br><br>

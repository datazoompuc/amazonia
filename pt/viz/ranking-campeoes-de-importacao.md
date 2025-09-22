---
layout: default
lang: pt
title: "Ranking de Países Importadores"
description: "Ranking de Países que Mais Importam da Amazônia Legal"
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style="max-width: 1000px"> Ranking de Países que Mais Importam da Amazônia Legal</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center">
  Aperte play para ver como o ranking de países que mais importam da Amazônia Legal evolui ao longo dos anos. Para cada país, é apresentado o valor das importações.
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_rk_comex_exp_paises/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Rankings: comércio exterior — Data Zoom Amazônia"
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
       <!-- descrição dos dados usados-->
      <p>
        Dados coletados e tratados pela <a href="https://www.gov.br/produtividade-e-comercio-exterior/pt-br/assuntos/comercio-exterior/estatisticas/base-de-dados-bruta/" target="_blank" rel="noreferrer noopener">Comex Stat</a>. 
        O conjunto de dados Comex reúne dados extraídos do Siscomex (Sistema Integrado de Comércio Exterio), que é um banco de dados contendo informações de todos os produtos importados ou exportados do Brasil.<br><br>
        Quer explorar mais? Acesse o nosso <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Atenção</strong>: Esta visualização é alimentada por dados tratados através do pacote 
        <code class = "code_viz">datazoom.amazonia</code> no <code class = "code_viz">R</code> (função <code class = "code_viz">load_br_trade()</code>) e está sujeita a erro diante de 
        alterações nas fontes externas. Caso o usuário identifique alguma discrepância de informação, solicitamos que reporte nos 
        <a href="https://github.com/datazoompuc/datazoom.amazonia/issues" target="_blank" rel="noreferrer noopener">Issues do GitHub</a>.
      </p>
       <br><br>
       <p>
        <a href="{{ site.baseurl }}/pt/viz/">&lt; Voltar para Visualizações</a>
       </p>
     </div>

      
   </div>
  </div>
</div>

<!-- Ajustes simples para a altura do iframe em telas menores -->
<style>
  @media (max-width: 992px) { .container-fluid iframe { height: 78vh !important; } }
  @media (max-width: 576px) { .container-fluid iframe { height: 82vh !important; } }
</style>
<br><br>

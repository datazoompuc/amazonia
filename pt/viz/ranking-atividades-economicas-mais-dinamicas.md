---
layout: default
lang: pt
title: "Ranking das Atividades Econômicas Mais Dinâmicas"
description: "Ranking dinâmico com atividades econômicas mais dinâmicas na Amazônia Legal e no Brasil ao longo do tempo."
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style = "margin: 0px 200px;"> Ranking das Atividades Econômicas Mais Dinâmicas</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center" style="font-size:14px;color:#3f8513; margin:20px 300px;">
  Em nosso gráfico dinâmico é possível alterar as variáveis, podendo selecionar diferentes tipos de pessoas ocupadas. Além disso, cada cor do gráfico representa uma atividade econômica e pode-se escolher o período que desejar.  Já tentou apertar o play para ver o gráfico se alterando ao longo do tempo?
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_rk_ibge_pnadc_cnae/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Rankings: Mercado de Trabalho — Data Zoom Amazônia"
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
        Dados coletados da <a href="https://www.epe.gov.br/" target="_blank" rel="noreferrer noopener">Pesquisa Nacional por Amostra de Domicílios Contínua – IBGE</a>. 
        A PNAD Contínua é uma pesquisa, em que cada domicílio é entrevistado por cinco trimestres consecutivos. <br><br>
        Quer explorar mais? Acesse o nosso <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Atenção</strong>: Esta visualização é alimentada por dados tratados através do pacote 
        <code class = "code_viz">datazoom_social</code> no <code class = "code_viz">Stata</code> (função <code class = "code_viz">datazoom_pnadcontinua[ , options]</code>) e está sujeita a erro diante de 
        alterações nas fontes externas. Caso o usuário identifique alguma discrepância de informação, solicitamos que reporte nos 
        <a href="https://github.com/datazoompuc/datazoom.amazonia/issues" target="_blank" rel="noreferrer noopener">Issues do GitHub</a>.
      </p>
       <br><br>
       <p>
        <a href="{{ site.baseurl }}/visualizacoes/">&lt; Voltar para Visualizações</a>
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

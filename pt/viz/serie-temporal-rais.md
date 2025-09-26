---
layout: default
lang: pt
title: "Série Temporal do Emprego Formal (RAIS)"
description: "Visualização interativa da evolução do salário médio, número de vínculos e tempo no emprego a partir dos dados da RAIS"
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style="max-width: 1000px">Série Temporal do Emprego Formal (RAIS)</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center">
  Em nosso gráfico dinâmico é possível alterar as variáveis, podendo escolher informações sobre o mercado de trabalho formal a partir da RAIS – Ministério do Trabalho. É possível selecionar o recorte geográfico, além de características como sexo, raça, escolaridade, setor econômico e ocupação, e observar a evolução temporal de indicadores como salário médio, número de vínculos e tempo no emprego.
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_ts_rais/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Série Temporal do Emprego Formal (RAIS)"
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
        Dados provenientes da <a href="https://www.gov.br/trabalho-e-emprego/pt-br/assuntos/estatisticas/rais" target="_blank" rel="noreferrer noopener">Relação Anual de Informações Sociais (RAIS)</a>, base administrativa do Ministério do Trabalho que reúne informações de todos os vínculos formais de emprego no Brasil.<br><br>
        Quer explorar mais? Acesse o nosso <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Atenção</strong>: Esta visualização é alimentada por dados tratados pelo Departamento de Economia da PUC-Rio e está sujeita a ajustes decorrentes de alterações nas fontes originais. Caso o usuário identifique alguma discrepância de informação, solicitamos que reporte nos 
        <a href="https://github.com/datazoompuc/datazoom_social_Stata/issues" target="_blank" rel="noreferrer noopener">Issues do GitHub</a>.
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

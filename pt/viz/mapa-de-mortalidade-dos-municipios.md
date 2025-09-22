---
layout: default
lang: pt
title: "Mapa de Mortalidade dos Municípios"
description: "Mapa dinâmico da saúde na Amazônia: Mortalidade ao nível municipal"
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style="max-width: 1000px"> Mapa de Mortalidade dos Municípios</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center">
  Em nosso gráfico dinâmico é possível alterar a variável, podendo selecionar diferentes causas de morte. Além disso, existe a opção de selecionar o ano em que se deseja fazer a análise.<br>
  Já tentou apertar o play para ver o gráfico se alterando ao longo do tempo?
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_map_saude_mortalidade"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Saúde na Amazônia: Mortalidade ao nível municipal"
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
        Dados coletados e tratados pelo <a href="https://datasus.saude.gov.br/" target="_blank" rel="noreferrer noopener">DATASUS</a>. 
        Trata-se de um órgão da Secretaria de Gestão Estratégica e Participativa do Ministério da Saúde, com a responsabilidade de coletar, processar e disseminar informações sobre saúde. <br><br>
        Quer explorar mais? Acesse o nosso <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Atenção</strong>: Esta visualização é alimentada por dados tratados através do pacote 
        <code class = "code_viz">datazoom.amazonia</code> no <code class = "code_viz">R</code> (função <code class = "code_viz">load_datasus()</code>) e está sujeita a erro diante de 
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

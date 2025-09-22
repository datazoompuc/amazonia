---
layout: default
lang: pt
title: "Histograma da Quantidade de Bois por Hectare em Áreas de Pastagem"
description: "Histograma da Quantidade de Bois por Hectare em Áreas de Pastagem"
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style="max-width: 1000px">Histograma da Quantidade de Bois por Hectare em Áreas de Pastagem</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center">
  Em nosso gráfico, o eixo x representa o log da (quantidade de bois por hectare + 1) e o eixo y a quantidade de municípios que se enquadram em cada intervalo da variável do eixo x. Além disso, pode-se escolher o período que desejar. É possível também filtrar por região, por estado e para a Amazônia Legal. Já tentou apertar o play para ver o gráfico se alterando ao longo do tempo?
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_hist_mapbiomas_bovinos/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Distribuição dos Municípios de acordo com Bovino/Hectares de Área de Pastagem"
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
        Dados coletados do <a href="https://brasil.mapbiomas.org/" target="_blank" rel="noreferrer noopener">MapBiomas</a>. 
        O MapBiomas é uma rede colaborativa, formada por ONGs, universidades e startups de tecnologia, que produz mapeamento anual da cobertura e uso do solo no Brasil. <br><br>
        Quer explorar mais? Acesse o nosso <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Atenção</strong>: Esta visualização é alimentada por dados tratados através do pacote 
        <code class = "code_viz">datazoom.amazonia</code> no <code class = "code_viz">R</code> (função <code class = "code_viz">load_mapbiomas()</code>) e está sujeita a erro diante de 
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

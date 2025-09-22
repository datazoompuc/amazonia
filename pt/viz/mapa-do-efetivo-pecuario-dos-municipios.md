---
layout: default
lang: pt
title: "Mapa do Efetivo Pecuário dos Municípios"
description: "Mapa do Efetivo Pecuário dos Municípios"
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style="max-width: 1000px">Mapa do Efetivo Pecuário dos Municípios</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center">
  Em nosso gráfico dinâmico é possível alterar as variáveis, podendo escolher informações sobre os efetivos da pecuária existentes no município, além da produção de origem animal, e o valor da produção durante o ano de referência. Além disso, existe a opção de selecionar o ano em que se deseja fazer a análise. Já tentou apertar o play para ver o gráfico se alterando ao longo do tempo?
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_map_dz_munic_ppm"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Mapa do Pecuário Pecuário dos Municípios"
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
        Dados coletados da <a href="https://basedosdados.org/dataset/f7df4160-7a6f-4658-a287-3a73d412ed10?table=707b3dee-88a2-424d-a790-7216eb431c78" target="_blank" rel="noreferrer noopener">PPM-IBGE</a>. 
        Os dados da Pesquisa Pecuária Municial (PPM) reúnem informações sobre os efetivos da pecuária existentes no município, além da produção de origem animal, e o valor da produção durante o ano de referência. Os dados disponíveis têm uma frequência anual e estão disponíveis a partir do ano de 1945.<br><br>
        Quer explorar mais? Acesse o nosso <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Atenção</strong>: Esta visualização é alimentada por dados tratados através do pacote 
        <code class = "code_viz">datazoom.amazonia</code> no <code class = "code_viz">R</code> (função <code class = "code_viz">load_ppm()</code>) e está sujeita a erro diante de 
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

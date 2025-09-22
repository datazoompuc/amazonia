---
layout: default
lang: pt
title: "Mapa de Gado e Área de Pastagem"
description: "Mapa de cabeças de gado e área de pastagem."
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style="max-width: 1000px"> Mapa de Cabeças de Gado e Área de Pastagem</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center">
  Em nosso mapa dinâmico é possível selecionar cabeças de gado ou área de pastagem.
  Os dados podem ser visualizados como proporção da área total do município ou da área de pastagem.
  Todos os dados são referentes a 2017.
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_map_cattle/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Mapas: agropecuária — Data Zoom Amazônia"
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
        Dados coletados do <a href="https://brasil.mapbiomas.org/" target="_blank" rel="noreferrer noopener">MapBiomas</a> 
        e do <a href="https://censoagro2017.ibge.gov.br/" target="_blank" rel="noreferrer noopener">Censo Agro 2017</a> realizado pelo <a href="https://www.ibge.gov.br/" target="_blank" rel="noreferrer noopener">IBGE</a>. 
        O MapBiomas é uma iniciativa colaborativa formada por universidades, ONGs e empresas de tecnologia, dedicada ao mapeamento da cobertura e do uso da terra.
        Ele utiliza imagens de satélite e sensoriamento remoto para gerar dados em painel.
        O Censo Agro investigas as características e pordução de todos os estabelecimentos agropecuários do território brasileiro. <br><br>
        Quer explorar mais? Acesse o nosso <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Atenção</strong>: Esta visualização é alimentada por dados tratados através do pacote 
        <code class = "code_viz">datazoom.amazonia</code> no <code class = "code_viz">R</code> (funções <code class = "code_viz">load_mapbiomas()</code> e <code class = "code_viz">load_censoagro()</code>) e está sujeita a erro diante de 
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

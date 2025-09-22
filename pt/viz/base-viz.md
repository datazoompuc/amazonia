---
layout: default
lang: pt
title: Título com aspas (ex "Séries Temporais da Produção, Consumo e Consumidores de Energia")
description: descrição da viz com aspas (ex "Gráfico dinâmico com séries de produção, consumo e consumidores de energia na Amazônia Legal e no Brasil.")
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style ="max-width: 1000px"> Séries Temporais da Produção, Consumo e Consumidores de Energia</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center">
  Em nosso gráfico dinâmico é possível alterar as variáveis, podendo escolher informações sobre a produção, o consumo e os consumidores de energia da Amazônia Legal e do Brasil inteiro. 
  Filtre para os estados de interesse, selecione as fontes de energia e categorias de consumo de interesse e acompanhe a evolução ao longo do tempo.
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_ts_energia_amz_exporta/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Séries temporais: energia — Data Zoom Amazônia"
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
        Dados coletados da <a href="https://www.epe.gov.br/" target="_blank" rel="noreferrer noopener">EPE</a>. 
        A Empresa de Pesquisa Energética (EPE) é uma empresa pública brasileira, vinculada ao Ministério de Minas e Energia, 
        responsável por realizar estudos e pesquisas na área de energia elétrica e energias renováveis. <br><br>
        Quer explorar mais? Acesse o nosso <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Atenção</strong>: Esta visualização é alimentada por dados tratados através do pacote 
        <code class = "code_viz">datazoom.amazonia</code> no <code class = "code_viz">R</code> (função <code class = "code_viz">load_epe()</code>) e está sujeita a erro diante de 
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

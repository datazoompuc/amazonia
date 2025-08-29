---
layout: default
lang: pt
title: "Séries Temporais da Produção, Consumo e Consumidores de Energia"
description: "Gráfico dinâmico com séries de produção, consumo e consumidores de energia na Amazônia Legal e no Brasil."
---

<h1 class="text-center">Séries Temporais da Produção, Consumo e Consumidores de Energia</h1>

<p class="text-center" style="font-size:14px;color:#3f8513">
  Em nosso gráfico dinâmico é possível alterar as variáveis, podendo escolher informações sobre a produção, o consumo e os consumidores de energia da Amazônia Legal e do Brasil inteiro. 
  Filtre para os estados de interesse, selecione as fontes de energia e categorias de consumo de interesse e acompanhe a evolução ao longo do tempo.
</p>

<!-- Embed em largura total, como na página antiga -->
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
<div class="container-fluid my-4">
  <div class="row">
    <div class="col-md-3" style="text-align:left;">
      <h2 style="font-size:20px;line-height:1.5">
        INFORMAÇÕES SOBRE A BASE DE DADOS UTILIZADA NESSA VISUALIZAÇÃO
      </h2><br><br><br>
      <p class="mt-4">
        &gt; <a href="{{ site.baseurl }}/visualizacoes/">Voltar para Visualizações</a>
      </p>
    </div>
    <div class="col-md-9">
     <div class="rodape_viz">
      <p>
        Dados coletados da <a href="https://www.epe.gov.br/" target="_blank" rel="noreferrer noopener">EPE</a>. 
        A Empresa de Pesquisa Energética (EPE) é uma empresa pública brasileira, vinculada ao Ministério de Minas e Energia, 
        responsável por realizar estudos e pesquisas na área de energia elétrica e energias renováveis. <br><br>
        Quer explorar mais? Acesse o nosso <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>

     <br>
    
      <p class="p-3" style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px;">
        <strong>Atenção</strong>: Esta visualização é alimentada por dados tratados através do pacote 
        <code>datazoom.amazonia</code> no <code>R</code> (função <code>load_epe()</code>) e está sujeita a erro diante de 
        alterações nas fontes externas. Caso o usuário identifique alguma discrepância de informação, solicitamos que reporte nos 
        <a href="https://github.com/datazoompuc/datazoom.amazonia/issues" target="_blank" rel="noreferrer noopener">Issues do GitHub</a>.
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

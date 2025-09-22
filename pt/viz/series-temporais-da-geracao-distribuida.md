---
layout: default
lang: pt
title: "Séries Temporais da Geração Distribuída"
description: "Gráfico dinâmico com séries de geração distribuída de energia na Amazônia Legal e no Brasil."
---
<br><br>
<h1 class="title-about" style="max-width: 1000px">Séries Temporais da Geração Distribuída</h1>
<br>
<p class="text-center">
  Em nosso gráfico dinâmico é possível alterar as variáveis, podendo escolher informações sobre a geração distribuída de energia da Amazônia Legal e em todo o país. 
  Filtre por modalidade e tamanho do empreendimento, por fonte da geração, escolher as unidades federativas de interesse e observe a evolução temporal da quantidade de unidades e da potência instalada.
</p>
<br>
<!-- Embed em largura total, como na página antiga -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_ts_aneel_geracao_distribuida/"
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
      <p>
        Dados coletados da <a href="https://www.gov.br/aneel/pt-br" target="_blank" rel="noreferrer noopener">ANEEL</a>. 
        A Agência Nacional de Energia Elétrica é uma autarquia sob regime especial, vinculada ao Ministério de Minas e Energia, com sede e foro no Distrito Federal. <br><br>
        Quer explorar mais? Acesse o nosso <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Atenção</strong>: Esta visualização é alimentada por dados tratados através do pacote 
        <code class = "code_viz">datazoom.amazonia</code> no <code class = "code_viz">R</code> (função <code class = "code_viz">load_aneel()</code>) e está sujeita a erro diante de 
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

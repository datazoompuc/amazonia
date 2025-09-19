---
layout: default
lang: pt
title: "Desenvolvimento por Município"
description: "Mapa de Desenvolvimento da Amazônia Legal por Município"
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style = "margin: 0px 200px;">Mapa de Desenvolvimento da Amazônia Legal por Município</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center" style="font-size:18px;color:#3f8513; margin:20px 300px;">
  Em nosso mapa, selecione a variável de interesse: informações sobre Censo 2000, Censo 2010 e Índice de Progresso Social (IPS) dos anos de 2014 e 2018.
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_mapstatic_dz_munic/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Mapas: desenvolvimento - Data Zoom Amazônia"
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
        Dados coletados dos Censos de 2000 e 2010 conduzidos pelo <a href="https://www.ibge.gov.br/estatisticas/sociais/saude/22827-censo-demografico-2022.html" target="_blank" rel="noreferrer noopener">IBGE</a>, e do <a href="https://ipsbrasil.org.br/pt" target="_blank" rel="noreferrer noopener">Índice de Progresso Social (IPS)</a> elaborado pelo <a href="https://imazon.org.br/" target="_blank" rel="noreferrer noopener">Instituto do Homem e Meio Ambiente da Amazônia (Imazon)</a>. 
        O Censo recolhe informações detalhadas sobre a população do país. O IPS é um índice de desempenho socioambiental da Amazônia Legal. <br><br>
        Quer explorar mais? Acesse o nosso <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Atenção</strong>: Esta visualização é alimentada por dados tratados através do pacote 
        <code class = "code_viz">datazoom.amazonia</code> no <code class = "code_viz">R</code> (função <code class = "code_viz">load_ips()</code>) e do pacote <code class = "code_viz">datazoom_social</code> no <code class = "code_viz">Stata</code> (função <code class = "code_viz">load_censo[,options]</code>) e está sujeita a erro diante de 
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

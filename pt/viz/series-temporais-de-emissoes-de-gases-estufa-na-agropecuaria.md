---
layout: default
lang: pt
title: "Séries Temporais de Emissões de Gases Estufa na Agropecuária"
description: "Séries Temporais de Emissões de Gases Estufa na Agropecuária"
---
<br><br>
<!-- titulo da viz sem aspas-->
<h1 class="title-about" style = "margin: 0px 200px;">Séries Temporais de Emissões de Gases Estufa na Agropecuária</h1>
<br>
<!-- instruções sobre o gráfico-->
<p class="text-center" style="font-size:18px;color:#3f8513; margin:20px 300px;">
  Em nosso gráfico dinâmico é possível observar informações sobre emissão de gases estufa por Estado do SEEG. Além disso, existe a opção de colocar em escala log e/ou o proporcional ao ano inicial.
</p>
<br>
<!-- link do shinyapps -->
<div class="container-fluid p-0">
  <iframe
    src="https://datazoom.shinyapps.io/app_ts_seeg_state_farming/"
    width="100%"
    height="800"
    frameborder="0"
    allowfullscreen
    title="Emissões de Gases Estufa na Agropecuária a Nível Estadual"
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
        Dados coletados do <a href="https://seeg.eco.br/" target="_blank" rel="noreferrer noopener">SEEG</a>. 
        O SEEG é um projeto multi-institucional envolvendo universidades, ONGs e empresas de tecnologia, que promove o mapeamento das emissões de gases de efeito estufa para todos os municípios brasileiros e disponibiliza os dados e mapas de forma aberta e gratuita. <br><br>
        Quer explorar mais? Acesse o nosso <a href="https://github.com/datazoompuc" target="_blank" rel="noreferrer noopener">Github</a>.
      </p>
     <br>
      <p style="background:#f0f0f0;border:1px solid #dbdbdb;border-radius:6px; padding:15px 15px 15px 30px; text-align: justify;">
        <strong>Atenção</strong>: Esta visualização é alimentada por dados tratados através do pacote 
        <code class = "code_viz">datazoom.amazonia</code> no <code class = "code_viz">R</code> (função <code class = "code_viz">load_seeg()</code>) e está sujeita a erro diante de 
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

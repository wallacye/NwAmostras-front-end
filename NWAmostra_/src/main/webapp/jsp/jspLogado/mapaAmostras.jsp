<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mapa de Amostras</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostras.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>
</head>
<body>
	<%@ include file="../../includes/menuLogado.jsp" %>
	
	<div class="containerTelaMapaDeAmsotras">
		<div class="containerNomeMapaDeAmostras">
			<label class="lblNomeMapaDeAmostras">Exemplo de nome do Mapa de Amostra</label>
		</div>
		
		<div class="containerDivsLocalizacaoMapaAmostra">
			<div class="containerLblLocalizaçãoMapaAmostras">
				<label class="palavrasAzul lblFreezerEstanteCaixa">Freezer -</label>
				<label class="lblLocallizacaoMapaAmostras">&nbsp; 1</label>
			</div>
			<div class="containerLblLocalizaçãoMapaAmostras">
				<label class="palavrasAzul lblFreezerEstanteCaixa">Estante -</label>
				<label class="lblLocallizacaoMapaAmostras">&nbsp; A</label>
			</div>
			<div class="containerLblLocalizaçãoMapaAmostras">
				<label class="palavrasAzul lblFreezerEstanteCaixa">Caixa -</label>
				<label class="lblLocallizacaoMapaAmostras">&nbsp; A10</label>
			</div>
		</div>
		
		<div class="divScrollMapaDeAmostras" >
		<table>
		<tr>
		<td class="divAmostraMapaDeAmostra">
		<button class="btnLegendaMapaAmostras" onclick="location.href=''">
		<img src="../../img/legendaMapaAmostrasAcabou.png" class="imgLegendaMapaAmostras"></button>
		<button class="btnVerCriarAmostra" onclick="location.href='amostra.jsp'"><br>
		15 uL <br> Amostra A<br> 09/06/21 </button></td>
		<td class="divAmostraMapaDeAmostra">
		<button class="btnLegendaMapaAmostras" onclick="location.href=''">
		<img src="../../img/legendaMapaAmostrasAcabou.png" class="imgLegendaMapaAmostras"></button>
		<button class="btnVerCriarAmostra" onclick="location.href='criarAmostra.jsp'"><br>
		15 uL <br> Amostra A<br> 09/06/21 </button></td>
		</tr>
		</table>
		</div>
		
		<div class="containerBtnsAlterarExcluirMapaAmostra">
			<button class="btnAlterarMapaAmostra" onclick="location.href=''">Alterar</button>
			<button class="btnExcluirMapaAmostra" onclick="location.href=''">Excluir</button>
		</div>
			
		<%@ include file="../../includes/rodape.jsp" %>
	</div>
</body>
</html>
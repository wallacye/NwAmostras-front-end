<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Histórico do Projeto</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>
</head>
<body>
	<%@ include file="../../includes/menuLogado.jsp" %>

	<div class="containerTelaAmostra">
	<div class="containerBtnExcluirHistorico">
			<div class="containerLblNomeAmostras">
				
				<div class="containerLblNomeLegendaAmostras">
				<div class=centralizarNomeAmostra>
					<label class="lblNomeAmostra">Projeto A</label>
				</div>
				</div>
				<div class="containerBtnExcluirHistorico">
					<button class="btnExcluirHistoricoAmostra" onclick="location.href='criarAmostra'">Excluir histórico</button>
				</div>
	</div>
	</div>
	</div>
<div class="linhaDadosAmostra"><br/>
		</div>
	<div class="containerTituloMapaAmostraData">
			<div class="containerLblMapaAmostrasTelaInicialMapaAmostras">
			<label class="lblMapaAmostrasTelaInicialMapaAmostras palavrasAzul">Histórico</label>
			</div>
			<div class="containerLblDataTelaInicialMapaAmostras">
			<label class="lblDataTelaInicialMapaAmostras palavrasAzul">Data</label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra"><br/>
		<table class="listaMapaAmostras">
    		<tr>
        		<td class="palavrasAzul tituloMapaAmostraLista">Josefina Bund Fin</td>
        		<td></td>
        		<td></td>
    		</tr>
    		<tr>
        		<td></td>
        		<td></td>
        		<td class="palavrasAzul dataMapaAmostrasLista">28/06/2021</td>
    		</tr>
    		<tr>
        		<td class="autorMapaAmostraLista">Visualizou</td>
        		<td></td>
        		<td></td>
    		</tr>
		</table>
		</div>
		
		<div class="linhaDadosAmostra"><br/>
		<table class="listaMapaAmostras">
    		<tr>
        		<td class="palavrasAzul tituloMapaAmostraLista">Lindolfo Britines</td>
        		<td></td>
        		<td></td>
    		</tr>
    		<tr>
        		<td></td>
        		<td></td>
        		<td class="palavrasAzul dataMapaAmostrasLista">26/06/2021</td>
    		</tr>
    		<tr>
        		<td class="autorMapaAmostraLista">Saiu do projeto</td>
        		<td></td>
        		<td></td>
    		</tr>
		</table>
		</div>
		
		<div class="linhaDadosAmostra"><br/>
		<table class="listaMapaAmostras">
    		<tr>
        		<td class="palavrasAzul tituloMapaAmostraLista">Ana Adriely Oliveira</td>
        		<td></td>
        		<td></td>
    		</tr>
    		<tr>
        		<td></td>
        		<td></td>
        		<td class="palavrasAzul dataMapaAmostrasLista">21/06/2021</td>
    		</tr>
    		<tr>
        		<td class="autorMapaAmostraLista">Adicionou nova coluna "Observação"</td>
        		<td></td>
        		<td></td>
    		</tr>
		</table>
		</div>
		
		<div class="linhaDadosAmostra"><br/>
		<table class="listaMapaAmostras">
    		<tr>
        		<td class="palavrasAzul tituloMapaAmostraLista">Ana Adriely Oliveira</td>
        		<td></td>
        		<td></td>
    		</tr>
    		<tr>
        		<td></td>
        		<td></td>
        		<td class="palavrasAzul dataMapaAmostrasLista">20/06/2021</td>
    		</tr>
    		<tr>
        		<td class="autorMapaAmostraLista">Adicionou Josefina Bund Fin ao projeto</td>
        		<td></td>
        		<td></td>
    		</tr>
		</table>
		</div>
		
		<div>
<%@ include file="../../includes/rodape.jsp" %>
	</div>
</body>
</html>
<%@ include file="../../includes/validacao.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Criar Mapa de Amostras</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>
</head>
<body>

	<%@ include file="../../includes/menuLogado.jsp" %>
	
	<div class="containerTelaCriarMapaAmostras">
		<div class="containerTituloTxtsBtnCriarMapaAmostra">
		
		<form method="post" action="/NWAmostra_/inserirMapaDeAmostra">
		
			<div class="containerTituloCriarMapaAmostra">
				<div class="containerLblTituloCriarMapaAmostra">
				<label class="lblTituloCriarMapaAmostras">Criar Mapa de Amostras</label>
				<div class="detalheTituloCriarMapaAmostras"></div>
				</div>
			</div>
			
			
			<div class="containerTxtsCriarMapaAmostrasCentralizar">
			<div class="containersTxtsCriarMapaAmostras">
				<div class="containersLblsDadosLocalizacaoCriarMapa">
					<label class="lblsDadosLocalizacaoCriarMapa palavrasAzul">Dados</label>
				</div>
				<div class="containerLblTxtCriarMapaAmostra">
					<label class="lblTxtCriarMapaAmostra palavrasAzul">Nome*</label><br>
					<input type="text" class="txtCriarMapaAmostras" placeholder="Digite o nome do mapa" id="txtNomeMapaDeAmostras" name="txtNomeMapaDeAmostras"/>
				</div>
				<div class="containerLblTxtCriarMapaAmostra">
					<label class="lblTxtCriarMapaAmostra palavrasAzul">N?mero de colunas*</label>
					<input type="number" class="txtCriarMapaAmostras" placeholder="Digite o n?mero de colunas do mapa" id="txtColunasMapaDeAmostras" name="txtColunasMapaDeAmostras"/>
				</div>
				<div class="containerLblTxtCriarMapaAmostra">
					<label class="lblTxtCriarMapaAmostra palavrasAzul">N?mero de linhas*</label>
					<input type="number" class="txtCriarMapaAmostras" placeholder="Digite o n?mero de linhas do mapa" id="txtLinhasMapaDeAmostras" name="txtLinhasMapaDeAmostras"/>
				</div>
			</div>
			
			<div class="containersTxtsCriarMapaAmostras">
				<div class="containersLblsDadosLocalizacaoCriarMapa">
					<label class="lblsDadosLocalizacaoCriarMapa palavrasAzul">Localiza??o</label>
				</div>
				<div class="containerLblTxtCriarMapaAmostra">
					<label class="lblTxtCriarMapaAmostra palavrasAzul">Freezer/ Congelador/ Refrigerador</label>
					<input type="text" class="txtCriarMapaAmostras" placeholder="Digite o nome aqui" id="txtFreezerMapaDeAmostras" name="txtFreezerMapaDeAmostras"/>
				</div>
				<div class="containerLblTxtCriarMapaAmostra">
					<label class="lblTxtCriarMapaAmostra palavrasAzul">Estante/ Prateleira/ Arm?rio</label>
					<input type="text" class="txtCriarMapaAmostras" placeholder="Digite o nome aqui" id="txtEstanteMapaDeAmostras" name="txtEstanteMapaDeAmostras"/>
				</div>
				<div class="containerLblTxtCriarMapaAmostra">
					<label class="lblTxtCriarMapaAmostra palavrasAzul">Caixa/ Pote/ Reservat?rio</label>
					<input type="text" class="txtCriarMapaAmostras" placeholder="Digite o nome aqui" id="txtCaixaMapaDeAmostras" name="txtCaixaMapaDeAmostras"/>
				</div>
			</div>
			
			<% 
				for(Instituicao ConteudoInstituicao : listaInstituicao){
			%>
			<input type="hidden" value="<%=ConteudoInstituicao.getId_lab() %>" name="txtMapaDeAmostrasIdLab">
			<%} %>
			
			<div class="containerLblCamposObrigatoriosMapaAmostras">
				<label style="color: #FF0000; font-size: 16px;">*Campos obrigat?rios</label>
			</div>
			
			<div class="containerBtnCriarMapaAmostras">
				<input class="btnCriarMapaAmostras" type="submit" value="Criar">
			</div>
			
			</div>
		</form>
		</div>
		<%@ include file="../../includes/rodape.jsp" %>   
		
	</div>
	
</body>
</html>
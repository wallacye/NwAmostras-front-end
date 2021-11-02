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
		<form method="post" action="" role="form">
		
			<div class="containerTituloCriarMapaAmostra">
				<div class="containerLblTituloCriarMapaAmostra">
				<label class="lblTituloCriarMapaAmostras">Editar Mapa de Amostras</label>
				<div class="detalheTituloEditarMapaAmostras"></div>
				</div>
			</div>
			
			
			<div class="containerTxtsCriarMapaAmostrasCentralizar">
			<div class="containersTxtsCriarMapaAmostras">
				<div class="containersLblsDadosLocalizacaoCriarMapa">
					<label class="lblsDadosLocalizacaoCriarMapa palavrasAzul">Dados</label>
				</div>
				<div class="containerLblTxtCriarMapaAmostra">
					<label class="lblTxtCriarMapaAmostra palavrasAzul">Nome*</label><br>
					<input type="text" class="txtCriarMapaAmostras" placeholder="Digite o nome do mapa" value="Exemplo de nome do Mapa de Amostra" id="txtNomeAlterarMapaDeAmostras" name="txtNomeMapaDeAmostras"/>
				</div>
				<div class="containerLblTxtCriarMapaAmostra">
					<label class="lblTxtCriarMapaAmostra palavrasAzul">Número de colunas*</label>
					<input type="text" class="txtCriarMapaAmostras" placeholder="Digite o número de colunas do mapa" value="10" id="txtColunasAlterarMapaDeAmostras" name="txtNumeroColunasMapaDeAmostras"/>
				</div>
				<div class="containerLblTxtCriarMapaAmostra">
					<label class="lblTxtCriarMapaAmostra palavrasAzul">Número de linhas*</label>
					<input type="text" class="txtCriarMapaAmostras" placeholder="Digite o número de linhas do mapa" value="4" id="txtLinhasAlterarMapaDeAmostras" name="txtLinhasMapaDeAmostras"/>
				</div>
			</div>
			
			<div class="containersTxtsCriarMapaAmostras">
				<div class="containersLblsDadosLocalizacaoCriarMapa">
					<label class="lblsDadosLocalizacaoCriarMapa palavrasAzul">Localização</label>
				</div>
				<div class="containerLblTxtCriarMapaAmostra">
					<label class="lblTxtCriarMapaAmostra palavrasAzul">Freezer/ Congelador/ Refrigerador</label>
					<input type="text" class="txtCriarMapaAmostras" placeholder="Digite o nome aqui" value="1" id="txtFreezerAlterarMapaDeAmostras" name="txtFreezerMapaDeAmostras"/>
				</div>
				<div class="containerLblTxtCriarMapaAmostra">
					<label class="lblTxtCriarMapaAmostra palavrasAzul">Estante/ Prateleira/ Armário</label>
					<input type="text" class="txtCriarMapaAmostras" placeholder="Digite o nome aqui" value="A" id="txtEstanteAlterarMapaDeAmostras" name="txtEstanteMapaDeAmostras"/>
				</div>
				<div class="containerLblTxtCriarMapaAmostra">
					<label class="lblTxtCriarMapaAmostra palavrasAzul">Caixa/ Pote/ Reservatório</label>
					<input type="text" class="txtCriarMapaAmostras" placeholder="Digite o nome aqui" value="A10" id="txtCaixaAlterarMapaDeAmostras" name="txtCaixaMapaDeAmostras"/>
				</div>
			</div>
			
			<div class="containerLblCamposObrigatoriosMapaAmostras">
				<label style="color: #FF0000; font-size: 16px;">*Campos obrigatórios</label>
			</div>
			
			<div class="containerBtnCriarMapaAmostras">
				<input class="btnCriarMapaAmostras" type="submit" value="Finalizar">
			</div>
			
			</div>
		</form>
		</div>
		<%@ include file="../../includes/rodape.jsp" %>   
		
	</div>
	
</body>
</html>
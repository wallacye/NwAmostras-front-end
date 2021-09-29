<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmar Altera��o de Email</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostras.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>
</head>
<body>

	<%@ include file="../../includes/menuLogado.jsp" %>

	<div class="containerTelaConfirmarEmailNovo">
		<div class="containerInfoTxtConfirmarEmailNovo">
			
			<div class="containerTituloConfirmarEmailNovo">
				<div style="width:100%;display: flex;justify-content: center;align-items: center; margin-top: 30px;">
				<label class="lblTituloConfirmarEmailNovo">CONFIRMA��O DE E-MAIL</label></div>
				<div style="width:100%;display: flex;justify-content: center;align-items: center; margin-top: 5px;">
				<div class="detalheLblTituloConfirmarEmailNovo"></div></div>
			</div>
			
			<div class="containerTextoExplicacaoEmailNovo">
				<label class="textoExplicacaoEmailNovo">
				Voc� receber� um e-mail em alguns instantes com o c�digo de verifica��o para confirmar sua altera��o
				</label>
			</div>
			
			<div class="containerLblTxtCodigoConfirmarEmailNovo">
				<label class="lblCodigoConfirmarEmailNovo palavrasAzul">C�digo</label>
				<input type="text" class="txtCodigoConfirmarEmailNovo" placeholder="Digite o c�digo "/>
			</div>
			
			<div class="containerBtnConfirmarEmailNovo">
				<button class="btnConfirmarEmailNovo" onclick="location.href=''">Confirmar</button>
			</div>
			
		</div>
	</div>

	<%@ include file="../../includes/rodape.jsp" %>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmar Alteração de Email</title>
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
				<label class="lblTituloConfirmarEmailNovo">CONFIRMAÇÃO DE E-MAIL</label></div>
				<div style="width:100%;display: flex;justify-content: center;align-items: center; margin-top: 5px;">
				<div class="detalheLblTituloConfirmarEmailNovo"></div></div>
			</div>
			
			<div class="containerTextoExplicacaoEmailNovo">
				<label class="textoExplicacaoEmailNovo">
				Você receberá um e-mail em alguns instantes com o código de verificação para confirmar sua alteração
				</label>
			</div>
			
			<div class="containerLblTxtCodigoConfirmarEmailNovo">
				<label class="lblCodigoConfirmarEmailNovo palavrasAzul">Código</label>
				<input type="text" class="txtCodigoConfirmarEmailNovo" placeholder="Digite o código "/>
			</div>
			
			<div class="containerBtnConfirmarEmailNovo">
				<button class="btnConfirmarEmailNovo" onclick="location.href=''">Confirmar</button>
			</div>
			
		</div>
	</div>

	<%@ include file="../../includes/rodape.jsp" %>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alterar Senha</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostras.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>
</head>
<body>

	<%@ include file="../../includes/menuLogado.jsp" %>
	
	<div class="containerTelaAlterarSenha">
	
		<div class="containerTxtsAlterarSenha">
		
			<div class="containerTituloAlterarSenha">
				<div style="width:100%;display: flex;justify-content: center;align-items: center; margin-top: 45px;">
				<label class="lblTituloAlterarSenha">ALTERAR SENHA</label></div>
				<div style="width:100%;display: flex;justify-content: center;align-items: center; margin-top: 5px;">
				<div class="detalheLblTituloAlterarSenha"></div></div>
			</div>
			
			<div class="containerLblsAlterarSenha">
			<label class="lblsAlterarSenha palavrasAzul">Senha atual</label>
			</div>
			<input type="password" class="txtsAlterarSenha" placeholder="Digite sua senha atual"/>
			
			<div class="containerLblsAlterarSenha">
			<label class="lblsAlterarSenha palavrasAzul">Nova senha</label>
			</div>
			<input type="password" class="txtsAlterarSenha" placeholder="Digite sua nova senha"/>
			
			<div class="containerLblsAlterarSenha">
			<label class="lblsAlterarSenha palavrasAzul">Confirmar nova senha</label>
			</div>
			<input type="password" class="txtsAlterarSenha" placeholder="Confirme sua nova senha"/>
			
			<div class="containerBtnConfirmarAlterarSenha">
				<button class="btnConfirmarAlterarSenha" onclick="location.href=''">Confirmar</button>
			</div>
			
		</div>
	</div>
	
	<%@ include file="../../includes/rodape.jsp" %>

</body>
</html>
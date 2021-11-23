<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Esqueceu sua Senha</title>
	<link rel="icon" type="img/png" href="../img/logoNwAmostrasClaro.png" />
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" type="text/css" href="../css/style.css" />
        <script type="text/javascript" src="../js/nwAmostrasScript.js" defer></script>

        <script type="text/javascript" src="../js/menuResponsivo.js" defer></script>
</head>
<body>
		<%@ include file="../includes/menu.jsp" %>
		
		<div class="containerTelaEsqueceuSenha">
		
			<div class="containerInfoTxtEsqueceuSenha">
				<div class="containerTituloEsqueceuSenha">
					<div style="width:100%;display: flex;justify-content: center;align-items: center; margin-top: 50px;">
						<label class="lblTituloEsqueceuSenha">ESQUECEU SUA SENHA?</label>
					</div>
					<div style="width:100%;display: flex;justify-content: center;align-items: center; margin-top: 5px;">
						<div class="detalheLblTituloEsqueceuSenha"></div>
					</div>
				</div>
				
				<div class="containerTextoExplicacaoEsqueceuSenha">
					<label class="textoExplicacaoEsqueceuSenha">Você receberá um e-mail com instruções para redefinir sua senha</label>
				</div>
				<div class="containerLblTxtEsqueceuSenha">
					<label class="lblEmailEsqueceuSenha palavrasAzul">Email</label>
					<input type="text" class="txtEmailEsqueceuSenha" placeholder="Digite seu e-mail">
				</div>
				<div class="containerBtnConfirmarEsqueceuSenha">
					<button class="btnConfirmarEsqueceuSenha" onclick="location.href=''">Confirmar</button>
				</div>
			</div>
		
		</div>
	
	<%@ include file="../includes/rodape.jsp" %>
	
</body>
</html>
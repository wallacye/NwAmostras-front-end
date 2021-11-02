<%@ include file="../../includes/validacao.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Início</title>

		<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<link rel="stylesheet" type="text/css" href="../../css/style.css" />
		<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

        <script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>

	</head>
	<body>
	
	<header>
            <nav>

                <button class="logo" onclick="location.href='indexLogado.jsp'">
                    <img src="../../img/logoNwAmostrasClaro.png" class="imgLogo" id="imgLogoClaro" alt="Logo da NW Amostras">
                    <img src="../../img/logoNwAmostrasEscuro.png" class="imgLogo" id="imgLogoEscuro" alt="Logo da NW Amostras">
                </button>

            </nav>
	</header>
	
	<div class="containerBtnsInicioLogado">
	<ul>
		<li><button class="btnInicioLogado" onclick="location.href='telaInicialProjetos.jsp'">Projetos</button></li>
		<li><button class="btnInicioLogado" onclick="location.href='telaInicialMapaAmostras.jsp'">Mapa de Amostras</button></li>
		<li><button class="btnInicioLogado" onclick="location.href='telaInicialAmostra.jsp'">Amostras</button></li>
		<li><button class="btnInicioLogado" onclick="location.href='perfil.jsp'">
			<img src="../../img/imgPerfilExemplo.png" class="" id="" alt="Perfil">
		</button></li>
		<li><button class="btnInicioLogado" id="btnModoClaroEscuro">
                        <img src="../../img/luaModoEscuro.png" class="imgBtnMenuTemaEscuroClaroInicioLogado" id="imgBtnMenuTemaEscuroLua" alt="Troca de temas">
                        <img src="../../img/solModoClaro.png" class="imgBtnMenuTemaEscuroClaroInicioLogado" id="imgBtnMenuTemaEscuroSol" alt="Troca de temas">
        </button></li>
	</ul>
	</div>
	
	</body>
</html>
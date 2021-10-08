<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tela Incial Amostra</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>

<script type="text/javascript">

	function abrirFiltrarAmostra(){
	
	if(document.getElementById('idContainerFiltroListaAmostra').style.display == 'block'){
		document.getElementById('idContainerFiltroListaAmostra').style.display = 'none';
	}else{
		document.getElementById('idContainerFiltroListaAmostra').style.display = 'block';
	}
	
	}
	
	function abrirFiltrarCategoriaAmostra(){
		
		if(document.getElementById('idContainerCategoriaFiltroListaAmostra').style.display == 'block'){
			document.getElementById('idContainerCategoriaFiltroListaAmostra').style.display = 'none';
		}else{
			document.getElementById('idContainerCategoriaFiltroListaAmostra').style.display = 'block';
		}
		
		}
	
</script>

</head>
<body>

	<%@ include file="../../includes/menuLogado.jsp" %>
	
	<div class="containerTelaIncialAmostra">
		<div class="containerBuscarAmostra">
			<div class="containerPessquisarFiltroAmostras">
			
			<button class="buttomPesquisarAmostra" onclick="location.href='#'">
                    <img src="../../img/lupa.png" class="imgLupa" alt="">
            </button>
			
			<input type="text" class="inputBuscarAmostras" placeholder="Buscar"/>
			
			<button class="buttonFiltrarAmostra" onclick="location.href='javascript: abrirFiltrarAmostra();'">
                    <img src="../../img/filtro.png" class="imgFiltro" alt="">
            </button>
            
            <div class="containerFiltroListaAmostra" id="idContainerFiltroListaAmostra">
            	<button class="btnsFiltrosListaAmostra palavrasAzul" onclick="location.href=''">Código (0 - 9)</button>
            	<button class="btnsFiltrosListaAmostra palavrasAzul" onclick="location.href=''">Nome (A - Z)</button>
            	<button class="btnsFiltrosListaAmostra palavrasAzul" onclick="location.href=''">Data de validade</button>
            	<button class="btnsFiltrosListaAmostra palavrasAzul" onclick="location.href=''">Acabou</button>
            	<button class="btnsFiltrosListaAmostra palavrasAzul" onclick="location.href=''">Vencida</button>
            	<button class="btnsFiltrosListaAmostra palavrasAzul" onclick="location.href=''">Fase de coleta</button>
            	<button class="btnsFiltrosListaAmostra palavrasAzul" onclick="location.href=''">Nome do mapa de amostra (A - Z)</button>
            	<button class="btnsFiltrosListaAmostra palavrasAzul" onclick="location.href='javascript: abrirFiltrarCategoriaAmostra();'">Categoria</button>
            	<div class="containerCategoriaFiltroListaAmostra" id="idContainerCategoriaFiltroListaAmostra">
            		<button class="btnsFiltrosCategoriaListaAmostra palavrasAzul" onclick="location.href=''">Bactéria</button>
            		<button class="btnsFiltrosCategoriaListaAmostra palavrasAzul" onclick="location.href=''">Fungo</button>
            		<button class="btnsFiltrosCategoriaListaAmostra palavrasAzul" onclick="location.href=''">Parasita</button>
            		<button class="btnsFiltrosCategoriaListaAmostra palavrasAzul" onclick="location.href=''">Príon</button>
            		<button class="btnsFiltrosCategoriaListaAmostra palavrasAzul" onclick="location.href=''">Vírus</button>
            	</div>
            </div>
			
			</div>
		</div>
		
		<div class="containerTituloAmostraData">
			<div class="containerLblAmostrasTelaInicialAmostras">
				<label class="lblAmostrasTelaInicialAmostras palavrasAzul">Amostras</label>
			</div>
			<div class="containerLblDataTelaInicialAmostras">
				<label class="lblDataTelaInicialAmostras palavrasAzul">Data de validade</label>
			</div>
		</div>
		
	</div>

</body>
</html>
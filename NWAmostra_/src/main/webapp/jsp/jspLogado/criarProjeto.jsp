<%@ include file="../../includes/validacao.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Criar Projeto</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
	
</head>
<body>
	<%@ include file="../../includes/menuLogado.jsp" %>
	
	<div class="containerTelaCriarProjeto">
    <div class="containerInfoCriarProjeto">
    	<div class="containerTituloCriarProjeto">
        <p class="txtCriarProjeto" >Criar Projeto</p> 
        </div>
    
    	<form>
    		<div class="containerEspaçosFormsCriarProjeto">
            	<div class="containerLblsCriarProjeto "><label class="lblsCriarProjeto palavrasAzul">Nome do projeto*</label></div>
                <input type="text" class="txtsCriarProjeto" placeholder="Digite o nome do projeto" id="txtNomeProjeto" name="txtNomeProjeto"/>
            </div>
            <div class="containerEspaçosFormsCriarProjeto">
            	<div class="containerLblsCriarProjeto "><label class="lblsCriarProjeto palavrasAzul">Visibilidade*</label></div>
                <input type="text" class="txtsCriarProjeto" placeholder="Seu projeto será visível para seu laboratório?" id="txtVisibilidadeProjeto" name="txtVisibilidadeProjeto"/>
                	<datalist class="listVisibilidade" id="listVisibilidade">
    					<option class="optionListVisibilidade palavrasAzul" value="1">Sim</option>
						<option class="optionListVisibilidade palavrasAzul" value="2">Não</option>
  					</datalist>
            </div>
            <div class="containerEspaçosFormsCriarProjeto">
            	<div class="containerLblsCriarProjeto "><label class="lblsCriarProjeto palavrasAzul">Adicionar pesquisador</label></div>
                <input type="text" class="txtsCriarProjeto" placeholder="Digite o nome do pesquisador" id="txtAdicionarpesquisadorProjeto" name="txtAdicionarpesquisadorProjeto"/>
            <datalist class="listVisibilidade" id="listVisibilidade">
    					<option class="optionListVisibilidade palavrasAzul" value="1"></option>
						<option class="optionListVisibilidade palavrasAzul" value="2"></option>
  					</datalist>
            </div>
            
            <p class="lblCamposObrigatorios" style="text-align: right; margin-top: 20px;">*Campos obrigatórios</p>
            
            <div class="containerBtnCriarProjeto">
            <input class="btnCriarProjeto" type="submit" value="Criar">
        </div>
    	</form>
    
	</div>
	</div>
		<%@ include file="../../includes/rodape.jsp" %>
</body>
</html>

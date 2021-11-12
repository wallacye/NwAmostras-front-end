<%@page import="model.Origem"  %>

<%@page import="crudAmostra.exibirOrigens" %>

<%@page import="java.util.ArrayList"%>

<%
    exibirOrigens dao = new exibirOrigens();
    ArrayList<Origem> lista = dao.listar();
%>

<%@ include file="../../includes/validacao.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Criar Amostra</title>
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
	
	<div class="containerTelaCriarAmostra">
    <div class="containerInfoCriarAmostra">
       <div class="containerTituloCriarAmostra">
        <p class="txtCriarAmostra" >Criar Amostra</p> 
       </div>
        
        <form>
        <div class="EspaÃ§osdoformsCriarAmostra">
        	
            <div class="containerTxtsCriarDadosOrigem">   
            
            <p class="txtDados" >Dados</p>
            
                <div class="containerEspaÃ§osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra "><label class="lblsCriarAmostra palavrasAzul">Código*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o cÃ³digo da amostra" id="txtCodigoAmostra" name="txtCodigoAmostra"/>
                </div>
                <div class="containerEspaÃ§osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Nome*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o nome da amostra" id="txtNomeAmostra" name="txtNomeAmostra"/>
                </div>
                <div class="containerEspaÃ§osFormsCriarAmostra">
                
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Categoria*</label></div>
                    <input type="text" class="txtsCriarAmostra" list="listCategoria" placeholder="Selecione a categoria da amostra" id="txtCategoriaAmostra" name="txtCategoriaAmostra"/>
                    <datalist class="listCatgoria" id="listCategoria">
    					<option class="optionListCatgoria palavrasAzul" value="1">Bactéria</option>
						<option class="optionListCatgoria palavrasAzul" value="2">Fungo</option>
						<option class="optionListCatgoria palavrasAzul" value="4">Parasita</option>
						<option class="optionListCatgoria palavrasAzul" value="3">Príon</option>
						<option class="optionListCatgoria palavrasAzul" value="5">Vírus</option>
						<option class="optionListCatgoria palavrasAzul" value="6">Humana</option>
						<option class="optionListCatgoria palavrasAzul" value="7">Ambiental</option>
						<option class="optionListCatgoria palavrasAzul" value="6">Animal</option>
  					</datalist>
                </div>
                
                <div class="containerEspaÃ§osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Tipo*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o tipo da amostra (ex: DNA, plasma...)" id="txtTipoAmostra" name="txtTipoAmostra"/>
                </div>
                <div class="containerEspaÃ§osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Volume (uL)*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o volume da amostra" id="txtVolumeAmostra" name="txtVolumeAmostra"/>
                </div>
                
            </div>
            
            <div class="containerTxtsCriarDadosOrigem">
            	
            	<p class="txtOrigem" >&nbsp;</p>
            	
            	<div class="containerEspaÃ§osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Data de Coleta*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite a data da coleta da amostra" id="txtDataColetaAmostra" name="txtDataColetaAmostra"/>
                </div>
                <div class="containerEspaÃ§osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Hora da Coleta*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite a hora da coleta da amostra" id="txtHoraColetaAmostra" name="txtHoraColetaAmostra"/>
                </div>
                <div class="containerEspaÃ§osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Coletador</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o nome do coletador e selecione" id="txtColetadorAmostra" name="txtColetadorAmostra"/>
                </div>
                <div class="containerEspaÃ§osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Data de Validade*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite a data de validade da amostra" id="txtDataValidadeAmostra" name="txtDataValidadeAmostra"/>
                </div>
            	
            	<div class="containerLblTxtAnotacoes">
             		<div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Anotações*</label></div>
             		<textarea class="txtsCriarAmostraAnotacao" placeholder="Digite as anotaÃ§Ãµes da amostra"/></textarea>
        		</div>
            	
            </div>
            
        </div>
        
        <div class="containerOrigemAmostra">
        	<p class="txtOrigem" >Origem</p>
        	<div class="containerEspaÃ§osFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Selecione a instituição</label></div>
                    <input type="text" class="txtInputOrigemAmostra" list="listOrigem" placeholder="Selecione a instituiÃ§Ã£o de origem" name="txtIdOrigem"/>
                    <datalist class="listOrigem" id="listOrigem">
			  		<%
			  		for(Origem conteudo : lista){
			  		%>
    					<option class="optionListOrigem palavrasAzul" value="<%= conteudo.getId_origem() %>"><%= conteudo.getNome_origem() %></option>
			  		<%
			  		}
			 		%>
  		    		</datalist>
                </div>
                    <a href="criarOrigem.jsp" class="linkCriarOrigem palavrasAzul">Não encontrou a instituição de origem? Crie aqui!</a>
            		<p class="lblCamposObrigatorios" style="text-align: right; margin-top: 20px;">*Campos obrigatórios</p>
            </div>
        </div>
        
        <div class="containerBtnCriarAmostra">
            <input class="btnCriarAmostra" type="submit" value="Criar">
        </div>
       
       </form>

       <!-- <div class="containerTituloCriarAmostra"> </div> Colocar isso qnd for fazer a outra parte do form-->
    </div>  
    </div>
	
	<%@ include file="../../includes/rodape.jsp" %>
	
</body>
</html>

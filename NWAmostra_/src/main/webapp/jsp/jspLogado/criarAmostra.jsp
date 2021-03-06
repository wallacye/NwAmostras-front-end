<%@page import="model.Origem"  %>

<%@page import="crudAmostra.exibirOrigens" %>

<%@page import="java.util.ArrayList"%>

<%
//Integer id_mapa_amostra = (Integer) request.getSession().getAttribute("id_mapa_amostra"); 
//Integer n_linha_amostra = (Integer) request.getSession().getAttribute("n_linha_amostra"); 
//Integer n_coluna_amostra = (Integer) request.getSession().getAttribute("n_coluna_amostra"); 

Integer id_mapa_amostra = Integer.parseInt(request.getParameter("id_mapa_amostra"));
Integer n_linha_amostra = Integer.parseInt(request.getParameter("n_linha_amostra"));
Integer n_coluna_amostra = Integer.parseInt(request.getParameter("n_coluna_amostra"));

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
        
        <form method="post" action="/NWAmostra_/inserirAmostra">
        <div class="EspaçosdoformsCriarAmostra">
        	
            <div class="containerTxtsCriarDadosOrigem">   
            
            <p class="txtDados" >Dados</p>
            
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra "><label class="lblsCriarAmostra palavrasAzul">Código*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o código da amostra" id="txtCodigoAmostra" name="txtCodigoAmostra"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Nome*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o nome da amostra" id="txtNomeAmostra" name="txtNomeAmostra"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra">
                
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Categoria*</label></div>
                    <input type="text" class="txtsCriarAmostra" list="listCategoria" placeholder="Selecione a categoria da amostra" id="txtCategoriaAmostra" name="txtCategoriaAmostra"/>
                    <datalist class="listCatgoria" id="listCategoria">
    					<option class="optionListCatgoria palavrasAzul" value="1">Bactéria</option>
						<option class="optionListCatgoria palavrasAzul" value="2">Fungo</option>
						<option class="optionListCatgoria palavrasAzul" value="4">Parasita</option>
						<option class="optionListCatgoria palavrasAzul" value="3">Príon</option>
						<option class="optionListCatgoria palavrasAzul" value="5">Vírus</option>
  					</datalist>
                </div>
                
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Tipo*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o tipo da amostra (ex: DNA, plasma...)" id="txtTipoAmostra" name="txtTipoAmostra"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Volume (uL)*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o volume da amostra" id="txtVolumeAmostra" name="txtVolumeAmostra"/>
                </div>
                
            </div>
            
            <div class="containerTxtsCriarDadosOrigem">
            	
            	<p class="txtOrigem" >&nbsp;</p>
            	
            	<div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Data de Coleta*</label></div>
                    <input type="date" class="txtsCriarAmostra" id="txtDataColetaAmostra" name="txtDataColetaAmostra"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Hora da Coleta</label></div>
                    <input type="time" class="txtsCriarAmostra" placeholder="Digite a hora da coleta da amostra" id="txtHoraColetaAmostra" name="txtHoraColetaAmostra"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Coletador</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o nome do coletador e selecione" id="txtColetadorAmostra" name="txtColetadorAmostra"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Data de Validade*</label></div>
                    <input type="date" class="txtsCriarAmostra" id="txtDataValidadeAmostra" name="txtDataValidadeAmostra"/>
                </div>
            	
            	<div class="containerLblTxtAnotacoes">
             		<div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Anotações</label></div>
             		<textarea class="txtsCriarAmostraAnotacao" name="txtAnotacoesAmostra" id="txtAnotacoesAmostra" placeholder="Digite as anotações da amostra"/></textarea>
        		</div>
            	
            </div>
            
        </div>
        
        <div class="containerOrigemAmostra">
        	<p class="txtOrigem" >Origem</p>
        	<div class="containerEspaçosFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Selecione a instituição*</label></div>
                    <input type="text" class="txtInputOrigemAmostra" list="listOrigem" placeholder="Selecione a instituição de origem" name="txtIdOrigem"/>
                    <datalist class="listOrigem" id="listOrigem">
			  		<%
			  		for(Origem ConteudoOrigem : lista){
			  		%>
    					<option class="optionListOrigem palavrasAzul" value="<%= ConteudoOrigem.getId_origem() %>"><%= ConteudoOrigem.getNome_origem() %></option>
			  		<%
			  		}
			 		%>
  		    		</datalist>
                    <a href="criarOrigem.jsp" class="linkCriarOrigem palavrasAzul">Não encontrou a instituição de origem? Crie aqui!</a>
            		<p class="lblCamposObrigatorios" style="text-align: right; margin-top: 20px;">*Campos obrigatórios</p>
            </div>
        </div>
        <% 
		for(Instituicao ConteudoInstituicao : listaInstituicao){
		%>
			<input type="hidden" value="<%=ConteudoInstituicao.getId_lab() %>" name="txtAmostraIdLab">
		<%} %>
 		<input type="hidden" id="inputMapaDeAmostras" name="inputMapaDeAmostras" value="<%= id_mapa_amostra %>">
 		<input type="hidden" id="inputColunaAmostra" name="inputColunaAmostra" value="<%= n_coluna_amostra %>">
 		<input type="hidden" id="inputLinhaAmostra" name="inputLinhaAmostra" value="<%= n_linha_amostra %>">
 		
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

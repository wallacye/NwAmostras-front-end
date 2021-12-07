<%@ include file="../../includes/validacao.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="model.Pesquisador"  %>

<%@page import="crudPesquisador.exibirPesquisadores" %>

<%@page import="java.util.ArrayList"%>

<%  
exibirPesquisadores dao = new exibirPesquisadores();

ArrayList<Pesquisador> lista = dao.listar();

//String id = (String) request.getSession().getAttribute("id"); 
%>
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
    
    	<form method="post" action="/NWAmostra_/inserirProjeto">
    		<div class="containerEspaçosFormsCriarProjeto">
            	<div class="containerLblsCriarProjeto "><label class="lblsCriarProjeto palavrasAzul">Nome do projeto*</label></div>
                <input type="text" class="txtsCriarProjeto" placeholder="Digite o nome do projeto" id="txtNomeProjeto" name="txtNomeProjeto"/>
            </div>
            <div class="containerEspaçosFormsCriarProjeto">
            	<div class="containerLblsCriarProjeto "><label class="lblsCriarProjeto palavrasAzul">Visibilidade*</label></div>
                <input type="text" class="txtsCriarProjeto" list="listVisibilidade" placeholder="Seu projeto será visível para seu laboratório?" id="txtVisibilidadeProjeto" name="txtVisibilidadeProjeto"/>
                	<datalist class="listVisibilidade" id="listVisibilidade">
    					<option class="optionListVisibilidade palavrasAzul" value="1">Sim</option>
						<option class="optionListVisibilidade palavrasAzul" value="2">Não</option>
  					</datalist>
            </div>
            <div class="containerEspaçosFormsCriarProjeto">
            	<div class="containerLblsCriarProjeto "><label class="lblsCriarProjeto palavrasAzul">Adicionar pesquisador</label></div>
                <input type="email" class="txtsCriarProjeto" list="listPesquisadores" placeholder="Digite os pesquisadores, separados por vírgula" id="txtAdicionarpesquisadorProjeto" name="txtAdicionarpesquisadorProjeto" multiple/>
            	<datalist class="listPesquisadores" id="listPesquisadores">
			  		<%
			  		for(Pesquisador conteudo : lista){
			  		%>
    					<option class="optionListOrigem palavrasAzul" value="<%= conteudo.getEmail_pesq() %>"><%= conteudo.getNome_pesq()%>, CPF: <%= conteudo.getCpf_pesq()%></option>
			  		<%
			  		}
			 		%>
  				</datalist>
            </div>
            <%
            for(Instituicao ConteudoInstituicao : listaInstituicao){
			%>
			<input type="hidden" value="<%=ConteudoInstituicao.getId_lab() %>" name="txtProjetoIdLab">
			<%} %>
            <input type="hidden" value="<%= id %>" id="inputPesquisadorChefe" name="inputPesquisadorChefe">
            
            <p class="lblCamposObrigatorios" style="text-align: right; margin-top: 20px; margin-right:7.5%;">*Campos obrigatórios</p>
            
            <div class="containerBtnCriarProjeto">
            <input class="btnCriarProjeto" type="submit" value="Criar">
        </div>
    	</form>
    
	</div>
	</div>
		<%@ include file="../../includes/rodape.jsp" %>
</body>
</html>

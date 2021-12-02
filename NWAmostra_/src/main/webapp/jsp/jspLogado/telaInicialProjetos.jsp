<%@ include file="../../includes/validacao.jsp" %>
<%@page import="model.Projeto" %>
<%@page import="java.util.ArrayList" %>
<%@page import="crudProjeto.exibirProjetos" %>

<%
	exibirProjetos dao = new exibirProjetos();
    ArrayList<Projeto> lista = dao.listar();
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tela Inicial Projetos</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>

<script type="text/javascript">

	function abrirFiltrarProjeto(){
	
	if(document.getElementById('idContainerFiltroListaProjeto').style.display == 'block'){
		document.getElementById('idContainerFiltroListaProjeto').style.display = 'none';
	}else{
		document.getElementById('idContainerFiltroListaProjeto').style.display = 'block';
	}
	
	}
	
</script>

</head>
<body>
	
	<%@ include file="../../includes/menuLogado.jsp" %>
	
	<div class="containerTelaInicialProjetos">
	
		<div class="containerBtnNovoBuscarProjetos">
			<div class="containerBtnNovoProjeto">
			<button class="btnNovoProjeto" onclick="location.href='criarProjeto.jsp'">Novo +</button>
			</div>
			<div class="containerBuscarProjeto">
				<div class="containerPessquisarFiltroProjeto">
				
				<button class="buttonPesquisarProjeto" onclick="location.href='#'">
                    <img src="../../img/lupa.png" class="imgLupa" alt="">
                </button>
                
                <input type="text" class="inputBuscarProjeto" placeholder="Buscar"/>
                
                <button class="buttonFiltrarProjeto" onclick="location.href='javascript: abrirFiltrarProjeto();'">
                    <img src="../../img/filtro.png" class="imgFiltro" alt="">
                </button>
                
                <div class="containerFiltroListaProjeto" id="idContainerFiltroListaProjeto">
                
                	<button class="btnsFiltrosListaProjeto palavrasAzul" onclick="location.href=''">Mais recente</button>
                	<button class="btnsFiltrosListaProjeto palavrasAzul" onclick="location.href=''">Mais antigo</button>
                	<button class="btnsFiltrosListaProjeto palavrasAzul" onclick="location.href=''">Nome (A - Z)</button>
                	<button class="btnsFiltrosListaProjeto palavrasAzul" onclick="location.href=''">Criador (A - Z)</button>
                	<button class="btnsFiltrosListaProjeto palavrasAzul" onclick="location.href=''">Privado</button>
                	<button class="btnsFiltrosListaProjeto palavrasAzul" onclick="location.href=''">Público</button>
                		
                
                </div>
                
				</div>
			</div>
		</div>
		
		<div class="containerTituloProjetosData">
			<div class="containerLblMapaAmostrasTelaInicialMapaAmostras">
			<label class="lblMapaAmostrasTelaInicialMapaAmostras palavrasAzul">Projeto</label>
			</div>
			<div class="containerLblDataTelaInicialMapaAmostras">
			<label class="lblDataTelaInicialMapaAmostras palavrasAzul">Data</label>
			</div>
		</div>
		
		<% if(lista.size() >= 1){ %>
		<% for(Projeto conteudo : lista) {%>		
		<button class="btnListaMapaAmostras" onclick="location.href='projeto.jsp?id_projeto=<%= conteudo.getId_projeto() %>'">
		<table class="listaMapaAmostras">
    		<tr>
        		<td class="palavrasAzul tituloMapaAmostraLista"><%= conteudo.getNome_projeto() %></td>
        		<td></td>
        		<td></td>
    		</tr>
    		<tr>
        		<td></td>
        		<td></td>
        		<td class="palavrasAzul dataMapaAmostrasLista"><%= conteudo.getDt_inicio_projeto() %></td>
    		</tr>
    		<tr>
        		<td class="autorMapaAmostraLista">Criador (a): <%= conteudo.getPesquisador_chefe() %></td>
        		<td></td>
        		<td></td>
    		</tr>
		</table>
		</button>
		<%
                 								}
								}
        %>        
        <%@ include file="../../includes/rodape.jsp" %>
           
	</div>
	
</body>
</html>
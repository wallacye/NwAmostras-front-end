<%@ include file="../../includes/validacao.jsp" %>
<%@page import="model.MapaDeAmostras" %>
<%@page import="crudMapaDeAmostras.exibirMapaDeAmostras" %>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tela Inicial Mapa de Amostras</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>

<script type="text/javascript">

	function abrirFiltrarMapaAmostra(){
	
	if(document.getElementById('idContainerFiltroListaMapaDeAmostra').style.display == 'block'){
		document.getElementById('idContainerFiltroListaMapaDeAmostra').style.display = 'none';
	}else{
		document.getElementById('idContainerFiltroListaMapaDeAmostra').style.display = 'block';
	}
	
	}
	
</script>

</head>
<body>
	
	<%@ include file="../../includes/menuLogado.jsp" %>
	
	<%
	for(Instituicao ConteudoInstituicao : listaInstituicao){
		Integer id_lab = ConteudoInstituicao.getId_lab();
		Integer filtro = Integer.parseInt(request.getParameter("filtro")) ;
		
		exibirMapaDeAmostras daoExibirMapaDeAmostras = new exibirMapaDeAmostras();
	    ArrayList<MapaDeAmostras> lista = daoExibirMapaDeAmostras.listar(filtro, id_lab);
	
		
	%>
	
	<div class="containerTelaInicialMapaAmostras">
		<div class="containerBtnNovoBuscarMapaAmostras">
			<div class="containerBtnNovoMapaAmostras">
			<button class="btnNovoMapaAmostras" onclick="location.href='criarMapaAmostras.jsp'">Novo +</button>
			</div>
			<div class="containerBuscarMapaAmostras">
				<div class="containerPessquisarFiltroMapaAmostras">
				
				<form method="post" action="/NWAmostra_/pesquisarMapaDeAmostras" style="height: 100%;width: 90%;float: left;">
				<button class="buttonPesquisarMapaAmostra" type="submit">
                    <img src="../../img/lupa.png" class="imgLupa" alt="">
                </button>
                
                <input type="text" class="inputBuscarMapaAmostras" placeholder="Buscar" id="inputBuscarMapaAmostras" name="inputBuscarMapaAmostras" list="listaAmostras"/>
        		<datalist class="listaAmostras" id="listaAmostras">
					<% if(lista.size() >= 1){ %>
					<% for(MapaDeAmostras conteudo : lista) {%>
					<option value="<%= conteudo.getId_mapa_amostra() %>">
        				<%= conteudo.getNome_mapa_amostra() %> - Freezer: <%= conteudo.getFreezer_mapa_amostra() %> Estante: <%= conteudo.getEstante_mapa_amostra() %> Caixa: <%= conteudo.getCaixa_mapa_amostra() %>
					</option>
					<%
                 								}
								}
        			%>
				</datalist>
				</form>
				
                <button class="buttonFiltrarMapaAmostra" onclick="location.href='javascript: abrirFiltrarMapaAmostra();'">
                    <img src="../../img/filtro.png" class="imgFiltro" alt="">
                </button>
                
                <div class="containerFiltroListaMapaDeAmostra" id="idContainerFiltroListaMapaDeAmostra">
                
                	<button class="btnsFiltrosListaMapaAmostra palavrasAzul" onclick="location.href='telaInicialMapaAmostras.jsp?filtro=1'">Mais recente</button>
                	<button class="btnsFiltrosListaMapaAmostra palavrasAzul" onclick="location.href='telaInicialMapaAmostras.jsp?filtro=2'">Mais antigo</button>
                	<button class="btnsFiltrosListaMapaAmostra palavrasAzul" onclick="location.href='telaInicialMapaAmostras.jsp?filtro=3'">Nome (A - Z)</button>
                		
                </div>
                
				</div>
			</div>
		</div>
		
		<div class="containerTituloMapaAmostraData">
			<div class="containerLblMapaAmostrasTelaInicialMapaAmostras">
			<label class="lblMapaAmostrasTelaInicialMapaAmostras palavrasAzul">Mapa de Amostras</label>
			</div>
			<div class="containerLblDataTelaInicialMapaAmostras">
			<label class="lblDataTelaInicialMapaAmostras palavrasAzul">Data</label>
			</div>
		</div>
		
		<% if(lista.size() >= 1){ %>
		<% for(MapaDeAmostras conteudo : lista) {%>		
		<button class="btnListaMapaAmostras" onclick="location.href='mapaAmostras.jsp?id_mapa_amostra=<%= conteudo.getId_mapa_amostra() %>'">
		<table class="listaMapaAmostras">
    		<tr>
        		<td class="palavrasAzul tituloMapaAmostraLista"><%= conteudo.getNome_mapa_amostra() %></td>
        		<td></td>
        		<td></td>
    		</tr>
    		<tr>
        		<td></td>
        		<td></td>
        		<td class="palavrasAzul dataMapaAmostrasLista"><%= conteudo.getData_mapa_amostra_formatada() %></td>
    		</tr>
    		<tr>
        		<td class="autorMapaAmostraLista"> Freezer: <%= conteudo.getFreezer_mapa_amostra() %> Estante: <%= conteudo.getEstante_mapa_amostra() %> Caixa: <%= conteudo.getCaixa_mapa_amostra() %></td>
        		<td></td>
        		<td></td>
    		</tr>
		</table>
		</button>
		<%
                 								}
								}}
        %>           
        <%@ include file="../../includes/rodape.jsp" %>       
		</div>	
</body>
</html>
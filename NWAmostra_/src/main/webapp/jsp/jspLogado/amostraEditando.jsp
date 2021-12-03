<%@ include file="../../includes/validacao.jsp" %>

<%@page import="model.AmostraNoMapa"  %>
<%@page import="crudAmostra.exibirAmostra" %>
<%@page import="java.util.ArrayList"%>
<%@page import="model.MapaDeAmostras" %>
<%@page import="crudMapaDeAmostras.exibirListaMapaAmostra" %>

<%@page import="model.Origem"  %>
<%@page import="crudAmostra.exibirOrigens" %>

<%
	Integer id_amostra_mapa = Integer.parseInt(request.getParameter("id_amostra_mapa"));

	exibirAmostra dao = new exibirAmostra();
	ArrayList<AmostraNoMapa> lista = dao.listar(id_amostra_mapa);
	
	exibirOrigens daoOrigens = new exibirOrigens();   
	ArrayList<Origem> listaOrigens = daoOrigens.listar();
	
	exibirListaMapaAmostra daoListarMapaAmostras = new exibirListaMapaAmostra();   
	ArrayList<MapaDeAmostras> listarMapaAmostras = daoListarMapaAmostras.listar();
 %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Amostra</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>
</head>
<body>
	<%@ include file="../../includes/menuLogado.jsp" %>

	<% 
	for(AmostraNoMapa conteudo : lista) 
	{%>		

	<div class="containerTelaEditarAmostra">
		<div class="containerNomeAmostra">
			<div class="containerLblNomeAmostrasTelaEditarAmostra">
				
				<div class="containerLblNomeLegendaAmostrasTelaEditarAmostra">
				<div class=centralizarNomeAmostraTelaEditarAmostra>
					<label class="lblNomeAmostraTelaEditarAmostra"><%= conteudo.getCodigo_amostra() %> - <%= conteudo.getNome_amostra() %></label>
					<label class="lblEditando"> (editando)</label>
					<button class="btnLegendaAmostrasTelaEditarAmostra" onclick="location.href=''">
					<img src="../../img/legendaMapaAmostrasAcabou.png" class="imgLegendaMapaAmostras"></button>
				</div>
				</div>
				
			</div>
		</div>
		<div class="containerLblDadosAmostraTelaEditarAmostra">
			<label class="lblDadosAmostraTelaEditarAmostra palavrasAzul">Dados</label>
		</div>
		<form method="post" action="/NWAmostra_/editarAmostra">
		<div class="containerLblsDadoInfoAmostraTelaEditarAmostra">
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Código</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
			<input type="text" class="lblsInfoAmostraTelaEditarAmostra" name="txtEditarAmostraCodigo" value="<%= conteudo.getCodigo_amostra() %>"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Nome</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra"  name="txtEditarAmostraNome" value="<%= conteudo.getNome_amostra() %>"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Categoria</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" list="listCategoria" name="txtEditarAmostraCategoria" value="<%= conteudo.getId_categoria() %>"/>
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
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Tipo</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra"  name="txtEditarAmostraTipo" value="<%= conteudo.getTipo_amostra() %>"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Volume</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra"  name="txtEditarAmostraVolume" value="<%= conteudo.getVolume_amostra() %>"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Data de coleta</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="date" class="lblsInfoAmostraTelaEditarAmostra"  name="txtEditarAmostraDataColeta" value="<%= conteudo.getDt_coleta_amostra() %>"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Hora da coleta</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="time" class="lblsInfoAmostraTelaEditarAmostra"  name="txtEditarAmostraHoraColeta" value="<%= conteudo.getHora_coleta_amostra() %>"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Coletador</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra"  name="txtEditarAmostraColetador" value="<%= conteudo.getColetador_amostra() %>"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Data de Validade</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="date" class="lblsInfoAmostraTelaEditarAmostra"  name="txtEditarAmostraDataValidade" value="<%= conteudo.getValidade_amostra() %>"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Anotações</label>
			</div>
			 <div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra"  name="txtEditarAmostraAnotacoes" value="<%= conteudo.getAnotacoes_amostra() %>"/>
			</div> 
		</div>
		
		<div class="containerLblDadosAmostraTelaEditarAmostra">
			<label class="lblDadosAmostraTelaEditarAmostra palavrasAzul">Origem</label>
		</div>
		
		<div class="containerLblsDadoInfoAmostraTelaEditarAmostra">
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Nome da Instituição</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" list="listOrigem" name="txtEditarAmostraNomeOrigem" value="<%= conteudo.getId_origem() %>"/>
				<datalist class="listOrigem" id="listOrigem">
			  		<%
			  		for(Origem ConteudoOrigem : listaOrigens){
			  		%>
    					<option class="optionListOrigem palavrasAzul" value="<%= ConteudoOrigem.getId_origem() %>"><%= ConteudoOrigem.getNome_origem() %></option>
			  		<%
			  		}
			 		%>
  		    	</datalist>
			</div>
		</div>
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Criar Origem</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				
				<a href="criarOrigem.jsp" class="lblsInfoAmostraTelaEditarAmostraLinkOrigem palavrasAzul">Não encontrou a instituição de origem? Crie aqui!</a>
			</div>
		</div>
		
		</div>
		
		<div class="containerLblDadosAmostraTelaEditarAmostra">
			<label class="lblDadosAmostraTelaEditarAmostra palavrasAzul">Localização</label>
		</div>
		
		<div class="containerLblsDadoInfoAmostraTelaEditarAmostra">
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Mapa de amostras</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<%
			  		for(MapaDeAmostras ConteudoListaMapaAmostras : listarMapaAmostras){
			  	%>
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" list="listMapaAmostras" value="<%= ConteudoListaMapaAmostras.getId_mapa_amostra() %>" name="txtEditarAmostraNomeMapaAmostras"/>
				<datalist class="listOrigem" id="listMapaAmostras">
			  		
    					<option class="optionListOrigem palavrasAzul" value="<%= ConteudoListaMapaAmostras.getId_mapa_amostra() %>"><%= ConteudoListaMapaAmostras.getNome_mapa_amostra() %></option>
			  		<%
			  		}
			 		%>
  		    	</datalist>
			</div>
		</div>
		
		</div>
		
		<div class="containerLblDadosAmostraTelaEditarAmostra">
			<label class="lblDadosAmostraTelaEditarAmostra palavrasAzul">Posição</label>
		</div>
		
		<div class="containerLblsDadoInfoAmostraTelaEditarAmostra">
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Linha</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra"  name="txtEditarAmostraLinha" value="<%= conteudo.getN_linha_amostra() %>"/>
			</div>
		</div>
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Coluna</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra"  name="txtEditarAmostraColuna" value="<%= conteudo.getN_coluna_amostra() %>"/>
			</div>
		</div>
		
		<input type="hidden" name="txtIdAmostra" value="<%= conteudo.getId_amostra() %>">
		
		</div>
		</div>
		
		<div class="containerBtnsFinalizarExcluirAmostra">
		<button class="btnFinalizarAmostra" onclick="location.href=''">Finalizar!</button>
		<button class="btnEcluirAmostra2" onclick="location.href=''">Cancelar</button>
		</div>
		</form>
		
		<% 
		} %>
		<%@ include file="../../includes/rodape.jsp" %>
	</div>
</body>
</html>
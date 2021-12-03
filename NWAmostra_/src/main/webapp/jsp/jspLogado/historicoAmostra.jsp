<%@ include file="../../includes/validacao.jsp" %>

<%@page import="model.HistoricoAmostra" %>
<%@page import="java.util.ArrayList" %>
<%@page import="crudAmostra.exibirHistoricoAmostra" %>

<%@page import="model.AmostraNoMapa"  %>
<%@page import="crudAmostra.exibirAmostra" %>

<%
	Integer id_amostra = Integer.parseInt(request.getParameter("id_amostra")) ;

	exibirHistoricoAmostra dao = new exibirHistoricoAmostra();
    ArrayList<HistoricoAmostra> lista = dao.listar(id_amostra);
    
    Integer id_amostra_mapa = Integer.parseInt(request.getParameter("id_amostra_mapa")); 
       
    exibirAmostra daoExibirAmostraHistorico = new exibirAmostra();
    ArrayList<AmostraNoMapa> listaExibirAmostraHistorico = daoExibirAmostraHistorico.listar(id_amostra_mapa);
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Histórico da Amostra</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>
</head>
<body>
	<%@ include file="../../includes/menuLogado.jsp" %>

	<div class="containerTelaAmostra">
	<div class="containerBtnExcluirHistorico">
			<div class="containerLblNomeAmostras">
				
				<div class="containerLblNomeHistoricoAmostra">
				<% for(AmostraNoMapa conteudo : listaExibirAmostraHistorico){%>
				<div class=centralizarNomeAmostra>
					<label class="lblNomeAmostra"><%= conteudo.getNome_amostra() %></label>
				</div>
				</div>
				<div class="containerBtnExcluirHistorico">
				
					<button class="btnExcluirHistoricoAmostra" onclick="location.href='/NWAmostra_/excluirHistoricoAmostra?id_amostra=<%= conteudo.getId_amostra() %>&id_amostra_mapa=<%= conteudo.getId_amostra_mapa() %>'">Excluir histórico</button>
				<%} %>
				</div>
	</div>
	</div>
	</div>
<div class="linhaDadosAmostra"><br/>
		</div>
	<div class="containerTituloHistoricoAmostraData">
			<div class="containerLblMapaAmostrasTelaInicialMapaAmostras">
			<label class="lblMapaAmostrasTelaInicialMapaAmostras palavrasAzul">Histórico</label>
			</div>
			<div class="containerLblDataTelaInicialMapaAmostras">
			<label class="lblDataTelaInicialMapaAmostras palavrasAzul">Data</label>
			</div>
		</div>
		<% if(lista.size() >= 1){ %>
		<% for(HistoricoAmostra conteudo : lista) {%>		
		<div class="linhaDadosAmostra"><br/>
		<table class="listaHistoricoAmostras">
    		<tr>
        		<td class="palavrasAzul tituloHistoricoAmostraLista"><%= conteudo.getNome_pesq() %></td>
        		<td></td>
        		<td></td>
    		</tr>
    		<tr>
        		<td></td>
        		<td></td>
        		<td class="palavrasAzul dataHistoricoAmostrasLista"><%= conteudo.getDt_hist_amostra_formatada() %></td>
    		</tr>
    		<tr>
        		<td class="HistoricoAmostraLista"><%= conteudo.getAdicionou_retirou() %> <%= conteudo.getQuant_hist_amostra() %>uL</td>
        		<td></td>
        		<td></td>
    		</tr>
		</table>
		</div>
		
		
		<div>
		<%
                 								}
								}
        %>           
<%@ include file="../../includes/rodape.jsp" %>
	</div>
</body>
</html>
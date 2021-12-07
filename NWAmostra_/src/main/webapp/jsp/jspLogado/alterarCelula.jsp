<%@ include file="../../includes/validacao.jsp" %>
<%@page import="model.AmostraNoMapa" %>
<%@page import="java.util.ArrayList" %>
<%@page import="crudAmostra.exibirAmostras" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alterar Celula</title>

<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>

</head>
<body>
	<%@ include file="../../includes/menuLogado.jsp" %>
	
	<% for(Instituicao ConteudoInstituicao : listaInstituicao){
		
	Integer id_lab = ConteudoInstituicao.getId_lab();
	Integer linha = Integer.parseInt(request.getParameter("linha"));
	Integer coluna = Integer.parseInt(request.getParameter("coluna"));
	Integer projeto = Integer.parseInt(request.getParameter("projeto"));
	Integer filtro = 1;
	exibirAmostras dao = new exibirAmostras();
	ArrayList<AmostraNoMapa> lista = dao.listar(filtro, id_lab);
	%>
	
	<div class="popUpAlterarLinha" id="popUpAlterarLinha">	
				<div class="containerFormAlterarLinha">
				
					<form action="/NWAmostra_/inserirCampo" method="post">
					<div style="width:90%; margin:30px 5% 0 5%;">
						<label class="lblEditarCelular" >Editar célula</label><br>
						<label class="lblExplicacaoEditarCelula" >Digite o novo conteúdo da célula: </label>
						
						<input type="text" class="txtEditarCelula" placeholder="Digite o conteúdo" id="idTxtEditarCelula" 
						<%  
						if(coluna == 1){
						%>
						list="listaAmostras"
						<% 
						}
						%>
						 name="idTxtEditarCelula">
					    
        				<datalist class="listaAmostras" id="listaAmostras">
							<% 
							if(lista.size() >= 1)
							{ 
							%>
							<% 
								for(AmostraNoMapa conteudo : lista) 
								{
							%>
									<option value="<%= conteudo.getId_amostra() %>">
        								<%= conteudo.getCodigo_amostra() %> - <%= conteudo.getNome_amostra() %>
									</option>
							<%                 													
								}													
							}
        					%>
						</datalist>
						
						<input type="hidden" id="inputLinha" name="inputLinha" value="<%= linha %>">
						<input type="hidden" id="inputColuna" name="inputColuna" value="<%= coluna %>">
						
						<input type="hidden" id="inputProjeto" name="inputProjeto" value="<%= projeto %>">						
					</div>
					<div class="containerBtnsConfCanEditarCelula">
						<input type="submit" value="Confirmar" class="inputConfirmarAlterarCelula">
					</div>
					</form>
					<%} %>
					<div class="containerBtnsConfCanEditarCelula">
							<button  class="btnCancelarEditarCelula" onclick="location.href='javascript: fecharPopUpAlterarCelula();'">Cancelar</button>
					</div>
				</div>
		</div>
		<%@ include file="../../includes/rodape.jsp" %>
</body>
</html>
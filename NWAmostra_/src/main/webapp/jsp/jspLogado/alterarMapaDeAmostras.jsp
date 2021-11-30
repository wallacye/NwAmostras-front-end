<%@ include file="../../includes/validacao.jsp" %>

<%@page import="java.util.ArrayList"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>

<%@page import="model.AmostraNoMapa"  %>
<%@page import="model.MapaDeAmostras"  %>

<%@page import="crudMapaDeAmostras.exibirMapaAmostrasEspecifico" %>
<%@page import="crudMapaDeAmostras.exibirMapaDeAmostras" %>

<%
    Integer id_mapa_amostra = Integer.parseInt(request.getParameter("id_mapa_amostra")) ;
    
	exibirMapaAmostrasEspecifico dao = new exibirMapaAmostrasEspecifico();
    ArrayList<AmostraNoMapa> lista = dao.listar(id_mapa_amostra);
    
    ArrayList<MapaDeAmostras> listaMapa = dao.listarMapa(id_mapa_amostra);
 %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Criar Mapa de Amostras</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>
</head>
<body>

	<%@ include file="../../includes/menuLogado.jsp" %>
	
	<div class="containerTelaCriarMapaAmostras">
	<% for(MapaDeAmostras ConteudoMapa : listaMapa) 
	{
	%>	
		<div class="containerTituloTxtsBtnCriarMapaAmostra">
		<form method="post" action="/NWAmostra_/alterarMapaDeAmostras" role="form">
		
			<div class="containerTituloCriarMapaAmostra">
				<div class="containerLblTituloCriarMapaAmostra">
				<label class="lblTituloCriarMapaAmostras">Editar Mapa de Amostras</label>
				<div class="detalheTituloEditarMapaAmostras"></div>
				</div>
			</div>
			
			
			<div class="containerTxtsCriarMapaAmostrasCentralizar">
			<div class="containersTxtsCriarMapaAmostras">
				<div class="containersLblsDadosLocalizacaoCriarMapa">
					<label class="lblsDadosLocalizacaoCriarMapa palavrasAzul">Dados</label>
				</div>
				<div class="containerLblTxtCriarMapaAmostra">
					<label class="lblTxtCriarMapaAmostra palavrasAzul">Nome*</label><br>
					<input type="text" class="txtCriarMapaAmostras" placeholder="Digite o nome do mapa" value="<%= ConteudoMapa.getNome_mapa_amostra() %>" id="txtNomeAlterarMapaDeAmostras" name="txtNomeAlterarMapaDeAmostras"/>
				</div>
				<div class="containerLblTxtCriarMapaAmostra">
					<label class="lblTxtCriarMapaAmostra palavrasAzul">Número de colunas*</label>
					<input type="text" class="txtCriarMapaAmostras" placeholder="Digite o número de colunas do mapa" value="<%= ConteudoMapa.getN_coluna_mapa_amostra()%>" id="txtColunasAlterarMapaDeAmostras" name="txtColunasAlterarMapaDeAmostras"/>
				</div>
				<div class="containerLblTxtCriarMapaAmostra">
					<label class="lblTxtCriarMapaAmostra palavrasAzul">Número de linhas*</label>
					<input type="text" class="txtCriarMapaAmostras" placeholder="Digite o número de linhas do mapa" value="<%= ConteudoMapa.getN_linha_mapa_amostra()%>" id="txtLinhasAlterarMapaDeAmostras" name="txtLinhasAlterarMapaDeAmostras"/>
				</div>
			</div>
			
			<div class="containersTxtsCriarMapaAmostras">
				<div class="containersLblsDadosLocalizacaoCriarMapa">
					<label class="lblsDadosLocalizacaoCriarMapa palavrasAzul">Localização</label>
				</div>
				<div class="containerLblTxtCriarMapaAmostra">
					<label class="lblTxtCriarMapaAmostra palavrasAzul">Freezer/ Congelador/ Refrigerador</label>
					<input type="text" class="txtCriarMapaAmostras" placeholder="Digite o nome aqui" value="<%= ConteudoMapa.getFreezer_mapa_amostra() %>" id="txtFreezerAlterarMapaDeAmostras" name="txtFreezerAlterarMapaDeAmostras"/>
				</div>
				<div class="containerLblTxtCriarMapaAmostra">
					<label class="lblTxtCriarMapaAmostra palavrasAzul">Estante/ Prateleira/ Armário</label>
					<input type="text" class="txtCriarMapaAmostras" placeholder="Digite o nome aqui" value="<%= ConteudoMapa.getEstante_mapa_amostra() %>" id="txtEstanteAlterarMapaDeAmostras" name="txtEstanteAlterarMapaDeAmostras"/>
				</div>
				<div class="containerLblTxtCriarMapaAmostra">
					<label class="lblTxtCriarMapaAmostra palavrasAzul">Caixa/ Pote/ Reservatório</label>
					<input type="text" class="txtCriarMapaAmostras" placeholder="Digite o nome aqui" value="<%= ConteudoMapa.getCaixa_mapa_amostra() %>" id="txtCaixaAlterarMapaDeAmostras" name="txtCaixaAlterarMapaDeAmostras"/>
				</div>
			</div>
			
			<div class="containerLblCamposObrigatoriosMapaAmostras">
				<label style="color: #FF0000; font-size: 16px;">*Campos obrigatórios</label>
			</div>
			
			<input type="hidden" value="<%= ConteudoMapa.getId_mapa_amostra() %>" id="idMapaAmostrasAlterar" name="idMapaAmostrasAlterar">
			
			<div class="containerBtnCriarMapaAmostras">
				<input class="btnCriarMapaAmostras" type="submit" value="Finalizar">
			</div>
			
			</div>
		</form>
		<%} %>
		</div>
		<%@ include file="../../includes/rodape.jsp" %>   
		
	</div>
	
</body>
</html>
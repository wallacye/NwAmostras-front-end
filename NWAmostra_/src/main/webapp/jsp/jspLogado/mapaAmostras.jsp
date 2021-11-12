<%@page import="model.AmostraNoMapa"  %>
<%@page import="model.MapaDeAmostras"  %>


<%@page import="crudMapaDeAmostras.exibirMapaAmostrasEspecifico" %>
<%@page import="crudMapaDeAmostras.exibirMapaDeAmostras" %>

<%@page import="java.util.ArrayList"%>

<%
    Integer id_mapa_amostra = Integer.parseInt(request.getParameter("id_mapa_amostra")) ;
    
	exibirMapaAmostrasEspecifico dao = new exibirMapaAmostrasEspecifico();
    ArrayList<AmostraNoMapa> lista = dao.listar(id_mapa_amostra);
    
    ArrayList<MapaDeAmostras> listaMapa = dao.listarMapa(id_mapa_amostra);
 %>

<%@ include file="../../includes/validacao.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mapa de Amostras</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>

<script type="text/javascript">

	function abrirLegendaMapaAmostra(){
		document.getElementById('idLegendaMapaAmostras').style.display = 'flex';
	}
	
	function fecharLegendaMapaAmostra(){
		document.getElementById('idLegendaMapaAmostras').style.display = 'none';
	}
	
	function abrirPopUpExcluirMapaAmostras(){
		document.getElementById('idPopUpAtencaoExcluirMapaAmostras').style.display = 'block';
	}

	function fecharPopUpExcluirMapaAmostras(){
		document.getElementById('idPopUpAtencaoExcluirMapaAmostras').style.display = 'none';
	}
	
</script>

</head>
<body>
	<%@ include file="../../includes/menuLogado.jsp" %>
	
	
	<% for(MapaDeAmostras ConteudoMapa : listaMapa) 
	{
	%>	
	<div class="containerTelaMapaDeAmsotras">
		<div class="containerNomeMapaDeAmostras">
			<label class="lblNomeMapaDeAmostras palavrasAzul"><%= ConteudoMapa.getNome_mapa_amostra() %></label>
		</div>
		
		<div class="containerDivsLocalizacaoMapaAmostra">
			<div class="containerLblLocalizaçãoMapaAmostras">
				<label class="lblFreezerEstanteCaixa">Freezer -</label>
				<label class="lblLocallizacaoMapaAmostras">&nbsp; <%= ConteudoMapa.getFreezer_mapa_amostra() %></label>
			</div>
			<div class="containerLblLocalizaçãoMapaAmostras">
				<label class="lblFreezerEstanteCaixa">Estante -</label>
				<label class="lblLocallizacaoMapaAmostras">&nbsp; <%= ConteudoMapa.getEstante_mapa_amostra() %></label>
			</div>
			<div class="containerLblLocalizaçãoMapaAmostras">
				<label class="lblFreezerEstanteCaixa">Caixa -</label>
				<label class="lblLocallizacaoMapaAmostras">&nbsp; <%= ConteudoMapa.getCaixa_mapa_amostra() %></label>
			</div>
		</div>
		
		<div class="legendaMapaAmostras" id="idLegendaMapaAmostras">
			<div class="popUpLegendaMapaAmostras">
			<div class="containerLblLegendaMapaAmostras"><label class="lblLegendaMapaAmostras">Legenda</label></div>
			<button class="containerImagemXMapaAmostras" onclick="location.href='javascript: fecharLegendaMapaAmostra()'">
			<img src="../../img/x.png" class="imgX"></button>
			<div class="containerInfosLegendaMapaAmostra">
				<div class="containerImgLblLegendaMapaAmostra">
					<img src="../../img/legendaMapaAmostrasAcabou.png" class="imgLegendaMapaAmostras">
					<label class="lblsAcabouVencidaFaseColeta">Acabou</label>
				</div>
				<div class="containerImgLblLegendaMapaAmostra">
					<img src="../../img/imgAmostraVencida.png" class="imgLegendaMapaAmostras">
					<label class="lblsAcabouVencidaFaseColeta">Vencida</label>
				</div>
				<div class="containerImgLblLegendaMapaAmostra">
					<img src="../../img/imgAmostraFaseColeta.png" class="imgLegendaMapaAmostras">
					<label class="lblsAcabouVencidaFaseColeta">Fase de Coleta</label>
				</div>
			</div>
			
			</div>
		</div>
		
		<div class="divScrollMapaDeAmostras" >
		<table>
		
		<% 
		int c = 1;
		int l = 1;
		int linhas = ConteudoMapa.getN_linha_mapa_amostra();
		int colunas = ConteudoMapa.getN_coluna_mapa_amostra();
		%>			
		
		<%
		while(c <= colunas) {
		%>
			<tr>			
			<% 
			while(l <= linhas) {				
			%>
					<td class="divAmostraMapaDeAmostra">
					<button class="btnLegendaMapaAmostras" onclick="location.href='javascript: abrirLegendaMapaAmostra();'">
					<img src="../../img/legendaMapaAmostrasAcabou.png" class="imgLegendaMapaAmostras"></button>
					<button class="btnVerCriarAmostra" 
					<% for (AmostraNoMapa conteudo : lista) { 
						if(l==conteudo.getN_linha_amostra()&&c==conteudo.getN_coluna_amostra()) 
						{ 
							String redirecionarAmostra="onclick='location.href='amostra.jsp?id_mapa_amostra=?" + conteudo.getId_mapa_amostra();%> 
							<%=redirecionarAmostra%> 
							<% 
						} 
						else 
						{ 
							String redirecionarAmostra = "onclick='location.href='criarAmostra.jsp?id_mapa_amostra=" + conteudo.getId_mapa_amostra() +"&n_linha_amostra=" + l + "&n_coluna_amostra=" + c;
							%> 
							<%=redirecionarAmostra%> 
							<%
						}
					}
						%>
					'">									
					<% 
					for(AmostraNoMapa conteudo : lista) 
					{
					if(l==conteudo.getN_linha_amostra()&&c==conteudo.getN_coluna_amostra()) 
					{ %>
					<br> <%= conteudo.getVolume_amostra() %> uL 
					<br> <%= conteudo.getNome_amostra() %>
					<br> <%= conteudo.getData_formatada_vencimento() %>
					</button>
					<% 
					}
					else 
					{
					%>
					</button>
					<%
					}
					}
					%>
				</td>
			<% 
				l++;
			} 
			%>
		
			</tr>
		<% 
			c++;
			l=1;
		} 
		%>
		</table>
		</div>
		
		<div class="containerBtnsAlterarExcluirMapaAmostra">
			<button class="btnAlterarMapaAmostra" onclick="location.href='alterarMapaDeAmostras.jsp'">Alterar</button>
			<button class="btnExcluirMapaAmostra" onclick="location.href='javascript: abrirPopUpExcluirMapaAmostras();'">Excluir</button>
		</div>
			
		<div class="popUpAtencaoExcluirMapaAmostras" id="idPopUpAtencaoExcluirMapaAmostras">
			<div class="containerPopUpAtencaoExcluirMapaAmostras">
				<div class="containerTituloAtencaoExcluirMapaAmostras">
					<div style="width:100%;display: flex;justify-content: center;align-items: center; margin-top: 30px;">
						<label class="lblTituloAtencaoExcluirMapaAmostras">ATENÇÂO</label>
					</div>
					<div style="width:100%;display: flex;justify-content: center;align-items: center; margin-top: 5px;">
						<div class="detalheLblTituloAtençaoExcluirMapaAmostras"></div>
					</div>
					
					<div class="containerLblInfoExcluirMapaAmostra">
						<label class="lblInfoExcluirMapaAmostras">Tem certeza que deseja excluir o mapa de amostra?</label>
					</div>
					
					<div class="containerMasterExcluirMapaAmostras">
						<div class="containersBtnsExcluirMapaAmostras">
							<button class="btnSimExcluirMapaAmostras" onclick="location.href=''">Sim</button>
						</div>
						<div class="containersBtnsExcluirMapaAmostras">
							<button class="btnCancelarExcluirMapaAmostras" onclick="location.href='javascript: fecharPopUpExcluirMapaAmostras();'">Cancelar</button>
						</div>
					</div>
					
				</div>
			</div>
		</div>	
<% 
}
%>	
		<%@ include file="../../includes/rodape.jsp" %>
	</div>
</body>
</html>
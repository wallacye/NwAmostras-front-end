<%@ include file="../../includes/validacao.jsp" %>

<%@page import="model.AmostraNoMapa"  %>
<%@page import="crudAmostra.exibirAmostra" %>
<%@page import="java.util.ArrayList"%>

<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<%@ page import="java.time.LocalDateTime" %>

<%
    Integer id_amostra_mapa = Integer.parseInt(request.getParameter("id_amostra_mapa"));
	
	Integer id_lab_pesq = (Integer) request.getSession().getAttribute("idLabPesq");
    exibirAmostra dao = new exibirAmostra();
    ArrayList<AmostraNoMapa> lista = dao.listar(id_amostra_mapa);
    
    
 %>
 
 <% for(AmostraNoMapa conteudo : lista){
	 Date amostraDesativada = conteudo.getData_inativacao_amostra();
    if(amostraDesativada != null){
        response.sendRedirect(request.getContextPath()+"/jsp/jspLogado/telaInicialAmostra.jsp");
        
    }}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Amostra</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>

<script type="text/javascript">
	function abrirPopUpExcluirAmostra(){
		document.getElementById('idPopUpAtencaoExcluirAmostra').style.display = 'block';
	}

	function fecharPopUpExcluirAmostra(){
		document.getElementById('idPopUpAtencaoExcluirAmostra').style.display = 'none';
	}
	
	function abrirPopUpAdicionarVolume(){
		document.getElementById('popupAdicionarVolume').style.display = 'block';
		document.getElementById('popupRetirarVolume').style.display = 'none';
	}

	function fecharPopUpAdicionarVolume(){
		document.getElementById('popupAdicionarVolume').style.display = 'none';
	}
	
	function abrirPopUpRetirarVolume(){
		document.getElementById('popupAdicionarVolume').style.display = 'none';
		document.getElementById('popupRetirarVolume').style.display = 'block';
	}

	function fecharPopUpRetirarVolume(){
		document.getElementById('popupRetirarVolume').style.display = 'none';
	}
	
	function abrirLegendaMapaAmostra(){
		document.getElementById('idLegendaAmostras').style.display = 'flex';
	}
	
	function fecharLegendaMapaAmostra(){
		document.getElementById('idLegendaAmostras').style.display = 'none';
	}
</script>

</head>
<body>
	<%@ include file="../../includes/menuLogado.jsp" %>

	<% 
	for(AmostraNoMapa conteudo : lista) 
	{%>		
	
	<div class="containerTelaAmostra">
		<div class="containerNomeAmostraBtnHistorico">
			<div class="containerLblNomeAmostras">
				
				<div class="containerLblNomeLegendaAmostras">
				<div class=centralizarNomeAmostra>
					<label class="lblNomeAmostra"> <%= conteudo.getCodigo_amostra() %> - <%= conteudo.getNome_amostra() %></label>
					
					<% 	
					java.sql.Date atual = new java.sql.Date(System.currentTimeMillis());
					Double alterarImgLegenda = conteudo.getVolume_amostra();
					Date vencimento = conteudo.getValidade_amostra();
					String faseDeColeta = conteudo.getFase_coleta();

					if(alterarImgLegenda == 00.00){%>
					<button class="btnLegendaAmostras" onclick="location.href='javascript: abrirLegendaMapaAmostra();'">
					<img src="../../img/legendaMapaAmostrasAcabou.png" class="imgLegendaMapaAmostras">
					</button>
					<%}else if(vencimento.before(atual)){
						%>
					<button class="btnLegendaAmostras" onclick="location.href='javascript: abrirLegendaMapaAmostra();'">
					<img src="../../img/imgAmostraVencida.png" class="imgLegendaMapaAmostrasFaseColeta"></button>
					<% }else if(faseDeColeta.equals("Sim")){%>
					<button class="btnLegendaAmostras" onclick="location.href='javascript: abrirLegendaMapaAmostra();'">
					<img src="../../img/imgAmostraFaseColeta.png" class="imgLegendaMapaAmostrasFaseColeta"></button>
					<% }%>
					
				</div>
				</div>
				<div class="containerBtnHistoricoAmostra">
				<% for(Instituicao ConteudoInstituicao : listaInstituicao){
					if(cargo.equals(ConteudoInstituicao.getCargo())){%>
					<button class="btnExbirHistoricoAmostra" onclick="location.href='./historicoAmostra.jsp?id_amostra=<%= conteudo.getId_amostra() %>&id_amostra_mapa=<%= conteudo.getId_amostra_mapa() %>'">Exibir hist?rico</button>
				<%} else{%>
				
				<%}} %>
				</div>
			</div>
		</div>
		<div class="containerLblDadosAmostra">
			<label class="lblDadosAmostra palavrasAzul">Dados</label>
		</div>
		<div class="containerLblsDadoInfoAmostra">
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">C?digo</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getCodigo_amostra() %></label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Nome</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getNome_amostra() %></label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Categoria</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getNome_categoria() %></label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Tipo</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getTipo_amostra() %></label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Volume</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getVolume_amostra() %> uL</label>
				<% 
				if(faseDeColeta.equals("") || faseDeColeta.equals("Nao")){
				%>
				<button class="btnColocarFaseColetaAmostra" onclick="location.href='/NWAmostra_/faseColetaAmostra?id_amostra_mapa=<%= conteudo.getId_amostra_mapa() %>&fase_coleta=<%= conteudo.getFase_coleta() %>'">
				Colocar em fase de coleta</button>
				<%}else if(faseDeColeta.equals("Sim")){ %>
				<button class="btnColocarFaseColetaAmostra" onclick="location.href='/NWAmostra_/faseColetaAmostra?id_amostra_mapa=<%= conteudo.getId_amostra_mapa() %>&fase_coleta=<%= conteudo.getFase_coleta() %>'">
				Retirar da fase de coleta</button>
				<%} %>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Data de coleta</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getData_formatada_coleta() %></label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Hora da coleta</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getHora_coleta_amostra() %></label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Coletador</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getColetador_amostra() %></label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Data de Validade</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getData_formatada_vencimento() %></label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Anota??es</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getAnotacoes_amostra() %></label>
			</div>
		</div>
		
		<div class="containerLblDadosAmostra">
			<label class="lblDadosAmostra palavrasAzul">Origem</label>
		</div>
		
		<div class="containerLblsDadoInfoAmostra">
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Nome da Institui??o</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getNome_origem() %></label>
			</div>
		</div>
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Endere?o</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getRua_origem() %></label>
			</div>
		</div>
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">CEP</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getCep_origem() %></label>
			</div>
		</div>
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Bairro</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getBairro_origem() %></label>
			</div>
		</div>
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">N?mero</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getNumero_origem() %></label>
			</div>
		</div>
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Complemento</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getComplemento_origem() %></label>
			</div>
		</div>
		
		</div>
		
		<div class="containerLblDadosAmostra">
			<label class="lblDadosAmostra palavrasAzul">Localiza??o</label>
		</div>
		
		<div class="containerLblsDadoInfoAmostra">
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Mapa de amostras</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getNome_mapa_amostra() %></label>
			</div>
		</div>
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Freezer</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getFreezer_mapa_amostra() %></label>
			</div>
		</div>
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Estante</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getEstante_mapa_amostra() %></label>
			</div>
		</div>
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Caixa</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getCaixa_mapa_amostra() %></label>
			</div>
		</div>
		
		</div>
		
		<div class="containerLblDadosAmostra">
			<label class="lblDadosAmostra palavrasAzul">Posi??o</label>
		</div>
		
		<div class="containerLblsDadoInfoAmostra">
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Linha</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getN_linha_amostra() %></label>
			</div>
		</div>
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Coluna</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getN_coluna_amostra() %></label>
			</div>
		</div>
		
		</div>
		</div>
		
		
		<div class="containerBtnsEditarExcluirAmostra">
		<div class="containerAjeitarBtnsAmostra">
			<button class="btnEditarAmostra" onclick="location.href='amostraEditando.jsp?id_amostra_mapa=<%= conteudo.getId_amostra_mapa() %>'">Editar</button>
		</div>
		<div class="containerAjeitarBtnsAmostra">
		<button class="btnAdicionarRetirarVolumeAmostra" onclick="location.href='javascript: abrirPopUpAdicionarVolume();'">Adicionar ou retirar volume</button>
		</div>
		<div class="containerAjeitarBtnsAmostra">
		<button class="btnEcluirAmostra" onclick="location.href='javascript: abrirPopUpExcluirAmostra();'">Excluir</button>
		</div>
		</div>
		
		<!-- Pop ups -->
		
		<div class="popupAdicionarVolume" id="popupAdicionarVolume">
			<div class="containerInforma??esPopUp">
				<div class="containerBtnsAdicionarRetirar">
					<button class="btnAdicionarVolume">Adicionar</button>
					<button class="btnRetirarVolume" onclick="location.href='javascript: abrirPopUpRetirarVolume();'">Retirar</button>
				</div>
				<form method="post" action="/NWAmostra_/adicionarVolumeAmostra">
				<div class="containerVolumeAtual">
					<label class="palavrasAzul lblVolumeAtualAlterar">Volume atual -</label>
					<label class="lblVolumeAtualNumero"> <%= conteudo.getVolume_amostra() %>uL</label>
				</div>
				<div class="containerLblAdicionarInput">
					<label class="palavrasAzul lblAdicionarVolume">Adicionar</label>
					<input type="text" class="inputAdicionarVolume" placeholder="Digite o volume a ser adicionado" name="inputAdicionarVolume">
					<input type="hidden" value="<%= conteudo.getVolume_amostra() %>" name="volumeAtual">
					<input type="hidden" value="<%= conteudo.getId_amostra() %>" name="idAmostraAdicionarVolume">
					<input type="hidden" value="<%= conteudo.getId_amostra_mapa() %>" name="id_amostra_mapa">
					<input type="hidden" value="<%= id_pesq%>" name="idPesqAdicionarVolume">
				</div>
				<div class="containerBtnAdicionarVolume" 
				style="width:100%;display: flex;justify-content: center;align-items: center;">
					<button class="btnImputAdicionarVolume" onclick="location.href=''">Adicionar</button>
					<button class="btnImputCancelarAdicionarVolume" onclick="location.href='javascript: fecharPopUpAdicionarVolume();'">Cancelar</button>
				</div>
				</form>
			</div>
		</div>
		
		<div class="popupAdicionarVolume" id="popupRetirarVolume">
			<div class="containerInforma??esPopUp">
				<div class="containerBtnsAdicionarRetirar">
					<button class="btnAdicionarVolumeRetirar" onclick="location.href='javascript: abrirPopUpAdicionarVolume();'">Adicionar</button>
					<button class="btnRetirarVolumeRetirar">Retirar</button>
				</div>
				<form method="post" action="/NWAmostra_/retirarVolumeAmostra">
				<div class="containerVolumeAtual">
					<label class="palavrasAzul lblVolumeAtualAlterar">Volume atual -</label>
					<label class="lblVolumeAtualNumero"> <%= conteudo.getVolume_amostra() %>uL</label>
				</div>
				<div class="containerLblAdicionarInput">
					<label class="palavrasAzul lblAdicionarVolume">Retirar</label>
					<input type="text" class="inputAdicionarVolume" placeholder="Digite o volume a ser retirado" name="inputRetirarVolume">
					<input type="hidden" value="<%= conteudo.getVolume_amostra() %>" name="volumeAtual">
					<input type="hidden" value="<%= conteudo.getId_amostra() %>" name="idAmostraAdicionarVolume">
					<input type="hidden" value="<%= conteudo.getId_amostra_mapa() %>" name="id_amostra_mapa">
					<input type="hidden" value="<%= id_pesq%>" name="idPesqAdicionarVolume">
				</div>
				<div class="containerBtnAdicionarVolume" 
				style="width:100%;display: flex;justify-content: center;align-items: center;">
					<button class="btnImputAdicionarVolume" onclick="location.href=''">Retirar</button>
					<button class="btnImputCancelarAdicionarVolume" onclick="location.href='javascript: fecharPopUpRetirarVolume();'">Cancelar</button>
				</div>
				</form>
			</div>
		</div>
		
		<div class="popUpAtencaoExcluirAmostra" id="idPopUpAtencaoExcluirAmostra">
			<div class="containerPopUpAtencaoExcluirMapaAmostras">
				<div class="containerTituloAtencaoExcluirMapaAmostras">
					<div style="width:100%;display: flex;justify-content: center;align-items: center; margin-top: 30px;">
						<label class="lblTituloAtencaoExcluirMapaAmostras">ATEN??O</label>
					</div>
					<div style="width:100%;display: flex;justify-content: center;align-items: center; margin-top: 5px;">
						<div class="detalheLblTituloAten?aoExcluirMapaAmostras"></div>
					</div>
					
					<div class="containerLblInfoExcluirMapaAmostra">
						<label class="lblInfoExcluirMapaAmostras">Tem certeza que deseja excluir essa amostra?</label>
					</div>
					
					<div class="containerMasterExcluirMapaAmostras">
						<div class="containersBtnsExcluirMapaAmostras">
							<button class="btnSimExcluirMapaAmostras" onclick="location.href='/NWAmostra_/desativarAmostra?id_amostra=<%= conteudo.getId_amostra() %>'">Sim</button>
						</div>
						<div class="containersBtnsExcluirMapaAmostras">
							<button class="btnCancelarExcluirMapaAmostras" onclick="location.href='javascript: fecharPopUpExcluirAmostra();'">Cancelar</button>
						</div>
					</div>
					
				</div>
			</div>
		</div>	
		
		<div class="legendaMapaAmostras" id="idLegendaAmostras">
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
					<img src="../../img/imgAmostraVencida.png" class="imgLegendaMapaAmostrasFaseColeta">
					<label class="lblsAcabouVencidaFaseColeta">Vencida</label>
				</div>
				<div class="containerImgLblLegendaMapaAmostra">
					<img src="../../img/imgAmostraFaseColeta.png" class="imgLegendaMapaAmostrasFaseColeta">
					<label class="lblsAcabouVencidaFaseColeta">Fase de Coleta</label>
				</div>
			</div>
			
			</div>
		</div>
		
		<% 
		} %>
		<%@ include file="../../includes/rodape.jsp" %>
	</div>
</body>
</html>
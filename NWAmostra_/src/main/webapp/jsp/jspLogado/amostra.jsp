<%@page import="model.AmostraNoMapa"  %>
<%@page import="crudAmostra.exibirAmostra" %>
<%@page import="java.util.ArrayList"%>

<%
    Integer id_amostra_mapa = Integer.parseInt(request.getParameter("id_amostra_mapa"));
    
    exibirAmostra dao = new exibirAmostra();
    ArrayList<AmostraNoMapa> lista = dao.listar(id_amostra_mapa);
 %>
<%@ include file="../../includes/validacao.jsp" %>
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
					<label class="lblNomeAmostra"> <%= conteudo.getId_amostra() %> - <%= conteudo.getNome_amostra() %></label>
					<button class="btnLegendaAmostras" onclick="location.href=''">
					<img src="../../img/legendaMapaAmostrasAcabou.png" class="imgLegendaMapaAmostras"></button>
				</div>
				</div>
				<div class="containerBtnHistoricoAmostra">
					<button class="btnExbirHistoricoAmostra" onclick="location.href='criarAmostra'">Exibir histórico</button>
				</div>
			</div>
		</div>
		<div class="containerLblDadosAmostra">
			<label class="lblDadosAmostra palavrasAzul">Dados</label>
		</div>
		<div class="containerLblsDadoInfoAmostra">
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Código</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getId_amostra() %></label>
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
				<button class="btnColocarFaseColetaAmostra" onclick="location.href=''">Colocar em fase de coleta</button>
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
				<label class="lblsDadoInfoAmostra palavrasAzul">Anotações</label>
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
				<label class="lblsDadoInfoAmostra palavrasAzul">Nome da Instituição</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"><%= conteudo.getNome_origem() %></label>
			</div>
		</div>
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Endereço</label>
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
				<label class="lblsDadoInfoAmostra palavrasAzul">Número</label>
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
			<label class="lblDadosAmostra palavrasAzul">Localização</label>
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
			<label class="lblDadosAmostra palavrasAzul">Posição</label>
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
			<button class="btnEditarAmostra" onclick="location.href='amostraEditando.jsp'">Editar</button>
		</div>
		<div class="containerAjeitarBtnsAmostra">
		<button class="btnAdicionarRetirarVolumeAmostra" onclick="location.href=''">Adicionar ou retirar volume</button>
		</div>
		<div class="containerAjeitarBtnsAmostra">
		<button class="btnEcluirAmostra" onclick="location.href='javascript: abrirPopUpExcluirAmostra();'">Excluir</button>
		</div>
		</div>
		
		<!-- Pop ups -->
		
		<!-- 
		<div class="popupAdicionarVolume">
			<div class="containerInformaçõesPopUp">
				<div class="containerBtnsAdicionarRetirar">
					<button class="btnAdicionarVolume">Adicionar</button>
					<button class="btnRetirarVolume">Retirar</button>
				</div>
				<div class="containerVolumeAtual">
					<label class="palavrasAzul lblVolumeAtualAlterar">Volume atual -</label>
					<label class="lblVolumeAtualNumero"> <%= conteudo.getVolume_amostra() %>uL</label>
				</div>
				<div class="containerLblAdicionarInput">
					<label class="palavrasAzul lblAdicionarVolume">Adicionar</label>
					<input type="text" class="inputAdicionarVolume" placeholder="Digite o volume a ser adicionado">
				</div>
				<div class="containerBtnAdicionarVolume" 
				style="width:100%;display: flex;justify-content: center;align-items: center;">
					<button class="btnImputAdicionarVolume" onclick="location.href=''">Adicionar</button>
					<button class="btnImputCancelarAdicionarVolume" onclick="location.href=''">Cancelar</button>
				</div>
			</div>
		</div> -->
		
		<div class="popUpAtencaoExcluirAmostra" id="idPopUpAtencaoExcluirAmostra">
			<div class="containerPopUpAtencaoExcluirMapaAmostras">
				<div class="containerTituloAtencaoExcluirMapaAmostras">
					<div style="width:100%;display: flex;justify-content: center;align-items: center; margin-top: 30px;">
						<label class="lblTituloAtencaoExcluirMapaAmostras">ATENÇÂO</label>
					</div>
					<div style="width:100%;display: flex;justify-content: center;align-items: center; margin-top: 5px;">
						<div class="detalheLblTituloAtençaoExcluirMapaAmostras"></div>
					</div>
					
					<div class="containerLblInfoExcluirMapaAmostra">
						<label class="lblInfoExcluirMapaAmostras">Tem certeza que deseja excluir essa amostra?</label>
					</div>
					
					<div class="containerMasterExcluirMapaAmostras">
						<div class="containersBtnsExcluirMapaAmostras">
							<button class="btnSimExcluirMapaAmostras" onclick="location.href=''">Sim</button>
						</div>
						<div class="containersBtnsExcluirMapaAmostras">
							<button class="btnCancelarExcluirMapaAmostras" onclick="location.href='javascript: fecharPopUpExcluirAmostra();'">Cancelar</button>
						</div>
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
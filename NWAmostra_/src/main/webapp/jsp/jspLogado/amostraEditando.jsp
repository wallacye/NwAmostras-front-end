<%@ include file="../../includes/validacao.jsp" %>

<%@page import="model.AmostraNoMapa"  %>
<%@page import="crudAmostra.exibirAmostra" %>
<%@page import="java.util.ArrayList"%>

<%
	Integer id_amostra_mapa = Integer.parseInt(request.getParameter("id_amostra_mapa"));

	exibirAmostra dao = new exibirAmostra();
	ArrayList<AmostraNoMapa> lista = dao.listar(id_amostra_mapa);
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
		<form>
		<div class="containerLblsDadoInfoAmostraTelaEditarAmostra">
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Código</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
			<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getCodigo_amostra() %>"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Nome</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getNome_amostra() %>"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Categoria</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getNome_categoria() %>"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Tipo</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getTipo_amostra() %>"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Volume</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getVolume_amostra() %> uL"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Data de coleta</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getData_formatada_coleta() %>"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Hora da coleta</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getHora_coleta_amostra() %>"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Coletador</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getColetador_amostra() %>"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Data de Validade</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getData_formatada_vencimento() %>"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Anotações</label>
			</div>
			 <div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getAnotacoes_amostra() %>"/>
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
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getNome_origem() %>"/>
			</div>
		</div>
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Endereço</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getRua_origem() %>"/>
			</div>
		</div>
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">CEP</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getCep_origem() %>"/>
			</div>
		</div>
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Bairro</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getBairro_origem() %>"/>
			</div>
		</div>
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Número</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getNumero_origem() %>"/>
			</div>
		</div>
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Complemento</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getComplemento_origem() %>"/>
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
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getNome_mapa_amostra() %>"/>
			</div>
		</div>
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Freezer</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getFreezer_mapa_amostra() %>"/>
			</div>
		</div>
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Estante</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getEstante_mapa_amostra() %>"/>
			</div>
		</div>
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Caixa</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getCaixa_mapa_amostra() %>"/>
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
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getN_linha_amostra() %>"/>
			</div>
		</div>
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Coluna</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="<%= conteudo.getN_coluna_amostra() %>"/>
			</div>
		</div>
		
		</div>
		</div>
		
		<div class="containerBtnsFinalizarExcluirAmostra">
		<button class="btnFinalizarAmostra" onclick="location.href=''">Finalizar!</button>
		<button class="btnEcluirAmostra2" onclick="location.href=''">Excluir</button>
		</div>
		</form>
		
		<% 
		} %>
		<%@ include file="../../includes/rodape.jsp" %>
	</div>
</body>
</html>
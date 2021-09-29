<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Amostra</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostras.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>
</head>
<body>
	<%@ include file="../../includes/menuLogado.jsp" %>

	<div class="containerTelaAmostra">
		<div class="containerNomeAmostraBtnHistorico">
			<div class="containerLblNomeAmostras">
				
				<div class="containerLblNomeLegendaAmostras">
				<div class=centralizarNomeAmostra>
					<label class="lblNomeAmostra">001 - Amostra A</label>
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
				<label class="lblsInfoAmostra">001</label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Nome</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">Amostra A</label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Categoria</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">Vírus</label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Tipo</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">DNA</label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Volume</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">0 uL</label>
				<button class="btnColocarFaseColetaAmostra" onclick="location.href=''">Colocar em fase de coleta</button>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Data de coleta</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">04/06/2021</label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Hora da coleta</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">12:20</label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Coletador</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">Lindolfo Britines</label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Data de Validade</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">10/07/2021</label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Anotações</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</label>
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
				<label class="lblsInfoAmostra">XXX</label>
			</div>
		</div>
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Endereço</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">Rua Amendoin</label>
			</div>
		</div>
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">CEP</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">000000-00</label>
			</div>
		</div>
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Bairro</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">Jardim Food</label>
			</div>
		</div>
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Número</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">809</label>
			</div>
		</div>
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Complemento</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">Próximo ao shopping</label>
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
				<label class="lblsInfoAmostra">Exemplo de nome do mapa de amostras</label>
			</div>
		</div>
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Freezer</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">1</label>
			</div>
		</div>
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Estante</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">A</label>
			</div>
		</div>
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Caixa</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">A10</label>
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
				<label class="lblsInfoAmostra">1</label>
			</div>
		</div>
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Coluna</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">1</label>
			</div>
		</div>
		
		</div>
		</div>
		
		<div class="containerBtnsEditarExcluirAmostra">
		<div class="containerAjeitarBtnsAmostra">
			<button class="btnEditarAmostra" onclick="location.href=''">Editar</button>
		</div>
		<div class="containerAjeitarBtnsAmostra">
		<button class="btnAdicionarRetirarVolumeAmostra" onclick="location.href=''">Adicionar ou retirar volume</button>
		</div>
		<div class="containerAjeitarBtnsAmostra">
		<button class="btnEcluirAmostra" onclick="location.href=''">Excluir</button>
		</div>
		</div>
		
		<%@ include file="../../includes/rodape.jsp" %>
	</div>
</body>
</html>
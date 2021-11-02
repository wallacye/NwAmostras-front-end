<%@ include file="../../includes/validacao.jsp" %>
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

	<div class="containerTelaEditarAmostra">
		<div class="containerNomeAmostra">
			<div class="containerLblNomeAmostrasTelaEditarAmostra">
				
				<div class="containerLblNomeLegendaAmostrasTelaEditarAmostra">
				<div class=centralizarNomeAmostraTelaEditarAmostra>
					<label class="lblNomeAmostraTelaEditarAmostra">001 - Amostra A </label>
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
			<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="001"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Nome</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="Amostra A"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Categoria</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="Vírus"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Tipo</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="DNA"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Volume</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="0 uL"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Data de coleta</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="04/06/2021"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Hora da coleta</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="12:20"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Coletador</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="Lindolfo Britines"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Data de Validade</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="10/07/2021"/>
			</div>
		</div>
		
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Anotações</label>
			</div>
			 <div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."/>
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
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="xxx"/>
			</div>
		</div>
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Endereço</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="Rua Amendoin"/>
			</div>
		</div>
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">CEP</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="000000-00"/>
			</div>
		</div>
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Bairro</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="Jardim Food"/>
			</div>
		</div>
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Número</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="809"/>
			</div>
		</div>
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Complemento</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="Próximo ao shopping"/>
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
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="Exemplo de nome do mapa de amostras"/>
			</div>
		</div>
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Freezer</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="1"/>
			</div>
		</div>
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Estante</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="A"/>
			</div>
		</div>
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Caixa</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="A10"/>
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
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="1"/>
			</div>
		</div>
		<div class="linhaDadosAmostraTelaEditarAmostra">
			<div class="containerLblTipoInfoTelaEditarAmostra">
				<label class="lblsDadoInfoAmostraTelaEditarAmostra palavrasAzul">Coluna</label>
			</div>
			<div class="containerLblsInfoAmostraTelaEditarAmostra">
				<input type="text" class="lblsInfoAmostraTelaEditarAmostra" placeholder="1"/>
			</div>
		</div>
		
		</div>
		</div>
		
		<div class="containerBtnsFinalizarExcluirAmostra">
		<button class="btnFinalizarAmostra" onclick="location.href=''">Finalizar!</button>
		<button class="btnEcluirAmostra2" onclick="location.href=''">Excluir</button>
		</div>
		</form>
		<%@ include file="../../includes/rodape.jsp" %>
	</div>
</body>
</html>
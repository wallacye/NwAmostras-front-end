<%@ include file="../../includes/validacao.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Laboratorio</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>
</head>
<body>
<%@ include file="../../includes/menuLogado.jsp" %>

	<div class="containerTelaLab">
	<div class="containerNomeAmostraBtnHistorico">
			<div class="containerLblNomeAmostras">
				
				<div class="containerLblNomeLegendaAmostras">
				<div class=centralizarNomeAmostra>
					<label class="lblNomeAmostra"> Laboratório Oswaldo Cruz</label>					
				</div>
				</div>
			</div>
		</div>
		<div class="containerLblDadosAmostra">
			<label class="lblDadosAmostra palavrasAzul">Dados</label>
		</div>
		
		<div class="containerLblsDadoInfoAmostra">
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Nome</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">Laboratório Oswaldo Cruz</label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">CNPJ</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">00.000.000/0000-00</label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Telefone</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">0000 000 0000</label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">CEP</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">00000-000</label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Rua ou avenida</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra"> José Vieira </label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Número</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">000</label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Bairro</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">Vila Maria</label>
			</div>
		</div>
		
		<div class="linhaDadosAmostra">
			<div class="containerLblTipoInfo">
				<label class="lblsDadoInfoAmostra palavrasAzul">Complemento</label>
			</div>
			<div class="containerLblsInfoAmostra">
				<label class="lblsInfoAmostra">Perto do shopping</label>
			</div>
		</div>
	</div>
	
	<div class="containerLblDadosAmostra">
			<label class="lblDadosAmostra palavrasAzul">Membros</label>
	</div>
	
	<div class="containerMasterListaIntegrantesLab">
	<div class="containerListaIntegrantesLab">
					
						<button class="btnsIntegrantesProjeto" onclick="location.href=''">Ana Adriely Oliveira</button>					
									
						<button class="btnsIntegrantesProjeto" onclick="location.href='javascript: abrirPopUpRemoverPesquisador();'">Josefina Bund Fin</button>
						
						<div class="popUpTornarAdministradorReover" id="popUpTornarAdministradorReover">
							<button class="btnsTornarAdministradorRemover palavrasAzul" onclick="location.href=''">Tornar administrador</button>
							<button class="btnsTornarAdministradorRemover palavrasAzul" onclick="location.href=''">Remover</button>
							<button class="btnsTornarAdministradorRemover" style="color: #FF0000;" onclick="location.href='javascript: fecharPopUpRemoverPesquisador();'">Cancelar</button>
						</div>
	</div>
	</div>
	
	<div class="containerLblDadosAmostra">
			<label class="lblDadosAmostra palavrasAzul">Enviar solicitações</label>
	</div>
	
		<div class="containerBuscarAmostra">
			<div class="containerPessquisarFiltroAmostras">
			
			<button class="buttomPesquisarAmostra" onclick="location.href='#'">
                    <img src="../../img/lupa.png" class="imgLupa" alt="">
            </button>
			
			<input type="text" class="inputBuscarAmostras" placeholder="Pesquisar nomes" name="inputAdicionarPesq"/>
			
			<button class="buttonFiltrarAmostra" onclick="location.href=''">
                    <img src="../../img/maisLab.png" class="imgFiltro" alt="">
            </button>

			</div>
		</div>
		
		<div class="containerPessoasAdiconar">
			<label class="palavrasAzul lblPessoasAdicionar" >Joãozinho Game Play</label>
			<button class="btnXVermelhoAdicionarPesq"><img src="../../img/xVermelho.png"></button>
		</div>
		<div class="containerBtnEnviarSolicitacoes">
			<button class="btnEnviarSolicitacoes" onclick="location.href=''"> Enviar solicitações</button>
		</div>
		
		<div class="containerBtnsFinalizarExcluirAmostra">
		<button class="btnFinalizarAmostra" onclick="location.href=''">Alterar</button>
		</div>
		<div class="containerBtnsFinalizarExcluirAmostra">
		<button class="btnEcluirAmostra2" onclick="location.href=''">Sair da instituição</button>
		</div>
		
	</div>

<%@ include file="../../includes/rodape.jsp" %>
</body>
</html>
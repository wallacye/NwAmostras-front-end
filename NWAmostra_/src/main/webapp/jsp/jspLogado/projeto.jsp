<%@ include file="../../includes/validacao.jsp" %>

<%@page import="model.Projeto"  %>
<%@page import="model.Pesquisador"  %>
<%@page import="model.AmostraNoProjeto"  %>
<%@page import="model.Informacao"  %>
<%@page import="model.Campo"  %>
<%@page import="crudProjeto.exibirProjeto" %>
<%@page import="java.util.ArrayList"%>

<%
    Integer id_projeto = Integer.parseInt(request.getParameter("id_projeto")) ;
    
	exibirProjeto dao = new exibirProjeto();
	
    ArrayList<Projeto> lista = dao.listar(id_projeto);    
    ArrayList<Pesquisador> listaIntegrantes = dao.listarIntegrantes(id_projeto);
    ArrayList<AmostraNoProjeto> listaAmostras = dao.listarAmostras(id_projeto);
    ArrayList<Campo> listaCampos = dao.listarCampos(id_projeto);
    ArrayList<Informacao> listaInformacoes = dao.listarInformacoes(id_projeto);
 %>
 <% 
 for(Projeto Conteudo : lista){
 %>
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Projeto</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>

<script type="text/javascript">
	//PopUp Ferramentas
	function abrirFerramentasProjeto(){
	
	if(document.getElementById('idContainerFerramentasProjeto').style.display == 'block'){
		document.getElementById('idContainerFerramentasProjeto').style.display = 'none';
	}else{
		document.getElementById('idContainerFerramentasProjeto').style.display = 'block';
	}
	
	}
	
	//Pop up alterar tabela
	function abrirOpcoesAlterarTabela(){
		document.getElementById('idContainerMasterOpcoesAlterarTabela').style.display = 'block';
	}
	function fecharOpcoesAlterarTabela(){
		document.getElementById('idContainerMasterOpcoesAlterarTabela').style.display = 'none';
	}
	
	
	//PopUp sair do projeto
	function abrirPopUpSairProjeto(){
		document.getElementById('popUpSairProjeto').style.display = 'block';
	}
	function fecharPopUpSairProjeto(){
		document.getElementById('popUpSairProjeto').style.display = 'none';
	}
	
	//Pop up Alterar Projeto
	
	function abrirAlterarProjeto(){
		document.getElementById('popUpAdicionarPesq').style.display = 'block';
		document.getElementById('idBntAlterarParaPrivadoProjeto').style.display = 'initial';
		document.getElementById('idBntSalvarEdicaoProjeto').style.display = 'block';
		document.getElementById('idBtnAlterarProjeto').style.display = 'none';
	}
	
	function fecharAlterarProjeto(){
		document.getElementById('popUpAdicionarPesq').style.display = 'none';
		document.getElementById('idBntAlterarParaPrivadoProjeto').style.display = 'none';
		document.getElementById('idBntSalvarEdicaoProjeto').style.display = 'none';
		document.getElementById('idBtnAlterarProjeto').style.display = 'block';
	}
	
	//Pop up alterar celula
	//function abrirPopUpAlterarCelula(){
	//	document.getElementById('popUpAlterarLinha').style.display = 'block';
	//}
	
	//function fecharPopUpAlterarCelula(){
	//	document.getElementById('popUpAlterarLinha').style.display = 'none';
	//}
	
	//Pop up remover pesquisador
	
	function abrirPopUpRemoverPesquisador(){
		document.getElementById('popUpTornarAdministradorReover').style.display = 'block';
	}
	
	function fecharPopUpRemoverPesquisador(){
		document.getElementById('popUpTornarAdministradorReover').style.display = 'none';
	}
	
</script>

</head>
<body>

	<%@ include file="../../includes/menuLogado.jsp" %>

	<div class="containerTelaProjeto">
		<div class="containerNomeProjeto">
			<label class="lblNomeTelaProjeto"><%= Conteudo.getNome_projeto() %></label>
		</div>
		
		<div class="containerIntegrantesInformaçõesProjeto">
			<div class="divisaoIntegrantesInformaçõesProjeto">
				<div class="centralizarIntegrantesInformacoesProjeto">
					<div class="containerLblsIntegrantesInformacaoProjeto">
						<label class="lblsIntegrantesInformacaoProjeto">Integrantes</label>
					</div>
					<div class="containerListaIntegrantes">
					
						<button class="btnsIntegrantesProjeto" onclick="location.href=''"><%= Conteudo.getPesquisador_chefe() %></button>					
						<% for(Pesquisador ConteudoIntegrantes : listaIntegrantes) 
						{
						%>					
						<button class="btnsIntegrantesProjeto" onclick="location.href='javascript: abrirPopUpRemoverPesquisador();'"><%= ConteudoIntegrantes.getNome_pesq() %></button>
						<%  
						}
						%>
						<div class="popUpTornarAdministradorReover" id="popUpTornarAdministradorReover">
							<button class="btnsTornarAdministradorRemover palavrasAzul" onclick="location.href=''">Tornar administrador</button>
							<button class="btnsTornarAdministradorRemover palavrasAzul" onclick="location.href=''">Remover</button>
							<button class="btnsTornarAdministradorRemover" style="color: #FF0000;" onclick="location.href='javascript: fecharPopUpRemoverPesquisador();'">Cancelar</button>
						</div>
					</div>
					
					<!-- Parte do Pesquisador Chefe popup-->
					<div id="popUpAdicionarPesq">
						<label class="palavrasAzul lblAdicionarPesqProjeto">Adicionar pesquisador</label>
						<input type="text" class="txtAdicionarPesquisadorAoProjeto" placeholder="Digite o nome do pesquisador" id="txtAdicionarPesquisadorAoProjeto" name="txtAdicionarPesquisadorAoProjeto">
					</div>
					<!-- Fim da Parte do Pesquisador Chefe -->
					
				</div>
			</div>
			<div class="divisaoIntegrantesInformaçõesProjeto">
				<div class="centralizarIntegrantesInformacoesProjeto">
					<div class="containerLblsIntegrantesInformacaoProjeto">
						<label class="lblsIntegrantesInformacaoProjeto">Informações</label>
					</div>
					
					<div class="containerListaInformacoes">
						<div class="containersLblInfoProjeto">
							<div class="containerLblsInicioTerminoPrivado">
								<label class="palavrasAzul lblsInicioTerminoPrivado">Início em:</label>
							</div>		
							<div class="containerLblsInicioTerminoPrivadoData">
								<label class="lblsInicioTerminoPrivadoData"><%= Conteudo.getDt_inicio_projeto() %></label>
							</div>
						</div>
						<div class="containersLblInfoProjeto">
							<div class="containerLblsInicioTerminoPrivado">
								<label class="palavrasAzul lblsInicioTerminoPrivado">Término em:</label>
							</div>		
							<div class="containerLblsInicioTerminoPrivadoData">
								<label class="lblsInicioTerminoPrivadoData">00/00/0000</label>
								
								<!-- Parte do Pesquisador Chefe -->
								<button class="bntConcluirProjeto" onclick="location.href=''">Concluir Projeto</button>
								<!-- Fim da  Parte do Pesquisador Chefe -->
								
							</div>
						</div>
						<div class="containersLblInfoProjeto">
							<div class="containerLblsInicioTerminoPrivado">
								<label class="palavrasAzul lblsInicioTerminoPrivado">Privado:</label>
							</div>		
							<div class="containerLblsInicioTerminoPrivadoData">
								<label class="lblsInicioTerminoPrivadoData">
								<%
								int privado_publico = Conteudo.getPrivado_publico_projeto();
								if(privado_publico == 1){
								%>
								Sim
								<%
								}
								else{
								%>
								Não
								<%  
								}
								%>
								</label>
								<!-- Parte do Pesquisador Chefe popup-->
								<button class="bntAlterarParaPrivadoProjeto" id="idBntAlterarParaPrivadoProjeto" onclick="location.href=''">Alterar para privado</button>
								<!-- Fim da  Parte do Pesquisador Chefe -->
							</div>
						</div>
					</div>
					
					<!-- Parte do Pesquisador Chefe -->
					<button class="bntAlterarProjeto" id="idBtnAlterarProjeto" onclick="location.href='javascript: abrirAlterarProjeto();'">Alterar</button>
					<button class="bntAlterarProjeto" id="idBntSalvarEdicaoProjeto" onclick="location.href='javascript: fecharAlterarProjeto();'">Salvar edição!</button>
					<button class="bntExcluirProjeto" onclick="location.href=''">Excluir</button>
					<!-- Fim da Parte do Pesquisador Chefe -->
					
					<button class="bntSairDoProjeto" onclick="location.href='javascript: abrirPopUpSairProjeto();'">Sair do Projeto</button>
					
				</div>
			</div>
		</div>
		
		<div class="containerBtnFerramentasProjeto">
			<button class="bntFerramentasProjeto" onclick="location.href='javascript: abrirFerramentasProjeto();'">Ferramentas +</button>
			<div class="containerFerramentasProjeto" id="idContainerFerramentasProjeto">
			<button class="btnsFerramentasProjeto palavrasAzul" onclick="location.href='/NWAmostra_/inserirLinhaProjeto?id_projeto=<%= Conteudo.getId_projeto() %>'">Inserir linha</button>
			<button class="btnsFerramentasProjeto palavrasAzul" onclick="location.href='/NWAmostra_/inserirColunaProjeto?id_projeto=<%= Conteudo.getId_projeto() %>'">Inserir coluna</button>
			</div>
		</div>
		
		<div class="containerProjetoTabela">
			<table class="tabelaProjeto">
				<tr>
					<%  
					int linha = 0;
					int coluna = 1;
					while(coluna <= Conteudo.getColunas_projeto())
					{						
					%>
					 <th>
					 <button  class="inputsTituloTabelaProjeto" <%if(coluna!=1&&linha!=1){%>onclick="location.href='javascript: abrirPopUpAlterarCelula();'"<% } %>>
					 <p class="letraCorDeFundo"> _________ </p>
					 <%  
					 if(coluna==1){
						   %>
						   Nome da Amostra
						   <%
					 }
					 for(Campo ConteudoCampo : listaCampos) 
						{
						 if(coluna==ConteudoCampo.getColuna_campo())
						 {
					 %>
						<%= ConteudoCampo.getNome_campo() %>					 
						<%  
						 }
						}
						%>
					 </button>
					 </th>
					<%  
					coluna++;
					}
					%>
				<tr>
				<%  
				linha = 1;
				while(linha <= Conteudo.getLinhas_projeto())
				{
				%>
				<tr>
					<%  
					coluna = 1;
					while(coluna <= Conteudo.getColunas_projeto())
					{
					%>
					<td>
				
					<button class="" onclick="location.href='javascript: abrirOpcoesAlterarTabela();'">A</button>
					<button  class="inputsTabelaProjeto" onclick="location.href='alterarCelula.jsp'">
					
					<% 
					if (coluna==1)
					{
						 for(AmostraNoProjeto ConteudoAmostras : listaAmostras) 
						 {
							 if(linha==ConteudoAmostras.getLinha_amostra())
							 {
					%>
					<%= ConteudoAmostras.getNome_amostra() %>
					<%  
							 }
							 else{
									%>
									<% 
								 }
						 }
					}
					else
					{
						for(Informacao ConteudoInformacoes : listaInformacoes)
						{
							if(linha==ConteudoInformacoes.getLinha_amostra()&&coluna==ConteudoInformacoes.getColuna_campo())
							{
					%>
					<%= ConteudoInformacoes.getConteudo_informacao() %>
					<%
							}
							 else{
									%>
									<p class="letraCorDeFundo"> _________ </p>
									<% 
								 }
						}
						
					}
					%>	
					</button>
					</td>
					<%  
					coluna++;
					}
					%>
				<tr>
				<%
				linha++;
				}
				%>
			</table>
		</div>
		
		<!--  
		<div class="popUpAlterarLinha" id="popUpAlterarLinha">	
				<div class="containerFormAlterarLinha">
				
					<form action="/NWAmostra_/inserirCampo" method="post">
					<div style="width:90%; margin:30px 5% 0 5%;">
						<label class="lblEditarCelular" >Editar célula</label><br>
						<label class="lblExplicacaoEditarCelula" >Digite o novo conteúdo da célula: <%= linha %> - <%= coluna %> - <%= Conteudo.getId_projeto() %></label>
						<input type="text" class="txtEditarCelula" placeholder="Digite o conteúdo" id="idTxtEditarCelula" name="idTxtEditarCelula">
						
						<input type="hidden" id="inputLinha" name="inputLinha" value="<%= linha %>">
						<input type="hidden" id="inputColuna" name="inputColuna" value="<%= coluna %>">
						
						<input type="hidden" id="inputProjeto" name="inputProjeto" value="<%= Conteudo.getId_projeto() %>">						
					</div>
					<div class="containerBtnsConfCanEditarCelula">
						<input type="submit" value="Confirmar" class="inputConfirmarAlterarCelula">
					</div>
					</form>
					
					<div class="containerBtnsConfCanEditarCelula">
							<button  class="btnCancelarEditarCelula" onclick="location.href='javascript: fecharPopUpAlterarCelula();'">Cancelar</button>
					</div>
				</div>
		</div>-->
		
		<div class="containerMasterOpcoesAlterarTabela" id="idContainerMasterOpcoesAlterarTabela">
			<div class="containerOpcoesAlterarTabela">
			<button class="btnsOpcoesAlterarTabela palavrasAzul" onclick="location.href=''">Excluir célula</button>
			<button class="btnsOpcoesAlterarTabela palavrasAzul" onclick="location.href=''">Excluir coluna</button>
			<button class="btnsOpcoesAlterarTabela palavrasAzul" onclick="location.href=''">Excluir linha</button>
			<button class="btnsOpcoesAlterarTabela" style="color: #FF0000" onclick="location.href='javascript: fecharOpcoesAlterarTabela();'">Cancelar</button>
			</div>
		</div>
		
		<div class="popUpDestivarConta" id="popUpSairProjeto">
		<div class="containerInformacoesPopUp">
		
		<div class="containerTituloAvisoDesativarConta">
				<div style="width:100%;display: flex;justify-content: center;align-items: center; margin-top: 30px;">
				<label class="lblTituloAvisoDesativarConta" style="border-bottom: 4px solid #FF0000">ATENÇÃO</label></div>
				
				<div class="containerLblInfoDesativarConta">
				<label class="lblInfoDesativarConta">Tem certeza que deseja sair do projeto?</label>
				</div>
				
				<div class="containerMasterBtnsDesativarConta">
				<div class="containersBtnsDesativarConta">
					<button class="btnSimDesativarConta" onclick="location.href=''">Sim</button>
				</div>
				<div class="containersBtnsDesativarConta">
					<button class="btnCancelarDesativarConta" onclick="location.href='javascript: fecharPopUpSairProjeto();'">Cancelar</button>
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
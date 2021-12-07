<%@ include file="../../includes/validacao.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Meu Perfil</title>

<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>

</head>
<body>

			<% String nome_pesq = (String) request.getSession().getAttribute("nome_pesq"); 
               //String id = (String) request.getSession().getAttribute("id");  
               String email_pesq = (String) request.getSession().getAttribute("email_pesq");
               String cpf_pesq = (String) request.getSession().getAttribute("cpf_pesq");
               Integer id_lab_pesq = (Integer) request.getSession().getAttribute("idLabPesq");%>

	<%@ include file="../../includes/menuLogado.jsp" %>
	
	<div class="containerMeuPerfil">
		<div class="containerGeralMinhaConta">
			<div class="containerGeralPerfil"><label class="lblMeuPerfilGeral">Geral</label></div>
			<div class="containerMinhaConta">
				<div class="conatinerImagemMeuPerfil">
					<img src="../../img/imgPerfilExemplo.png" class="imagemMeuPerfil" id="" alt="Perfil">
				</div>
				<div class="containerBtnAlterarFoto">
					<button class="btnAlterarFoto" onclick="location.href=''">
					<img src="../../img/imgAlterarFoto.png" class="imgAlterarFoto" id="" alt="Alterar Foto">&nbsp;Alterar Foto</button>
				</div>
				
				<div class="containerMinhaContaTitulo">
					<label class="lblMinhaContaTitulo">Minha Conta</label>
				</div>
			</div>
		</div>
		
		<div class="containersInformacoesMeuPerfil">
			<div class="containerLinksMeuPerfil"><a href="editarPerfil.jsp" class="linksMeuPerfil palavrasAzul" >Editar Perfil</a></div>
			<div class="containerTxtsInformacoesMeuPerfil">
				<div class="containerLblsTituloInformacoesMeuPerfil"><label class="lblsTituloInformacoesMeuPerfil palavrasAzul">Nome</label></div>
				<input type="text" class="txtsInformacoesMeuPerfil" disabled="disabled" value="<%=nome_pesq%>"/>
			</div>
		</div>
		<div class="containersInformacoesMeuPerfil">
			<div class="containerLinksMeuPerfil">
			<% if(id_lab_pesq.equals(0)){%>
			<a href="criarLaboratorio.jsp" class="linkCriarInstituicaoMeuPerfil palavrasAzul">Criar instituição</a>
			<% } else{
			for(Instituicao ConteudoInstituicao : listaInstituicao){
			%>
			<a class="linkCriarInstituicaoMeuPerfil palavrasAzul"><%=ConteudoInstituicao.getNome_lab() %></a>
			<%} }%>
			</div>
			<div class="containerTxtsInformacoesMeuPerfil">
				<div class="containerLblsTituloInformacoesMeuPerfil"><label class="lblsTituloInformacoesMeuPerfil palavrasAzul">CPF</label></div>
				<input type="text" class="txtsInformacoesMeuPerfil" disabled="disabled" value="<%=cpf_pesq%>"/>
			</div>
		</div>
		<div class="containersInformacoesMeuPerfil">
			<div class="containerLinksMeuPerfil"><a href="/NWAmostra_/Logout" class="linksMeuPerfil linkDeslogar" >Sair</a></div>
			<div class="containerTxtsInformacoesMeuPerfil">
				<div class="containerLblsTituloInformacoesMeuPerfil"><label class="lblsTituloInformacoesMeuPerfil palavrasAzul">E-mail</label></div>
				<input type="text" class="txtsInformacoesMeuPerfil" disabled="disabled" value="<%=email_pesq%>"/>
			</div>
		</div>
		<div class="containersInformacoesMeuPerfil">
			<div class="containerLinksMeuPerfil" id="idContainerLinksMeuPerfilDesativarConta">
			<!--<a href="javascript: abrirPopUpDesativar();" class="linksMeuPerfil palavrasAzul" >Desativar  conta</a>--></div>
			<div class="containerTxtsInformacoesMeuPerfil">
				<div class="containerLblsTituloInformacoesMeuPerfil"><label class="lblsTituloInformacoesMeuPerfil palavrasAzul">Senha</label></div>
				<input type="text" class="txtsInformacoesMeuPerfil" disabled="disabled" value="******"/>
			</div>
		</div>
		
		<div class="containerLinksModoCelular">
			<div class="containerGeralPerfil containerGeralPerfilModoCelular"><label class="lblMeuPerfilGeral">Geral</label></div>
			<div class="containerLinksMeuPerfil containerLinksMeuPerfilModoCelular"><a href="editarPerfil.jsp" class="linksMeuPerfil palavrasAzul" >Editar Perfil</a></div>
			
			<div class="containerLinksMeuPerfil containerLinksMeuPerfilModoCelular">
			<% if(id_lab_pesq.equals(0)){%>
			<a href="criarLaboratorio.jsp" class="linksMeuPerfil palavrasAzul">Criar instituição</a>
			<% } else{
			for(Instituicao ConteudoInstituicao : listaInstituicao){
			%>
			<a class="linksMeuPerfil palavrasAzul"><%=ConteudoInstituicao.getNome_lab() %></a>
			<%} }%>
			</div>
			<div class="containerLinksMeuPerfil containerLinksMeuPerfilModoCelular"><a href="../../NWAmostra_/Logout" class="linksMeuPerfil linkDeslogar" >Sair</a></div>
		</div>
	</div>
	
	<%@ include file="../../includes/rodape.jsp" %>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Perfil</title>

<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>

</head>
<body>

	<%@ include file="../../includes/menuLogado.jsp" %>
	
	<div class="containerMeuPerfil">
		<div class="containerGeralMinhaContaEditarPerfil">
			<div class="containerGeralPerfil"><label class="lblMeuPerfilGeral">Geral</label></div>
			<div class="containerMinhaConta">
				<div class="conatinerImagemMeuPerfil">
					<img src="../../img/imgPerfilExemplo.png" class="imagemMeuPerfil" id="" alt="Perfil">
				</div>
				<div class="containerBtnAlterarFoto">
					<button class="btnAlterarFoto" onclick="location.href=''">
					<img src="../../img/imgAlterarFoto.png" class="imgAlterarFoto" id="" alt="Alterar Foto">&nbsp;Alterar Foto</button>
				</div>
				<div class="containerNomeMeuPerfil">
					<label class="lblNomeMeuPerfil">Josefina Bund Fin</label>
				</div>
				<div class="containerMinhaContaTitulo">
					<label class="lblMinhaContaTitulo">Minha Conta</label> &nbsp;<label  class="lblMinhaContaTituloEditando">(editando)</label>
				</div>
			</div>
		</div>
		
		<div class="containerLblEditarPerfilCelular">
			<label class="lblEditarPerfilCelular palavrasAzul">Editar Perfil</label>
		</div>
		
		<div class="containersInformacoesMeuPerfil">
			<div class="containerLinksMeuPerfil containerLinksMeuPerfilEditarPerfil"><a href="" class="linksMeuPerfil palavrasAzul" >Editar Perfil</a></div>
			<div class="containerTxtsInformacoesMeuPerfilEditarPerfil">
				<div class="containerLblsTituloInformacoesMeuPerfil"><label class="lblsTituloInformacoesMeuPerfil palavrasAzul">Nome</label></div>
				<input type="text" class="txtsInformacoesEditarPerfil" value="Josefina Bund Fin"/>
			</div>
		</div>
		<div class="containersInformacoesMeuPerfil">
			<div class="containerLinksMeuPerfil"><a href="https://nuwa-three.vercel.app/" class="linksMeuPerfil palavrasAzul" >Sobre a empresa</a></div>
			<div class="containerTxtsInformacoesMeuPerfilEditarPerfil">
				<div class="containerLblsTituloInformacoesMeuPerfil"><label class="lblsTituloInformacoesMeuPerfil palavrasAzul">CPF</label></div>
				<input type="text" class="txtsInformacoesEditarPerfil" value="000.000.000-00"/>
			</div>
		</div>
		
		<div class="containersInformacoesMeuPerfil">
			<div class="containerLinksMeuPerfil"><a href="" class="linksMeuPerfil palavrasAzul" >Sugestão</a></div>
			<div class="containerTxtsInformacoesEditarPerfil">
				<div class="containerLblsTituloInformacoesMeuPerfil"><label class="lblsTituloInformacoesMeuPerfil palavrasAzul">E-mail</label></div>
				<input type="text" class="txtsInformacoesEditarPerfil txtsInformacoesEditarPerfilEmail" value="josefinabundfin@gmail.com"/>
			</div>
			<div class="containerBtnsSetas">
			<button class="bntSetaEditarPerfil" onclick="location.href='confirmarEmailNovo.jsp'"><img alt="Seta" class="imgSetaEditarPerfil" src="../../img/setaEditarPerfil.png"></button>
			</div>
		</div>
		
		<div class="containersInformacoesMeuPerfil">
			<div class="containerLinksMeuPerfil"><a href="" class="linksMeuPerfil palavrasAzul" >Desativar  conta</a></div>
			<div class="containerTxtsInformacoesEditarPerfil">
				<div class="containerLblsTituloInformacoesMeuPerfil"><label class="lblsTituloInformacoesMeuPerfil palavrasAzul">Senha</label></div>
				<input type="text" class="txtsInformacoesMeuPerfil" disabled="disabled" value="******"/>
			</div>
			<div class="containerBtnsSetas">
			<button class="bntSetaEditarPerfil" onclick="location.href='alterarSenha.jsp'"><img alt="Seta" class="imgSetaEditarPerfil" src="../../img/setaEditarPerfil.png"></button>
			</div>
		</div>
		<div class="containersInformacoesMeuPerfil">
			<div class="containerLinksMeuPerfil"><a href="../index.jsp" class="linksMeuPerfil linkDeslogar" >Sair</a></div>
			<div class="containerTxtsInformacoesEditarPerfil">
				<div class="containerLblsTituloInformacoesMeuPerfil"><label class="lblsTituloInformacoesMeuPerfil palavrasAzul">Instituição</label></div>
				<input type="text" class="txtsInformacoesMeuPerfil" disabled="disabled" value="Não Possui"/>
			</div>
			<div class="containerBtnsSetas">
			<button class="bntSetaEditarPerfil" onclick="location.href=''">
			<img alt="Seta" class="imgSetaEditarPerfil" src="../../img/setaEditarPerfil.png"></button>
			</div>
		</div>
		
		<div class="containerBtnConcluirEditarPerfil">
			<button class="btnConcluirEditarPerfil" onclick="location.href=''">Concluir</button>
		</div>
	</div>	
</body>
</html>
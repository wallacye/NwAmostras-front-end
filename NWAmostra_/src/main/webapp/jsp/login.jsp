<%
    int erro;

    request.getSession().getAttribute("erro");
    if ((Integer) session.getAttribute("erro") == null){
       erro = 0;
    }
    else{
       erro = (Integer) session.getAttribute("erro") ;
    }
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <link rel="icon" type="img/png" href="../img/logoNwAmostrasClaro.png" />
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" type="text/css" href="../css/style.css" />
        <script type="text/javascript" src="../js/nwAmostrasScript.js" defer></script>

        <script type="text/javascript" src="../js/menuResponsivo.js" defer></script>
    </head>
    <body>
    
        <%@ include file="../includes/menu.jsp" %>

        <section>
            <div class="containerTelaLogin">
                <div class="containerInfoLogin">
                
                    <div class="containerTitulosLogin">
                        <button class="buttonLoginCadastro bntLogin" onclick="location.href='login.jsp'">Login</button>
                        <button class="buttonLoginCadastro" onclick="location.href='cadastro.jsp'">Cadastre-se</button>
                    </div>
                    
                    <form method="post" action="/NWAmostra_/Login">
                    <div class="containerEmailSenha">
                        <div class="containerLblsLoginCad"><label class="palavrasAzul lblsLoginCad">E-mail</label></div>
                        <input type="text" class="txtLoginCad" id="loginEmail" name="loginEmail" placeholder="Digite seu e-mail"/>
                    </div>
                    <div class="containerEmailSenha">
                        <div class="containerLblsLoginCad"><label class="palavrasAzul lblsLoginCad">Senha</label></div>
                        <input type="password" class="txtLoginCad" id="loginSenha" name="loginSenha" placeholder="Digite sua senha"/>
                    </div>
                    
                    <%
          			if (erro == 1){
        			%>
        			<div class="containerErrosLogin">
                    	<p class="errosLoginP">Email ou senha incorretos.</p>
                    </div>
        			<%
          			}else{
                        if (erro == 2){
               		 %>
               		 <div class="containerErrosLogin">
                            <p class="errosLoginP">Página restrita, efetue Login.</p>
                     </div>
                	<%
                        }}           
                	%>
                    
                    <div class="containerEsqueceuSenha">
                        <a class="palavrasAzul lblsLoginCad" href="">Esqueceu sua senha?</a>
                    </div>
                    <div class="containerBtnLogar">
                        <input class="bntLogar" type="submit" value="Logar">
                    </div>
                </form>
                </div>
            </div>
        </section>

        <%@ include file="../includes/rodape.jsp" %>    

    </body>
</html>
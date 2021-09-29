<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <link rel="icon" type="img/png" href="../img/logoNwAmostras.png" />
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
                    <form action="./jspLogado/indexLogado.jsp">
                    <div class="containerEmailSenha">
                        <div class="containerLblsLoginCad"><label class="palavrasAzul lblsLoginCad">E-mail</label></div>
                        <input type="text" class="txtLoginCad" placeholder="Digite seu e-mail"/>
                    </div>
                    <div class="containerEmailSenha">
                        <div class="containerLblsLoginCad"><label class="palavrasAzul lblsLoginCad">Senha</label></div>
                        <input type="password" class="txtLoginCad" placeholder="Digite sua senha"/>
                    </div>
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
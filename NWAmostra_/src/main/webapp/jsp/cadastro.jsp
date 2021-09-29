<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastre-se</title>
        <link rel="icon" type="img/png" href="./img/logoNwAmostras.png" />
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" type="text/css" href="../css/style.css" />
        <script type="text/javascript" src="../js/nwAmostrasScript.js" defer></script>

        <script type="text/javascript" src="../js/menuResponsivo.js" defer></script>
    </head>
    <body>
    
        <%@ include file="../includes/menu.jsp" %>
        
        </header>

        <section>
            <div class="containerTelaCad">
                <div class="containerInfoCad">
                    <div class="containerTitulosLogin">
                        <button class="buttonLoginCadastro" onclick="location.href='login.jsp'">Login</button>
                        <button class="buttonLoginCadastro bntCad" onclick="location.href='cadastro.jsp'">Cadastre-se</button>
                    </div>
                    <form>
                    <div class="containerEmailSenha">
                        <div class="containerLblsLoginCad"><label class="palavrasAzul lblsLoginCad">Nome*</label></div>
                        <input type="text" class="txtLoginCad" placeholder="Digite seu nome"/>
                    </div>
                    <div class="containerEmailSenha">
                        <div class="containerLblsLoginCad"><label class="palavrasAzul lblsLoginCad">CPF*</label></div>
                        <input type="text" class="txtLoginCad" placeholder="Digite seu CPF"/>
                    </div>
                    <div class="containerEmailSenha">
                        <div class="containerLblsLoginCad"><label class="palavrasAzul lblsLoginCad">E-mail*</label></div>
                        <input type="text" class="txtLoginCad" placeholder="Digite seu e-mail"/>
                    </div>
                    <div class="containerEmailSenha">
                        <div class="containerLblsLoginCad"><label class="palavrasAzul lblsLoginCad">Senha*</label></div>
                        <input type="password" class="txtLoginCad" placeholder="Digite sua senha"/>
                    </div>
                    <div class="containerEmailSenha">
                        <div class="containerLblsLoginCad"><label class="palavrasAzul lblsLoginCad">Confirmar Senha*</label></div>
                        <input type="password" class="txtLoginCad" placeholder="Confirme sua senha"/>
                    </div>

                    <div class="containerCamposObrigatorios">
                        <a class="lblCamposObrigatorios" >*Campos obrigatórios</a>
                    </div>
                    <div class="containerBtnLogar">
                        <input class="bntLogar" type="submit" value="Cadastrar">
                    </div>
                </form>
                </div>
            </div>
        </section>

        <%@ include file="../includes/rodape.jsp" %>      

    </body>
</html>
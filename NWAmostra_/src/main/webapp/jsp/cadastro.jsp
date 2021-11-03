<%
    int erro;

    request.getSession().getAttribute("erro");
   // int erro = (Integer) session.getAttribute("erro");
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
        <title>Cadastre-se</title>
        <link rel="icon" type="img/png" href="../img/logoNwAmostrasClaro.png" />
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" type="text/css" href="../css/style.css" />
        <script type="text/javascript" src="../js/nwAmostrasScript.js" defer></script>

        <script type="text/javascript" src="../js/menuResponsivo.js" defer></script>
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
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
                    
                    <form method="post" action="/NWAmostra_/inserirPesquisador">
                    <div class="containerEmailSenha">
                        <div class="containerLblsLoginCad"><label class="palavrasAzul lblsLoginCad">Nome*</label></div>
                        <input type="text" class="txtLoginCad" id="nomePesqTxtLoginCad" name="nomePesqTxtLoginCad" placeholder="Digite seu nome"/>
                        <%if (erro == 1){%>
                        <div class="containerErrosCadPesq">
                    	<p class="errosLoginP">Não pode conter caracteres especiais!</p>
                    	</div>
        				<%}%>
                    </div>
                    <div class="containerEmailSenha">
                        <div class="containerLblsLoginCad"><label class="palavrasAzul lblsLoginCad">CPF*</label></div>
                        <input type="text" class="txtLoginCad" onkeypress="$(this).mask('000.000.000-00');" id="cpfPesqTxtLoginCad" name="cpfPesqTxtLoginCad" placeholder="Digite seu CPF"/>
                    </div>
                    <div class="containerEmailSenha">
                        <div class="containerLblsLoginCad"><label class="palavrasAzul lblsLoginCad">E-mail*</label></div>
                        <input type="text" class="txtLoginCad" id="emailPesqTxtLoginCad" name="emailPesqTxtLoginCad" placeholder="Digite seu e-mail"/>
                    </div>
                    <div class="containerEmailSenha">
                        <div class="containerLblsLoginCad"><label class="palavrasAzul lblsLoginCad">Senha*</label></div>
                        <input type="password" class="txtLoginCad" id="senhaPesqTxtLoginCad" name="senhaPesqTxtLoginCad" placeholder="Digite sua senha"/>
                    </div>
                    <div class="containerEmailSenha">
                        <div class="containerLblsLoginCad"><label class="palavrasAzul lblsLoginCad">Confirmar Senha*</label></div>
                        <input type="password" class="txtLoginCad" id="confirmarSenhaPesqTxtLoginCad" name="confirmarSenhaPesqTxtLoginCad" placeholder="Confirme sua senha"/>
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
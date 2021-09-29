<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Artigos</title>
        <link rel="icon" type="img/png" href="./img/logoNwAmostras.png" />
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" type="text/css" href="../css/style.css" />
        <script type="text/javascript" src="../js/nwAmostrasScript.js" defer></script>

        <script type="text/javascript" src="../js/menuResponsivo.js" defer></script>
    </head>
    <body>
    
	<%@ include file="../includes/menu.jsp" %>
	
        <!--ComeÃ§o Artigos-->
        <div class="containerArtigo" id="idContainerArtigo">

            <div class="containerPesquisaFiltro">
                <button class="buttonPesquisarArtigo" onclick="location.href='#'">
                    <img src="../img/lupa.png" class="imgLupa" alt="">
                </button>
                
                <input type="text" class="inputBuscarArtigoIndex" placeholder="Buscar Artigos"/>

                <button class="buttonFiltrarArtigo" onclick="location.href='#'">
                    <img src="../img/filtro.png" class="imgFiltro" alt="">
                </button>
            </div>

            <div class="containerPrincipaisArtigos">
                <div class="principaisArtigos">
                    <div class="containerImgInfoArtigo">
                        <img src="../img/imgExemploArtigo.png" class="imgArtigoIndex" alt="">
                        <label class="palavrasAzul fonteDezoitoPx lblArtigosIndex">Nome do Projeto exemplo em modelo super mega extra grande...</label><br>
                        <label class="palavrasAzul fonteDezoitoPx lblArtigosIndex">Autor: </label><label class="palavrasPreto lblArtigosIndex">Exemplo 1, Exemplo 2, Exemplo 3</label><br>
                        <label class="palavrasAzul fonteDezoitoPx lblArtigosIndex">Data de publicação: </label><label class="palavrasPreto lblArtigosIndex">00/00/0000</label><br>
                        <label class="palavrasAzul fonteDezoitoPx lblArtigosIndex">Palavras-chaves: </label><label class="palavrasPreto lblArtigosIndex">exemplo a, exemplo b, exemplo c,  exemplo d</label>
                    </div>
                    <div class="containerResumoArtigo">
                        <label class="palavrasAzul fonteDezoitoPx lblArtigosIndex">Resumo: </label><label class="palavrasPreto lblArtigosIndex">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</label>
                    </div>
                </div>
                <div class="principaisArtigos">
                    <div class="containerImgInfoArtigo">
                        <img src="../img/imgExemploArtigo.png" class="imgArtigoIndex" alt="">
                        <label class="palavrasAzul fonteDezoitoPx lblArtigosIndex">Nome do Projeto exemplo em modelo super mega extra grande...</label><br>
                        <label class="palavrasAzul fonteDezoitoPx lblArtigosIndex">Autor: </label><label class="palavrasPreto lblArtigosIndex">Exemplo 1, Exemplo 2, Exemplo 3</label><br>
                        <label class="palavrasAzul fonteDezoitoPx lblArtigosIndex">Data de publicação: </label><label class="palavrasPreto lblArtigosIndex">00/00/0000</label><br>
                        <label class="palavrasAzul fonteDezoitoPx lblArtigosIndex">Palavras-chaves: </label><label class="palavrasPreto lblArtigosIndex">exemplo a, exemplo b, exemplo c,  exemplo d</label>
                    </div>
                    <div class="containerResumoArtigo">
                        <label class="palavrasAzul fonteDezoitoPx lblArtigosIndex">Resumo: </label><label class="palavrasPreto lblArtigosIndex">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</label>
                    </div>
                </div>
                <div class="principaisArtigos">
                    <div class="containerImgInfoArtigo">
                        <img src="../img/imgExemploArtigo.png" class="imgArtigoIndex" alt="">
                        <label class="palavrasAzul fonteDezoitoPx lblArtigosIndex">Nome do Projeto exemplo em modelo super mega extra grande...</label><br>
                        <label class="palavrasAzul fonteDezoitoPx lblArtigosIndex">Autor: </label><label class="palavrasPreto lblArtigosIndex">Exemplo 1, Exemplo 2, Exemplo 3</label><br>
                        <label class="palavrasAzul fonteDezoitoPx lblArtigosIndex">Data de publicação: </label><label class="palavrasPreto lblArtigosIndex">00/00/0000</label><br>
                        <label class="palavrasAzul fonteDezoitoPx lblArtigosIndex">Palavras-chaves: </label><label class="palavrasPreto lblArtigosIndex">exemplo a, exemplo b, exemplo c,  exemplo d</label>
                    </div>
                    <div class="containerResumoArtigo">
                        <label class="palavrasAzul fonteDezoitoPx lblArtigosIndex">Resumo: </label><label class="palavrasPreto lblArtigosIndex">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</label>
                    </div>
                </div>
            </div>
            <div class="containerBtnVerMais">
                <button class="bntVerMais" onclick="location.href=''">Ver mais</button>
            </div>

        </div>
        <!--Fim Artigos-->

		<%@ include file="../includes/rodape.jsp" %>

    </body>
</html>
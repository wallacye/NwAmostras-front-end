<%@ include file="../../includes/validacao.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Início</title>

		<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<link rel="stylesheet" type="text/css" href="../../css/style.css" />
		<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

        <script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>

	</head>
	<body>
	
	<%@ include file="../../includes/menuLogado.jsp" %>
	
	<!--Inicio do Carrossel-->
            <figure id="carrossel">
                    <div class="img-slider">
                        <div class="slide active">
                            <img src="https://image.freepik.com/fotos-gratis/retrato-de-pesquisadora-em-laboratorio-com-tubo-de-ensaio-e-espaco-de-copia_23-2148816383.jpg" alt="">
                        </div>
                        <div class="slide">
                            <img src="https://image.freepik.com/fotos-gratis/close-up-mao-segurando-o-tubo-do-laboratorio_23-2148794441.jpg" alt="">
                        </div>
                        <div class="slide">
                            <img src="https://image.freepik.com/fotos-gratis/medico-usando-mascara-facial-no-hospital_23-2148728373.jpg" alt="">
                        </div>
                        <div class="slide">
                            <img src="https://image.freepik.com/fotos-gratis/pesquisador-embacado-segurando-objetos-de-vidro_23-2148794433.jpg" alt="">
                        </div>
                        <div class="slide">
                            <img src="https://image.freepik.com/fotos-gratis/retrato-de-pesquisadora-em-laboratorio-com-tubo-de-ensaio-e-espaco-de-copia_23-2148816383.jpg" alt="">
                        </div>
                        <div class="navigation">
                            <div class="btn active"></div>
                            <div class="btn"></div>
                            <div class="btn"></div>
                            <div class="btn"></div>
                            <div class="btn"></div>
                        </div>
                    </div>
          
                <body onload="carrossel()">
            </figure> 
        <!--Fim do Carrossel-->

        <div class="nwAmostrasIntroducao">
            <label class="tituloNwAmostras">NW AMOSTRAS</label><br>
            <div class="decoracaoTitulos"></div>
            <div class="divTxtNwAmostras">
            <Label class="txtNwAmostras">
                O sistema NW Amostras auxilia instituições científicas na organização e monitoramento de dados, apoiando os técnicos biomédicos em seus laboratórios tornando sua pesquisa mais simples de ser efetuada.
                <br>
                O programa traz isso de uma forma moderna, prática, intuitiva e de fácil acesso para que os pesquisadores de todas as idades possam utilizar sem grandes dificuldades. 
            </Label>
            </div>
        </div>

        <!--Inicio das Funcionalidades-->
        <div class="conhecaNossasFuncionalidades" id="idConhecaNossasFuncionalidades">
            <label class="tituloNwAmostras">CONHEÇA NOSSAS FUNCIONALIDADES</label><br>
            <div class="decoracaoTitulos"></div>

            <div class="containerImagemTxts">
                <div class="imgFuncionalidades">
                    <img src="../../img/imgCriarProjetos.png" alt="">
                </div>

                <div class="txtFuncionalidades">
                    <div class="containerTituloTxtFuncionalidades">
                        <div class="divTitulosFuncionalidades"><label class="tituloFuncionalidadesIndex palavrasAzul">CRIA PROJETOS</label></div><br>
                        <label class="txtFuncionalidadesIndex">A criação de projetos facilita na organização dos dados de pesquisas, seja ela solo ou grupal, de forma simples e rápida para que não haja perca de tempo no seu trabalho.</label>
                    </div>
                </div>

                <div class="imgFuncionalidades mudancaPosicaoImgUmIndex">
                    <img src="../../img/imgCriarMapaAmostraIndex.png" alt="">
                </div>

                <div class="txtFuncionalidades">
                    <div class="containerTituloTxtFuncionalidades">
                        <div class="divTitulosFuncionalidades"><label class="tituloFuncionalidadesIndex palavrasAzul">CRIA MAPA DE AMOSTRAS</label></div><br>
                        <label class="txtFuncionalidadesIndex">A criação do mapa de amostras desenvolvida de modo minimalista auxilia na sua visualização e não compromete sua funcionalidade, trazendo rapidez ao trabalho.</label>
                    </div>
                </div>

                <div class="imgFuncionalidades mudancaPosicaoImgDoisIndex">
                    <img src="../../img/imgCriarMapaAmostraIndex.png" alt="">
                </div>

            </div>
        </div>
        <!--Fim das Funcionalidades-->

		<%@ include file="../../includes/rodape.jsp" %>
	
	</body>
</html>
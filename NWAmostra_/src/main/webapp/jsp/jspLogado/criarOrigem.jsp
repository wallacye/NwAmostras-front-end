<%@ include file="../../includes/validacao.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Criar Origem</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>

<script type="text/javascript" >
 
        $(document).ready(function() {
 
            function limpa_formul�rio_cep() {
                // Limpa valores do formul�rio de cep.
                $("#idTxtRuaCriarAmostra").val("");
                $("#idTxtBairroCriarAmostra").val("");
            }
             
            //Quando o campo cep perde o foco.
            $("#idTxtCepCriarAmostra").blur(function() {
 
                //Nova vari�vel "cep" somente com d�gitos.
                var cep = $(this).val().replace(/\D/g, '');
 
                //Verifica se campo cep possui valor informado.
                if (cep != "") {
 
                    //Express�o regular para validar o CEP.
                    var validacep = /^[0-9]{8}$/;
 
                    //Valida o formato do CEP.
                    if(validacep.test(cep)) {
 
                        //Preenche os campos com "..." enquanto consulta webservice.
                        $("#idTxtRuaCriarAmostra").val("...");
                        $("#idTxtBairroCriarAmostra").val("...");
 
                        //Consulta o webservice viacep.com.br/
                        $.getJSON("//viacep.com.br/ws/"+ cep +"/json/?callback=?", function(dados) {
 
                            if (!("erro" in dados)) {
                                //Atualiza os campos com os valores da consulta.
                                $("#idTxtRuaCriarAmostra").val(dados.logradouro);
                                $("#idTxtBairroCriarAmostra").val(dados.bairro);
                            } //end if.
                            else {
                                //CEP pesquisado n�o foi encontrado.
                                limpa_formul�rio_cep();
                                alert("CEP n�o encontrado.");
                            }
                        });
                    } //end if.
                    else {
                        //cep � inv�lido.
                        limpa_formul�rio_cep();
                        alert("Formato de CEP inv�lido.");
                    }
                } //end if.
                else {
                    //cep sem valor, limpa formul�rio.
                    limpa_formul�rio_cep();
                }
            });
        });
 
    </script>

</head>
<body>
	<%@ include file="../../includes/menuLogado.jsp" %>
	
	<div class="containerTelaCriarOrigem">
		<div class="containerInfosCriarOrigem">
		
		<form method="post" action="/NWAmostra_/inserirOrigem">
		
			<div class="containerTituloCriarOrigem">
				<p class="txtCriarOrigem">Criar Origem</p>
			</div>
			
			<div class="containerMetadeOrigem">
			<p class="txtOrigem" >Origem</p>
            
                <div class="containerEspa�osFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Nome da institui��o</label></div>
                    <input type="text" class="txtsCriarAmostra" id="idTxtNomeInstituicaoOrigem" name="idTxtNomeInstituicaoOrigem" placeholder="Digite o nome da institui��o de origem"/>
                </div>
                
                <div class="containerEspa�osFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">CEP</label></div>
                    <input type="text" class="txtsCriarAmostra"  id="idTxtCepCriarAmostra" name="idTxtCepCriarAmostra" placeholder="Digite o CEP de origem"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Rua</label></div>
                    <input type="text" class="txtsCriarAmostra" id="idTxtRuaCriarAmostra" name="idTxtRuaCriarAmostra" placeholder="Digite a rua de origem"/>
                </div>
               
              </div>
              
              <div class="containerMetadeOrigem">
              
              <p class="txtOrigem" >&nbsp;</p>
              
                <div class="containerEspa�osFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra lblBairroCriarOrigemMargin"><label class="lblsCriarAmostra palavrasAzul">Bairro</label></div>
                    <input type="text" class="txtsCriarAmostra" id="idTxtBairroCriarAmostra" name="idTxtBairroCriarAmostra" placeholder="Digite o bairro de origem"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">N�mero</label></div>
                    <input type="text" class="txtsCriarAmostra" id="idTxtNumeroOrigem" name="idTxtNumeroOrigem" placeholder="Digite o n�mero de origem"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Complemento</label></div>
                    <input type="text" class="txtsCriarAmostra" id="idTxtComplementoOrigem" name="idTxtComplementoOrigem" placeholder="Digite o complemento de origem"/>
                </div>
              </div>
              
              <div class="containerBtnCriarOrigem">
              	<input class="btnCriarOrigem" id="idBtnCriarOrigem" type="submit" value="Criar">
              </div>
              </form>
		</div>
	</div>

	<%@ include file="../../includes/rodape.jsp" %>

</body>
</html>
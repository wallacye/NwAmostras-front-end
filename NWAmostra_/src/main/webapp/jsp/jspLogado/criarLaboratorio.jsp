<%@page import="model.Origem"  %>

<%@page import="crudAmostra.exibirOrigens" %>

<%@page import="java.util.ArrayList"%>

<%  
//String id = (String) request.getSession().getAttribute("id"); 
%>

<%@ include file="../../includes/validacao.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Criar Institui��o</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>

<link rel="stylesheet" type="text/css" href="../../css/style.css" />

<script type="text/javascript" >
 
        $(document).ready(function() {
 
            function limpa_formul�rio_cep() {
                // Limpa valores do formul�rio de cep.
                $("#txtRuaAvenidaIntituicao").val("");
                $("#txtBairroIntituicao").val("");
            }
             
            //Quando o campo cep perde o foco.
            $("#txtCEPInstituicao").blur(function() {
 
                //Nova vari�vel "cep" somente com d�gitos.
                var cep = $(this).val().replace(/\D/g, '');
 
                //Verifica se campo cep possui valor informado.
                if (cep != "") {
 
                    //Express�o regular para validar o CEP.
                    var validacep = /^[0-9]{8}$/;
 
                    //Valida o formato do CEP.
                    if(validacep.test(cep)) {
 
                        //Preenche os campos com "..." enquanto consulta webservice.
                        $("#txtRuaAvenidaIntituicao").val("...");
                        $("#txtBairroIntituicao").val("...");
 
                        //Consulta o webservice viacep.com.br/
                        $.getJSON("//viacep.com.br/ws/"+ cep +"/json/?callback=?", function(dados) {
 
                            if (!("erro" in dados)) {
                                //Atualiza os campos com os valores da consulta.
                                $("#txtRuaAvenidaIntituicao").val(dados.logradouro);
                                $("#txtBairroIntituicao").val(dados.bairro);
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
	
	<div class="containerTelaCriarLaboratorio">
    <div class="containerInfoCriarLaboratorio">
       <div class="containerTituloCriarlaboratorio">
        <p class="txtCriarLaboratorio" >Criar Institui��o</p> 
       </div>
        
        
    	<form method="post" action="/NWAmostra_/inserirInstituicao">
        
        <div class="Espa�osdoformsCriarLaboratorio">
        	
            <div class="containerTxtsCriarDados">   
            
            
                <div class="containerEspa�osFormsCriarLaboratorio">
                    <div class="containerLblsCriarLaboratorio "><label class="lblsCriarLaboratorio palavrasAzul">Nome*</label></div>
                    <input type="text" class="txtsCriarLaboratorio" placeholder="Digite o nome da institui��o" id="txtNomeInstituicao" name="txtNomeInstituicao"/>
                </div>
                <div class="containerEspa�osFormsCriarLaboratorio">
                    <div class="containerLblsCriarLaboratorio "><label class="lblsCriarLaboratorio palavrasAzul">CNPJ*</label></div>
                    <input type="text" class="txtsCriarLaboratorio" placeholder="Digite o CNPJ da institui��o" id="txtCNPJInstituicao" name="txtCNPJInstituicao"/>
                </div>
                <div class="containerEspa�osFormsCriarLaboratorio">
                    <div class="containerLblsCriarLaboratorio "><label class="lblsCriarLaboratorio palavrasAzul">Telefone*</label></div>
                    <input type="text" class="txtsCriarLaboratorio" placeholder="Digite o telefone da institui��o" id="txtTelefoneInstituicao" name="txtTelefoneInstituicao"/>
                </div>
                <div class="containerEspa�osFormsCriarLaboratorio">
                    <div class="containerLblsCriarLaboratorio "><label class="lblsCriarLaboratorio palavrasAzul">CEP*</label></div>
                    <input type="text" class="txtsCriarLaboratorio" placeholder="Digite o CEP da institui��o" id="txtCEPInstituicao" name="txtCEPInstituicao"/>
                </div>
                
                </div>  
            
            <div class="containerTxtsCriarDados">
            	
            	
            	<div class="containerEspa�osFormsCriarLaboratorio">
                    <div class="containerLblsCriarLaboratorio"><label class="lblsCriarLaboratorio palavrasAzul ">Rua ou avenida*</label></div>
                    <input type="text" class="txtsCriarLaboratorio" placeholder="Digite a rua ou avenida da institui��o" id="txtRuaAvenidaIntituicao" name="txtRuaAvenidaIntituicao"/>
                </div>
                <div class="containerEspa�osFormsCriarLaboratorio">
                    <div class="containerLblsCriarLaboratorio"><label class="lblsCriarLaboratorio palavrasAzul ">N�mero*</label></div>
                    <input type="text" class="txtsCriarLaboratorio" placeholder="Digite o n�mero da institui��o" id="txtNumeroIntituicao" name="txtNumeroIntituicao"/>
                </div>
            	<div class="containerEspa�osFormsCriarLaboratorio">
                    <div class="containerLblsCriarLaboratorio"><label class="lblsCriarLaboratorio palavrasAzul ">Bairro*</label></div>
                    <input type="text" class="txtsCriarLaboratorio" placeholder="Digite o bairro da institui��o" id="txtBairroIntituicao" name="txtBairroIntituicao"/>
                </div>
                <div class="containerEspa�osFormsCriarLaboratorio">
                    <div class="containerLblsCriarLaboratorio"><label class="lblsCriarLaboratorio palavrasAzul ">Complemento</label></div>
                    <input type="text" class="txtsCriarLaboratorio" placeholder="Digite o complemento da institui��o" id="txtComplementoIntituicao" name="txtComplementoIntituicao"/>
                </div>
            	<input type="hidden" value="<%= id %>" id="inputAdministrador" name="inputAdministrador">            	
            </div>
            

        
        
        <div class="containerBtnCriarInstituicao">
            <input class="btnCriarLaboratorio" type="submit" value="Criar">
        </div>
       </div>
       </form>

   
    </div>  
    </div>
	
	
	
</body>
</html>
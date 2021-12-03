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
<title>Criar Instituição</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>

<link rel="stylesheet" type="text/css" href="../../css/style.css" />

<script type="text/javascript" >
 
        $(document).ready(function() {
 
            function limpa_formulário_cep() {
                // Limpa valores do formulário de cep.
                $("#txtRuaAvenidaIntituicao").val("");
                $("#txtBairroIntituicao").val("");
            }
             
            //Quando o campo cep perde o foco.
            $("#txtCEPInstituicao").blur(function() {
 
                //Nova variável "cep" somente com dígitos.
                var cep = $(this).val().replace(/\D/g, '');
 
                //Verifica se campo cep possui valor informado.
                if (cep != "") {
 
                    //Expressão regular para validar o CEP.
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
                                //CEP pesquisado não foi encontrado.
                                limpa_formulário_cep();
                                alert("CEP não encontrado.");
                            }
                        });
                    } //end if.
                    else {
                        //cep é inválido.
                        limpa_formulário_cep();
                        alert("Formato de CEP inválido.");
                    }
                } //end if.
                else {
                    //cep sem valor, limpa formulário.
                    limpa_formulário_cep();
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
        <p class="txtCriarLaboratorio" >Criar Instituição</p> 
       </div>
        
        
    	<form method="post" action="/NWAmostra_/inserirInstituicao">
        
        <div class="EspaçosdoformsCriarLaboratorio">
        	
            <div class="containerTxtsCriarDados">   
            
            
                <div class="containerEspaçosFormsCriarLaboratorio">
                    <div class="containerLblsCriarLaboratorio "><label class="lblsCriarLaboratorio palavrasAzul">Nome*</label></div>
                    <input type="text" class="txtsCriarLaboratorio" placeholder="Digite o nome da instituição" id="txtNomeInstituicao" name="txtNomeInstituicao"/>
                </div>
                <div class="containerEspaçosFormsCriarLaboratorio">
                    <div class="containerLblsCriarLaboratorio "><label class="lblsCriarLaboratorio palavrasAzul">CNPJ*</label></div>
                    <input type="text" class="txtsCriarLaboratorio" placeholder="Digite o CNPJ da instituição" id="txtCNPJInstituicao" name="txtCNPJInstituicao"/>
                </div>
                <div class="containerEspaçosFormsCriarLaboratorio">
                    <div class="containerLblsCriarLaboratorio "><label class="lblsCriarLaboratorio palavrasAzul">Telefone*</label></div>
                    <input type="text" class="txtsCriarLaboratorio" placeholder="Digite o telefone da instituição" id="txtTelefoneInstituicao" name="txtTelefoneInstituicao"/>
                </div>
                <div class="containerEspaçosFormsCriarLaboratorio">
                    <div class="containerLblsCriarLaboratorio "><label class="lblsCriarLaboratorio palavrasAzul">CEP*</label></div>
                    <input type="text" class="txtsCriarLaboratorio" placeholder="Digite o CEP da instituição" id="txtCEPInstituicao" name="txtCEPInstituicao"/>
                </div>
                
                </div>  
            
            <div class="containerTxtsCriarDados">
            	
            	
            	<div class="containerEspaçosFormsCriarLaboratorio">
                    <div class="containerLblsCriarLaboratorio"><label class="lblsCriarLaboratorio palavrasAzul ">Rua ou avenida*</label></div>
                    <input type="text" class="txtsCriarLaboratorio" placeholder="Digite a rua ou avenida da instituição" id="txtRuaAvenidaIntituicao" name="txtRuaAvenidaIntituicao"/>
                </div>
                <div class="containerEspaçosFormsCriarLaboratorio">
                    <div class="containerLblsCriarLaboratorio"><label class="lblsCriarLaboratorio palavrasAzul ">Número*</label></div>
                    <input type="text" class="txtsCriarLaboratorio" placeholder="Digite o número da instituição" id="txtNumeroIntituicao" name="txtNumeroIntituicao"/>
                </div>
            	<div class="containerEspaçosFormsCriarLaboratorio">
                    <div class="containerLblsCriarLaboratorio"><label class="lblsCriarLaboratorio palavrasAzul ">Bairro*</label></div>
                    <input type="text" class="txtsCriarLaboratorio" placeholder="Digite o bairro da instituição" id="txtBairroIntituicao" name="txtBairroIntituicao"/>
                </div>
                <div class="containerEspaçosFormsCriarLaboratorio">
                    <div class="containerLblsCriarLaboratorio"><label class="lblsCriarLaboratorio palavrasAzul ">Complemento</label></div>
                    <input type="text" class="txtsCriarLaboratorio" placeholder="Digite o complemento da instituição" id="txtComplementoIntituicao" name="txtComplementoIntituicao"/>
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
<%@page import="model.Origem"  %>

<%@page import="crudAmostra.exibirOrigens" %>

<%@page import="java.util.ArrayList"%>


<%@ include file="../../includes/validacao.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Criar Laboratório</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />

</head>
<body>
	<%@ include file="../../includes/menuLogado.jsp" %>
	
	<div class="containerTelaCriarLaboratorio">
    <div class="containerInfoCriarLaboratorio">
       <div class="containerTituloCriarlaboratorio">
        <p class="txtCriarLaboratorio" >Criar Laboratório</p> 
       </div>
        
        <form>
        
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
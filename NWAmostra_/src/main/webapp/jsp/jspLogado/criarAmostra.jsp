<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Criar Amostra</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostras.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>
</head>
<body>
	<%@ include file="../../includes/menuLogado.jsp" %>
	
	<div class="containerTelaCriarAmostra">
    <div class="containerInfoCriarAmostra">
       <div class="containerTituloCriarAmostra">
        <p class="txtCriarAmostra" >Criar Amostra</p> 
       </div>
        
        <form>
        <div class="EspaçosdoformsCriarAmostra">
        	
            <div class="containerTxtsCriarDadosOrigem">   
            
            <p class="txtDados" >Dados</p>
            
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra "><label class="lblsCriarAmostra palavrasAzul">Código*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o código da amostra"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Nome*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o nome da amostra"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra">
                
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Categoria*</label></div>
                    <input type="text" class="txtsCriarAmostra" list="listCategoria" placeholder="Selecione a categoria da amostra"/>
                    <datalist class="listCatgoria" id="listCategoria">
    					<option class="optionListCatgoria palavrasAzul" value="Bactéria"></option>
						<option class="optionListCatgoria palavrasAzul" value="Fungo"></option>
						<option class="optionListCatgoria palavrasAzul" value="Parasita"></option>
						<option class="optionListCatgoria palavrasAzul" value="Príon"></option>
						<option class="optionListCatgoria palavrasAzul" value="Vírus"></option>
  					</datalist>
                </div>
                
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Tipo*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o tipo da amostra (ex: DNA, plasma...)"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Volume (uL)*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o volume da amostra"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Data de Coleta*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite a data da coleta da amostra"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Hora da Coleta*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite a hora da coleta da amostra"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Coletador*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o nome do coletador e selecione"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Data de Validade*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite a data de validade da amostra"/>
                </div>
            </div>
            
            <div class="containerTxtsCriarDadosOrigem">
            
            <p class="txtOrigem" >Origem</p>
            
                <div class="containerEspaçosFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Nome da instituição</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o nome da instituição de origem"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Endereço*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o endereço de origem"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">CEP</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o bairro de origem"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Bairro</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o bairro de origem"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Número</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o número de origem"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Complemento</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o complemento de origem"/>
                </div>
            </div>
            
        </div>
        
        <div class="containerLblTxtAnotacoes">
             <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Anotações*</label></div>
             <input type="text" class="txtsCriarAmostraAnotacao" placeholder="Digite as anotações da amostra"/>
             <p class="lblCamposObrigatorios" style="text-align: right; margin-top: 20px;">*Campos obrigatórios</p>
        </div>
        
        <div class="containerBtnCriarAmostra">
            <input class="btnCriarAmostra" type="submit" value="Criar">
        </div>
       
       </form>

       <!-- <div class="containerTituloCriarAmostra"> </div> Colocar isso qnd for fazer a outra parte do form-->
    </div>  
    </div>
	
	<%@ include file="../../includes/rodape.jsp" %>
	
</body>
</html>
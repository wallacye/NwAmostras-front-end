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
        <div class="Espa�osdoformsCriarAmostra">
        	
            <div class="containerTxtsCriarDadosOrigem">   
            
            <p class="txtDados" >Dados</p>
            
                <div class="containerEspa�osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra "><label class="lblsCriarAmostra palavrasAzul">C�digo*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o c�digo da amostra"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Nome*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o nome da amostra"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra">
                
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Categoria*</label></div>
                    <input type="text" class="txtsCriarAmostra" list="listCategoria" placeholder="Selecione a categoria da amostra"/>
                    <datalist class="listCatgoria" id="listCategoria">
    					<option class="optionListCatgoria palavrasAzul" value="Bact�ria"></option>
						<option class="optionListCatgoria palavrasAzul" value="Fungo"></option>
						<option class="optionListCatgoria palavrasAzul" value="Parasita"></option>
						<option class="optionListCatgoria palavrasAzul" value="Pr�on"></option>
						<option class="optionListCatgoria palavrasAzul" value="V�rus"></option>
  					</datalist>
                </div>
                
                <div class="containerEspa�osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Tipo*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o tipo da amostra (ex: DNA, plasma...)"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Volume (uL)*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o volume da amostra"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Data de Coleta*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite a data da coleta da amostra"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Hora da Coleta*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite a hora da coleta da amostra"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Coletador*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o nome do coletador e selecione"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Data de Validade*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite a data de validade da amostra"/>
                </div>
            </div>
            
            <div class="containerTxtsCriarDadosOrigem">
            
            <p class="txtOrigem" >Origem</p>
            
                <div class="containerEspa�osFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Nome da institui��o</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o nome da institui��o de origem"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Endere�o*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o endere�o de origem"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">CEP</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o bairro de origem"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Bairro</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o bairro de origem"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">N�mero</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o n�mero de origem"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Complemento</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o complemento de origem"/>
                </div>
            </div>
            
        </div>
        
        <div class="containerLblTxtAnotacoes">
             <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Anota��es*</label></div>
             <input type="text" class="txtsCriarAmostraAnotacao" placeholder="Digite as anota��es da amostra"/>
             <p class="lblCamposObrigatorios" style="text-align: right; margin-top: 20px;">*Campos obrigat�rios</p>
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
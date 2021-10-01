<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Criar Amostra</title>
<link rel="icon" type="img/png" href="../../img/logoNwAmostrasClaro.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<script type="text/javascript" src="../../js/nwAmostrasScript.js" defer></script>

<script type="text/javascript" src="../../js/menuResponsivo.js" defer></script>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>

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
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o c�digo da amostra" id="txtCodigoAmostra" name="txtCodigoAmostra"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Nome*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o nome da amostra" id="txtNomeAmostra" name="txtNomeAmostra"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra">
                
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Categoria*</label></div>
                    <input type="text" class="txtsCriarAmostra" list="listCategoria" placeholder="Selecione a categoria da amostra" id="txtCategoriaAmostra" name="txtCategoriaAmostra"/>
                    <datalist class="listCatgoria" id="listCategoria">
    					<option class="optionListCatgoria palavrasAzul" value="1">Bact�ria</option>
						<option class="optionListCatgoria palavrasAzul" value="2">Fungo</option>
						<option class="optionListCatgoria palavrasAzul" value="4">Parasita</option>
						<option class="optionListCatgoria palavrasAzul" value="3">Pr�on</option>
						<option class="optionListCatgoria palavrasAzul" value="5">V�rus</option>
  					</datalist>
                </div>
                
                <div class="containerEspa�osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Tipo*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o tipo da amostra (ex: DNA, plasma...)" id="txtTipoAmostra" name="txtTipoAmostra"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Volume (uL)*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o volume da amostra" id="txtVolumeAmostra" name="txtVolumeAmostra"/>
                </div>
                
            </div>
            
            <div class="containerTxtsCriarDadosOrigem">
            	
            	<p class="txtOrigem" >&nbsp;</p>
            	
            	<div class="containerEspa�osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Data de Coleta*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite a data da coleta da amostra" id="txtDataColetaAmostra" name="txtDataColetaAmostra"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Hora da Coleta*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite a hora da coleta da amostra" id="txtHoraColetaAmostra" name="txtHoraColetaAmostra"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Coletador</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o nome do coletador e selecione" id="txtColetadorAmostra" name="txtColetadorAmostra"/>
                </div>
                <div class="containerEspa�osFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Data de Validade*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite a data de validade da amostra" id="txtDataValidadeAmostra" name="txtDataValidadeAmostra"/>
                </div>
            	
            	<div class="containerLblTxtAnotacoes">
             		<div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Anota��es*</label></div>
             		<textarea class="txtsCriarAmostraAnotacao" placeholder="Digite as anota��es da amostra"/></textarea>
        		</div>
            	
            </div>
            
        </div>
        
        <div class="containerOrigemAmostra">
        	<p class="txtOrigem" >Origem</p>
        	<div class="containerEspa�osFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Selecione a institui��o</label></div>
                    <input type="text" class="txtInputOrigemAmostra" placeholder="Selecione a institui��o de origem"/>
                    <a href="criarOrigem.jsp" class="linkCriarOrigem palavrasAzul">N�o encontrou a institui��o de origem? Crie aqui!</a>
            		<p class="lblCamposObrigatorios" style="text-align: right; margin-top: 20px;">*Campos obrigat�rios</p>
            </div>
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
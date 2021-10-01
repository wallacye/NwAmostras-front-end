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
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>


<script type="text/javascript" >
 
        $(document).ready(function() {
 
            function limpa_formulário_cep() {
                // Limpa valores do formulário de cep.
                $("#idTxtRuaCriarAmostra").val("");
                $("#idTxtBairroCriarAmostra").val("");
            }
             
            //Quando o campo cep perde o foco.
            $("#idTxtCepCriarAmostra").blur(function() {
 
                //Nova variável "cep" somente com dígitos.
                var cep = $(this).val().replace(/\D/g, '');
 
                //Verifica se campo cep possui valor informado.
                if (cep != "") {
 
                    //Expressão regular para validar o CEP.
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
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o código da amostra" id="txtCodigoAmostra" name="txtCodigoAmostra"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Nome*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o nome da amostra" id="txtNomeAmostra" name="txtNomeAmostra"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra">
                
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Categoria*</label></div>
                    <input type="text" class="txtsCriarAmostra" list="listCategoria" placeholder="Selecione a categoria da amostra" id="txtCategoriaAmostra" name="txtCategoriaAmostra"/>
                    <datalist class="listCatgoria" id="listCategoria">
    					<option class="optionListCatgoria palavrasAzul" value="1">Bactéria</option>
						<option class="optionListCatgoria palavrasAzul" value="2">Fungo</option>
						<option class="optionListCatgoria palavrasAzul" value="4">Parasita</option>
						<option class="optionListCatgoria palavrasAzul" value="3">Príon</option>
						<option class="optionListCatgoria palavrasAzul" value="5">Vírus</option>
  					</datalist>
                </div>
                
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Tipo*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o tipo da amostra (ex: DNA, plasma...)" id="txtTipoAmostra" name="txtTipoAmostra"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Volume (uL)*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o volume da amostra" id="txtVolumeAmostra" name="txtVolumeAmostra"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Data de Coleta*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite a data da coleta da amostra" id="txtDataColetaAmostra" name="txtDataColetaAmostra"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Hora da Coleta*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite a hora da coleta da amostra" id="txtHoraColetaAmostra" name="txtHoraColetaAmostra"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Coletador</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o nome do coletador e selecione" id="txtColetadorAmostra" name="txtColetadorAmostra"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Data de Validade*</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite a data de validade da amostra" id="txtDataValidadeAmostra" name="txtDataValidadeAmostra"/>
                </div>
            </div>
            
            <div class="containerTxtsCriarDadosOrigem">
            
            <p class="txtOrigem" >Origem</p>
            
                <div class="containerEspaçosFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Nome da instituição</label></div>
                    <input type="text" class="txtsCriarAmostra" placeholder="Digite o nome da instituição de origem"/>
                </div>
                
                <div class="containerEspaçosFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">CEP</label></div>
                    <input type="text" class="txtsCriarAmostra"  id="idTxtCepCriarAmostra" placeholder="Digite o CEP de origem"/>
                </div>
                <div class="containerEspaçosFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Rua*</label></div>
                    <input type="text" class="txtsCriarAmostra" id="idTxtRuaCriarAmostra" placeholder="Digite a rua de origem"/>
                </div>
                
                <div class="containerEspaçosFormsCriarAmostra2">
                    <div class="containerLblsCriarAmostra"><label class="lblsCriarAmostra palavrasAzul ">Bairro</label></div>
                    <input type="text" class="txtsCriarAmostra" id="idTxtBairroCriarAmostra" placeholder="Digite o bairro de origem"/>
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
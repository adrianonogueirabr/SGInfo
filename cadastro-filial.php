<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="javascript/cadastro_cliente.js"></script>
<title>Registro de Loja</title>
</head>

<body>
<form name="cliente" action="processa-filial.php?acao=cadastrar" method="post" >
<table class="table">
    <tr>
	    <td> <?php include "inicial.php"?> </td>
	</tr>
  <tr><td class=" table-primary"><h4>Cadastro de Loja</h4></td></tr>
  </table>
<table width="80%" align="center">
<tr>
<td>
<div class="form-row">
  <div class="form-group col-md-3 col-sm-6">
      <p class="font-weight-bold">TIPO PESSOA
      <select name="pessoa" id="pessoa" title="INFORME O TIPO DE FILIAL JURÍDICA OU FÍSICA" class="form-control">
      	  <option>SELECIONE</option>
          <option value="F">PESSOA FÍSICA</option>
			<option value="J">PESSOA JURÍDICA</option>
      </select>
      </p>
  </div>

  <div class="form-group col-sm-4 col-md-3">
    <p class="font-weight-bold">CPF/CNPJ<input name="cpfcnpj" class="form-control" type="text" required="true" id="cpfcnpj" maxlength="20" title="INFORME O CPF OU CNPJ" /> </p > 
  </div>

  <div class="form-group col-sm-4 col-md-6">
    <p class="font-weight-bold">RAZÃO SOCIAL<input name="razao" class="form-control" type="text" required="true" id="razao" maxlength="100" title="INFORME NOME/RAZAO SOCIAL" /> </p > 
  </div>

  <div class="form-group col-sm-4 col-md-6">
    <p class="font-weight-bold">NOME FANTASIA<input name="fantasia" class="form-control" type="text" required="true" id="fantasia" maxlength="100" onblur="adcionaRazaoFantasia()"  title="INFORME NOME FANTASIA" /> </p > 
  </div>

  <div class="form-group col-sm-4 col-md-3">
    <p class="font-weight-bold">DATA FUNDACAO<input name="data_fundacao" id="data_fundacao"  class="form-control" type="date" required="true" /> </p > 
  </div>

  <div class="form-group col-sm-4 col-md-3">
    <p class="font-weight-bold">TELEFONE<input name="telefone" id="telefone" class="form-control" type="text" required="true"  maxlength="20" title="INFORME TELEFONE SEJA CELULAR OU FIXO" placeholder="92991490000" /> </p > 
  </div>

  <div class="form-group col-sm-4 col-md-3">
    <p class="font-weight-bold">FAX<input name="fax" id="fax" class="form-control" type="text" required="true"  maxlength="20" title="INFORME NUMERO DO FAX CASO POSSUA" /> </p > 
  </div>

  <div class="form-group col-sm-4 col-md-3">
    <p class="font-weight-bold">RAMAL<input name="ramal" id="ramal" class="form-control" type="text" required="true"  maxlength="20" title="INFORME CASO POSSUA NUMERO DO RAMAL" /> </p > 
  </div>

  <div class="form-group col-sm-4 col-md-6">
    <p class="font-weight-bold">EMAIL<input name="email" id="email" class="form-control" type="text" required="true"  maxlength="100" title="INFORME EMAIL" /> </p > 
  </div>

  <div class="form-group col-sm-4 col-md-4">
    <p class="font-weight-bold">SITE<input name="site" id="site" class="form-control" type="text" required="true"  maxlength="100" title="INFORME SITE CASO POSSUA" /> </p > 
  </div>

  <div class="form-group col-sm-4 col-md-8">
    <p class="font-weight-bold">LOGRADOURO<input name="logradouro" id="logradouro" class="form-control" type="text" required="true"  maxlength="100" title="INFORME LOGRADOURO SEM NUMERO" placeholder="Rua / Avenida / Travessa"/> </p > 
  </div>
  
  <div class="form-group col-sm-4 col-md-2">
    <p class="font-weight-bold">NUMERO<input name="numero" id="numero" class="form-control" type="number" required="true" title="INFORME NUMERO"/> </p > 
  </div>

  <div class="form-group col-sm-4 col-md-2">
    <p class="font-weight-bold">CEP<input name="cep" id="cep" class="form-control" type="number" required="true" title="INFORME O CEP"/> </p > 
  </div>

  <div class="form-group col-sm-4 col-md-4">
    <p class="font-weight-bold">BAIRRO<input name="bairro" id="bairro" class="form-control" type="text" required="true" title="INFORME O BAIRRO" maxlength="40"/> </p > 
  </div>

  <div class="form-group col-sm-4 col-md-4">
    <p class="font-weight-bold">COMPLEMENTO<input name="complemento" id="complemento" class="form-control" type="text" required="true" title="INFORME COMPLEMENTO DO ENDERECO" maxlength="40"/> </p > 
  </div>

  <div class="form-group col-sm-4 col-md-3">
    <p class="font-weight-bold">CIDADE<input name="cidade" id="cidade" class="form-control" value="MANAUS" type="text" required="true" title="INFORME A CIDADE" maxlength="40"/> </p > 
  </div>

  <div class="form-group form-group-lg col-md-3 col-sm-6">
    	   <p class="font-weight-bold">ESTADO  
       		<select name="estado" id="estado" class="form-control" required>
           <option value="S">SELECIONE</option>
   	       <option value="AC">AC</option>
   	       <option value="AL">AL</option>
   	       <option value="AP">AP</option>
   	       <option value="AM">AM</option>
   	       <option value="BA">BA</option>
   	       <option value="CE">CE</option>
   	       <option value="ES">ES</option>
   	       <option value="DF">DF</option>
   	       <option value="MA">MA</option>
   	       <option value="MT">MT</option>
   	       <option value="MS">MS</option>
   	       <option value="MG">MG</option>
   	       <option value="PA">PA</option>
   	       <option value="PB">PB</option>
   	       <option value="PR">PR</option>
   	       <option value="PE">PE</option>
   	       <option value="PI">PI</option>
   	       <option value="RJ">RJ</option>
   	       <option value="RN">RN</option>
   	       <option value="RS">RS</option>
   	       <option value="RO">RO</option>
   	       <option value="RR">RR</option>
   	       <option value="SC">SC</option>
   	       <option value="SP">SP</option>
   	       <option value="SE">SE</option>
   	       <option value="TO">TO</option>
			</select>
		</p>
	</div>
  
  <div class="form-group col-sm-4 col-md-3">
    <p class="font-weight-bold">INSC. MUNICIPAL<input name="im" id="im" value="0" class="form-control" type="number" required="true" title="INFORME INSCRICAO MUNICIPAL CASO POSSUA" maxlength="20"/> </p > 
  </div>

  <div class="form-group col-sm-4 col-md-3">
    <p class="font-weight-bold">INSC. ESTADUAL<input name="ie" id="ie" value="0" class="form-control" type="text" required="true" title="INFORME INSCRICAO ESTADUAL CASO POSSUA" maxlength="20"/> </p > 
  </div>

  <div class="form-group col-sm-4 col-md-4">
    <p class="font-weight-bold">REGISTRO GERAL<input name="rg" id="rg" value="0" class="form-control" type="text" required="true" title="NFORME RG CASO PESSOA FISICA" maxlength="20"/> </p > 
  </div>

  <div class="form-group col-sm-4 col-md-4">
    <p class="font-weight-bold">VALOR MULTA<input name="multa" id="multa" value="0" class="form-control" type="double" required="true" title="NFORME VALOR DA MULTA"/> </p > 
  </div>

  <div class="form-group col-sm-4 col-md-4">
    <p class="font-weight-bold">VALOR JUROS<input name="juros" id="juros" value="0" class="form-control" type="double" required="true" title="NFORME JUROS POR DIA" /> </p > 
  </div>
  
  <div class="form-group col-md-2">
        <input type="submit" name="registrar"  value="Registrar Dados" class="btn btn-success btn-block" />
	</div>
</div>
  
</td>
</tr>
</table>
</form>
</body>
</html>
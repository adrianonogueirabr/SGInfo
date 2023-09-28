<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="javascript/cadastro_equipamento.js"></script>

<title>Registro de Equipamentos</title>
</head>
<?php 
//recebe o codigo do cliente para adcionar ao equipamento
$idcliente = $_GET['id'];

?>
<body>
<form name="equipamento" action="processa-equipamentos.php?acao=cadastrar" method="post" onSubmit="return validaForm()">
<table class="table">
    <tr>
	    <td> <?php include "inicial.php"?> </td>
	</tr>
  <tr><td class=" table-primary"><h4>Cadastro de Equipamentos</h4></td></tr>
  </table>
<table width="80%" align="center">
<tr>
<td>
  <div class="form-row">
  <div class="form-group col-md-3 col-sm-6">
      <p class="font-weight-bold">EQUIPAMENTO*
      <select name="tipo" id="tipo" title="SELECIONE O TIPO DE EQUIPAMENTO" class="form-control">
      	  <option>SELECIONE</option>
      	  <option value="NOTEBOOK">NOTEBOOK</option>
		      <option value="ALLINONE">ALL IN ONE</option>
          <option value="DESKTOP">DESKTOP</option>
          <option value="SERVIDOR">SERVIDOR</option>
      </select>
      </p>
  </div>
  <input name="cliente" hidden="" type="text" id="cliente" value="<?php echo $idcliente ?>" />

	<div class="form-group col-sm-6 col-md-5">
    <p class="font-weight-bold">SETOR*<input name="setor" class="form-control" type="text" required="true" id="setor" maxlength="50" title="INFORME SETOR DO EQUIPAMENTO" /> </p > 
  </div>

  <div class="form-group col-sm-6 col-md-4">
    <p class="font-weight-bold">NOME NA REDE<input name="nomerede" class="form-control" type="text" id="nomerede" maxlength="50" title="INFORME O NOME NA REDE" /> </p>
  </div>

  <div class="form-group col-sm-6 col-md-5">  
    <p class="font-weight-bold">RESPONSAVEL*
    <input name="utilizadores" type="text" id="utilizadores" class="form-control" required="required" maxlength="20" title="INFORME O NOME DOS UTILIZADORES" /></p>
  </div>
  
  <div class="form-group col-sm-6 col-md-4">
    <p class="font-weight-bold">LOGIN*
    <input name="login" type="text" id="login"  class="form-control" required="required" maxlength="20" title="INFORME LOGIN DO EQUIPAMENTO" /></p>
  </div>

  <div class="form-group col-sm-6 col-md-3">
    <p class="font-weight-bold">SENHA*
    <input name="senha" type="text" id="senha" class="form-control" required="required" maxlength="20" title="INFORME SENHA DO EQUIPAMENTO"/></p>
  </div>

  <div class="form-group col-sm-12 col-md-6">
    <p class="font-weight-bold">UTILIZAÇÃO*<input name="descricao" class="form-control" type="text" required="required" id="descricao" maxlength="50" title="DESCREVA AS FUNÇÕES DO EQUIPAMENTO" /> </p>   
  </div>

  <div class="form-group col-sm-12 col-md-6">
    <p class="font-weight-bold">PROCESSADOR
    <input name="processador" type="text" id="processador" class="form-control" maxlength="20" title="INFORME O TIPO E VELOCIDADE DO PROCESSADOR I3 - 3.2 GHZ" /></p>
  </div>

  <div class="form-group col-sm-6 col-md-3">
    <p class="font-weight-bold">HD*
    <input name="hd" type="number" id="hd" title="INFORME A CAPACIDADE DO HD EM GB OU ZERO" class="form-control" value="0"  /></p>
  </div>

  <div class="form-group col-md-3 col-sm-6">
      <p class="font-weight-bold">TIPO HD*
      <select name="tipoarmazenamento" id="tipoarmazenamento" title="SELECIONE O TIPO DO ARMAZENAMENTO" class="form-control">
      	  <option value="IDE">IDE</option>
		      <option value="SSD">SSD</option>
              <option value="SSD NVME">SSD NVME</option>
          <option value="CHIP">CHIP</option>
      </select>
      </p>
  </div>
  
  <div class="form-group col-sm-6 col-md-3">
    <p class="font-weight-bold">MEMORIA EM GB*
    <input name="memoria" type="number" id="memoria" class="form-control" title="INFORME TOTAL DA MEMORIA EM GB OU ZERO" value="0"></p>
  </div>

  <div class="form-group col-md-3 col-sm-6">
      <p class="font-weight-bold">TIPO MEMORIA*
      <select name="tipomemoria" id="tipomemoria" title="SELECIONE O TIPO DA MEMORIA" class="form-control">
      	  <option value="DDR2">DDR2</option>
		      <option value="DDR3">DDR3</option>
          <option value="DDR4">DDR4</option>
      </select>
      </p>
  </div>

  <div class="form-group col-sm-6 col-md-5">  
    <p class="font-weight-bold">PLACA MAE
    <input name="placamae" type="text" id="placamae" maxlength="20" class="form-control" title="INFORME A PLACA MAE DO EQUIPAMENTO" /></p>
  </div>

  <div class="form-group col-sm-6 col-md-3">
    <p class="font-weight-bold">MONITOR
    <input name="monitor" type="text" id="monitor" title="INFORME O TIPO E TAMANHO DO MONITOR" class="form-control" maxlength="20" /></p>
  </div>

  <div class="form-group col-sm-6 col-md-4">
    <p class="font-weight-bold">NF*
    <input name="nfe" type="number" id="nfe" class="form-control" title="INFORME NUMERO DA NFE DE COMPRA OU ZERO" value="0"  /></p>
  </div>

  <div class="form-group col-sm-12 col-md-7">
    <p class="font-weight-bold">APLICATIVOS
    <input name="aplicativos" type="text" id="aplicativos" class="form-control" maxlength="50" title="INFORME OS APLICATIVOS EXTRAS DO EQUIPAMENTO" /></p>
  </div>


  
  <div class="form-group col-sm-6 col-md-5">
      <p class="font-weight-bold">SISTEMA OPERACIONAL
          <select name="sistemaoperacional" class="form-control">
          <?php
          include "conexao.php"; 
          $res1=$con->prepare("SELECT NUM_ID_SO, TXT_NOME_SO FROM TBL_SISTEMAOPERACIONAL_SO WHERE TXT_ATIVO_SO = 'S'");
          $res1->execute();

          while($row1 = $res1->fetch(PDO::FETCH_OBJ)){?>
          <option value="<?php echo $row1->NUM_ID_SO ?>">
            <?php echo $row1->TXT_NOME_SO?>
            </option>
          <?php } ?>
          </select>
          </p>
  </div>

  <div class="form-group col-sm-6 col-md-3">
    <p class="font-weight-bold">MARCA
    <input name="marca" type="text" id="marca" maxlength="50" class="form-control" title="INFORME A MARCA DO EQUIPAMENTO" /></p>
  </div>

  <div class="form-group col-sm-6 col-md-3">
    <p class="font-weight-bold">MODELO
    <input name="modelo" type="text" id="modelo" class="form-control" maxlength="50" title="INFORME O MODELO DO EQUIPAMENTO" /></p>
  </div>

  <div class="form-group col-sm-6 col-md-3">
    <p class="font-weight-bold">SERIAL
    <input name="serial" type="text" id="serial" class="form-control" maxlength="30" title="INFORME O SERIAL DO EQUIPAMENTO" /></p>
  </div>

  
  <div class="form-group col-sm-6 col-md-3">
    <p class="font-weight-bold">FIM GARANTIA
    <input name="fimgarantia" type="date" id="fimgarantia" class="form-control" title="INFORME A DATA DO FIM DE GARANTIA" /></p>
  </div>


   <div class="form-group col-sm-12 col-md-12">
      <p class="font-weight-bold">OBSERVAÇÃO
      <textarea name="observacao" id="observacao" class="form-control"  cols="120" rows="3" title="DESCREVA INFORMAÇÕES SOBRE O EQUIPAMENTO"></textarea></p>
  </div>
  
  <div class="form-group col-md-2 col-sm-12">
        <input type="submit" class="btn btn-success btn-block"  name="registrar"  value="Registrar Dados" />
  </div>
</td>
</tr>
</table>
</form>
</body>
</html>
<?php include "verifica.php" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/bootstrap.css" rel="stylesheet" />
<script type="text/javascript" src="javascript/cadastro_cliente.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Registro de Contrato de Manutenção</title>
</head>

<body>

<form name="cliente"  method="post">
<table class="table">
    <tr>
	    <td> <?php include "inicial.php"?> </td>
	</tr>
 	<tr><td class=" table-primary"><h4>Cadastro de Contrato de Manutencao</h4></td></tr>
</table>
<table width="80%" align="center">
<tr>
<td>

  <?php

  if(isset($_POST['btnregistrar'])){
  require_once 'contratoManutencao.php';
  require_once 'contratoManutencaoDao.php';
  require_once 'conexao.php';
  include "verifica.php";

  $contrato = new contratoManutencao();
  $contratoDao = new contratoManutencaoDao();
  
  $contrato->setUsuario($id_usuario);
  $contrato->setCliente($_POST['cliente']);
  $contrato->setValor($_POST['valor']);
  $contrato->setDiapagamento($_POST['diapagamento']);

 if($contratoDao->RegistrarContrato($contrato)=="OK"){
   echo "Contrato registrado";
   
 }else{
   echo "Contrato nao registrado";
 }

}

?>
 <div class="form-row">
  <div class="form-group  col-md-4 col-sm-6">
        <p class="font-weight-bold">ID DO CLIENTE
		    <input class="form-control input-lg" name="cliente" type="text" id="cliente" required="required"  maxlength="14" title="INFORME O ID DO CLIENTE" /></p>
	</div> 

  <div class="form-group  col-md-4 col-sm-6">
        <p class="font-weight-bold">VALOR
		    <input class="form-control input-lg" name="valor" type="number" id="valor" required="required"  title="INFORME O VALOR COBRADO" placeholder="0.00" /></p>
	</div> 

	<div class="form-group form-group-lg col-md-4 col-sm-6">
    	  <p class="font-weight-bold">DIA VENCIMENTO  
        <select name="diapagamento" id="diapagamento" title="INFORME DIA DO VENCIMENTO" class="form-control">
        <option value="1">1</option>
        <option value="5">5</option>
        <option value="10">10</option>
        <option value="20">20</option>
        <option value="25">25</option>
			</select>
		</p>
	</div>


  <div class="form-group col-md-3">
        <input type="submit" name="btnregistrar"  value="Registrar Dados" class="btn btn-success btn-block" />
	</div>


</table>
</form>
</body>
</html>
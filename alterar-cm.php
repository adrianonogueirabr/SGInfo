<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/bootstrap.css" rel="stylesheet" />
<script type="text/javascript" src="javascript/cadastro_cliente.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Alterar dados de Contrato de Manutenção</title>
</head>

<body>

<form name="cliente"  method="post">

<table class="table">
    <tr>
	    <td> <?php include "inicial.php"?> </td>
	</tr>
     <tr><td class=" table-primary"><h4>Alterar Contrato de Manutenção</h4></td></tr>
</table>
<table width="80%" align="center">
<tr>
<td>  

  <?php

  if(isset($_POST['btnatualizar'])){
  require_once 'contratoManutencao.php';
  require_once 'contratoManutencaoDao.php';
  require_once 'conexao.php';


  $contrato = new contratoManutencao();
  $contratoDao = new contratoManutencaoDao();
  
  $contrato->setDatatermino($_POST['datatermino']);
  $contrato->setAtivo($_POST['ativo']);
  $contrato->setValor($_POST['valor']);
  $contrato->setDiapagamento($_POST['diapagamento']);
  $contrato->setControle($_POST['idregistro']);

 if($contratoDao->AtualizarContrato($contrato)=="OK"){
    echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=listagem-cm.php'><script type=\"text/javascript\">
    alert(\"Contrato atualizado com sucesso!\");</script>";
   
 }else{
   echo "Problemas ao atualizar contrato de manutencao, tente mais tarde!";
 }

}

?>

  <input type="hidden" id="idregistro" name="idregistro" value="<?php echo $_GET['id']; ?>">
  <div class="form-row">
  <div class="form-group  col-md-3 col-sm-6">
      <p class="font-weight-bold">VALOR
		   <input class="form-control input-lg" name="valor" type="number" id="valor" required="required"  title="INFORME O VALOR COBRADO" placeholder="0.00" /></p>
	</div> 

  <div class="form-group col-md-3 col-sm-6">
	  	<p class="font-weight-bold">DATA TERMINO
     	<input name="datatermino" id="datatermino" class="form-control"  type="date" required="true">
		 </p>
	</div>

	<div class="form-group form-group-lg col-md-3 col-sm-6">
    	  <p class="font-weight-bold">DIA VENCIMENTO 
        <select name="diapagamento" id="diapagamento" title="INFORME DIA DO VENCIMENTO" class="form-control">
        <option value="1">1</option>
        <option value="5">5</option>
        <option value="10">10</option>
        <option value="20">20</option>
        <option value="25">25</option>
      </select>
  </div> 

  <div class="form-group form-group-lg col-md-3 col-sm-6">
    	  <p class="font-weight-bold">ATIVO  
        <select name="ativo" id="ativo" title="INFORME SE ATIVO OU NAO" class="form-control">
        <option value="S">SIM</option>
        <option value="N">NAO</option>
			</select>
		</p>
	</div>
</div>


  <div class="form-group col-md-3">
        <input type="submit" name="btnatualizar"  value="Salvar Dados" class="btn btn-success btn-block" />
	</div>
</td></tr>
</table>
</form>
</body>
</html>
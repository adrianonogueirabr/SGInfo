
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="javascript/cadastro_equipamento.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Detalhe de Equipamentos</title>
</head>

<?php
	include "conexao.php";
	$id = $_GET['id'];
	$res = $con->prepare("SELECT * FROM TBL_EQUIPAMENTO_EQUIP WHERE NUM_ID_EQUIP = '$id'");
  $res->execute();
  
  while ($row = $res->fetch(PDO::FETCH_OBJ)){ 

?>

<body>
<form name="equipamento" method="post" action="alterar-equipamentos.php?id=<?php echo $id ?>">
<table class="table">
  <tr>
	<td><?php include "inicial.php"?></td>
	</tr>
 	<tr><td class="table-primary"> <h4>Dados do Equipamento: <?php echo $row->NUM_ID_EQUIP?></h4></tr></td>

</table>
<table width="80%" align="center">
<tr>
<td>    
<div class="form-row"> 
    <div class="form-group col-md-3 col-sm-4">
        <p class="font-weight-bold">TIPO<input type="text" class="form-control" disabled="disabled" value="<?php echo $row->TXT_TIPO_EQUIP ?>" /></p>
    </div>

    <div class="form-group col-md-6 col-sm-8">
          <p class="font-weight-bold">CLIENTE
          <?php
		      	$idcli = $row->TBL_CLIENTE_CLI_NUM_ID_CLI;
			      $cli = $con->prepare("SELECT TXT_RAZAO_CLI  FROM TBL_CLIENTE_CLI WHERE NUM_ID_CLI = '$idcli'");
			      $cli->execute();
			      $nome = $cli->fetchColumn();
		      ?>        
        <input class="form-control" type="text" disabled="disabled" value="<?php echo $row->TBL_CLIENTE_CLI_NUM_ID_CLI ?> | <?php echo $nome ?>"  />    </p>    
    </div> 
    
    <div class="form-group col-md-3 col-sm-6">
      <p class="font-weight-bold">SETOR<input type="text" disabled="disabled" class="form-control" value="<?php echo $row->TXT_SETOR_EQUIP ?>" /></p>
    </div>

    <div class="form-group col-md-4 col-sm-6">
        <p class="font-weight-bold">NOME NA REDE<input type="text" disabled="disabled" class="form-control" value="<?php echo $row->TXT_NOMEREDE_EQUIP ?>" /></p>
    </div>

    <div class="form-group col-md-4 col-sm-6">
       <p class="font-weight-bold">LOGIN<input type="text" disabled="disabled" class="form-control" value="<?php echo $row->TXT_LOGIN_EQUIP ?>" /></p>
    </div>

    <div class="form-group col-md-4 col-sm-6">
        <p class="font-weight-bold">SENHA<input type="text" disabled="disabled" class="form-control" value="<?php echo $row->TXT_SENHA_EQUIP ?>" /></p>
    </div>

    <div class="form-group col-md-12 col-sm-12">
        <p class="font-weight-bold">DESC EQUIPAMENTO<input type="text" disabled="disabled" class="form-control" value="<?php echo $row->TXT_DESCRICAO_EQUIP ?>" /></p>
    </div>

    <div class="form-group col-md-4 col-sm-6">
        <p class="font-weight-bold">UTILIZADORES<input type="text" disabled="disabled" class="form-control" value="<?php echo $row->TXT_UTILIZADORES_EQUIP ?>" /></p>
    </div>

    <div class="form-group col-md-1 col-sm-6">
        <p class="font-weight-bold">MONITOR <input type="text" disabled="disabled" class="form-control" value="<?php echo $row->TXT_MONITOR_EQUIP ?>"/></p>
    </div>

    <div class="form-group col-md-7 col-sm-12">
        <p class="font-weight-bold">APLICATIVOS<input type="text" disabled="disabled" class="form-control" value="<?php echo $row->TXT_APLICATIVOS_EQUIP ?>" /></p>
    </div>

    <div class="form-group col-md-12 col-sm-12">
        <p class="font-weight-bold">DADOS DE HD / PROCESSADOR / MEMORIA / PLACA MAE
         <input type="text" class="form-control" readonly="readonly" value="<?php echo $row->TXT_TIPOARMAZENAMENTO_EQUIP ?> de <?php echo $row->NUM_HD_EQUIP ?>GB | Processador <?php echo $row->TXT_PROCESSADOR_EQUIP ?> | <?php echo $row->NUM_MEMORIA_EQUIP ?>GB de Memoria Ram <?php echo $row->TXT_TIPOMEMORIA_EQUIP ?> | Placa Mae <?php echo $row->TXT_PLACAMAE_EQUIP ?> "/></p>
    </div>

    <div class="form-group col-md-4 col-sm-6">
        <p class="font-weight-bold">NFE<input type="text" disabled="disabled" class="form-control" value="<?php echo $row->NUM_NFE_EQUIP ?>" /></p>
    </div>

    <div class="form-group col-md-8 col-sm-6">    
        <p class="font-weight-bold">SISTEMA OPERACIONAL
                <?php
                $so = $row->TBL_SISTEMAOPERACIONAL_SO_NUM_ID_SO;
                $sql_nome = $con->prepare("SELECT TXT_NOME_SO FROM TBL_SISTEMAOPERACIONAL_SO WHERE NUM_ID_SO = '$so'");
                $sql_nome->execute();
                $nomeSO = $sql_nome->fetchColumn() ?>
                <input type="text" disabled="disabled" class="form-control" value="<?php echo $nomeSO ?>" /></p>
    </div>

    <div class="form-group col-md-4 col-sm-6">
        <p class="font-weight-bold">MARCA<input type="text" disabled="disabled" class="form-control" value="<?php echo $row->TXT_MARCA_EQUIP ?>" /></p>
    </div>

    <div class="form-group col-md-4 col-sm-6">
        <p class="font-weight-bold">MODELO<input type="text" disabled="disabled" class="form-control" value="<?php echo $row->TXT_MODELO_EQUIP ?>" /></p>
    </div>

    <div class="form-group col-md-4 col-sm-6">
        <p class="font-weight-bold">SERIAL DO EQUIPAMENTO<input type="text" disabled="disabled" class="form-control" value="<?php echo $row->TXT_SERIAL_EQUIP ?>" /></p>
    </div>
    
    <div class="form-group col-md-12 col-sm-12">
        <p class="font-weight-bold">OBSERVAÇÃO
        <textarea name="obervacao" id="observacao" disabled="disabled" class="form-control" required="true" cols="120" rows="3" title="DESCREVA INFORMAÇÕES SOBRE O EQUIPAMENTO"><?php echo $row->TXT_OBSERVACAO_EQUIP ?></textarea></p>
    </div>

    <div class="form-group col-md-4 col-sm-6">    
        <p class="font-weight-bold">FIM GARANTIA<input type="text" disabled="disabled" class="form-control" value="<?php echo  date("d/m/Y",strtotime($row->DTA_GARANTIA_EQUIP)); ?>" /></p>
    </div>    
    
    <div class="form-group col-md-4 col-sm-6">    
        <p class="font-weight-bold">DATA DE REGISTRO<input type="text" disabled="disabled" class="form-control" value="<?php echo  date("d/m/Y",strtotime($row->DTA_REGISTRO_EQUIP)); ?>" /></p>
    </div>

    <div class="form-group col-md-4 col-sm-6">
        <p class="font-weight-bold">ATIVO<input type="text" disabled="disabled" class="form-control" value="<?php echo $row->TXT_ATIVO_EQUIP ?>" /></p>
    </div>

    <div class="form-group col-sm-12 col-md-2">
    <input type="submit" name="Alterar"  value="Alterar" class="btn btn-danger btn-block"  />
    </div>
    <div class="form-group col-sm-12 col-md-2">
    <a href="cadastro-os.php?id_equip=<?php echo base64_encode($row->NUM_ID_EQUIP) ?>&id_cliente_equip=<?php echo base64_encode($row->TBL_CLIENTE_CLI_NUM_ID_CLI)?>&nome_cliente=<?php echo base64_encode($nome) ?>" class="btn btn-primary btn active btn-block" role="button" aria-pressed="true">Registrar OS</a>
    </div>
    <?php
		}
	 ?>

  </td></tr>
</table>
</form>
</body>
</html>
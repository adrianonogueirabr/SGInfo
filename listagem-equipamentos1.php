
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Listagem de Equipamentos</title>
</head>

<body>
<?php 
	include "conexao.php";

    $valor = $_GET['id'];
    $nome_client = $_GET['n'];

		$res = $con->prepare("SELECT C.TXT_RAZAO_CLI, E.TBL_CLIENTE_CLI_NUM_ID_CLI, E.NUM_ID_EQUIP, E.TXT_ATIVO_EQUIP, E.TXT_TIPO_EQUIP, E.TXT_MARCA_EQUIP, E.TXT_MODELO_EQUIP, 
                          E.TXT_SERIAL_EQUIP, E.TXT_DESCRICAO_EQUIP FROM TBL_EQUIPAMENTO_EQUIP E 
                          LEFT JOIN TBL_CLIENTE_CLI C ON C.NUM_ID_CLI = E.TBL_CLIENTE_CLI_NUM_ID_CLI 
                          WHERE TBL_CLIENTE_CLI_NUM_ID_CLI = ?");
		$res->bindParam(1,$valor);
    $res->execute();
		if($res->rowCount()<=0){
  		echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=listagem-clientes1.php?valor=$valor'><script type=\"text/javascript\">alert(\"Cliente nao possui equipamento registrados\");</script>";     
    } 
  
?>

<form name="listagem" method="post">
<table width="100%">
  <tr> <td> <?php include "inicial.php" ?> </td> </tr>
  <tr> <td>
          	<h4><?php echo base64_decode($nome_client) ?> 
            <a href="cadastro-equipamentos.php?id=<?php echo $valor ?>"><img src="imagens/computador_add.png" width="30" height="30" alt="novo" title="Clique para Novo Equipamento" /></a></h4>
  </td> </tr>
  <tr><td>
  <table width="100%" class="table-hover table table-condensed table-bordered table-striped table-sm">
        <tr  class="table-primary">	
            <th>ID</th>
            <th>ATIVO</th>
            <th>TIPO</th>
            <th>EQUIPAMENTO</th>
            <th>UTILIZAÇÃO</th>
            <th>AÇÕES</th>
        </tr>        
        <?php
			    while ($row = $res->fetch(PDO::FETCH_OBJ)){			
	  	  ?>
          <tr>
                <td align="center"><?php echo $row->NUM_ID_EQUIP;?></td>
                <td align="center"><?php echo $row->TXT_ATIVO_EQUIP;?></td>
                <td><?php echo $row->TXT_TIPO_EQUIP;?></td>
                <td><?php echo $row->TXT_MARCA_EQUIP; ?> / <?php echo $row->TXT_MODELO_EQUIP;?> / <?php echo $row->TXT_SERIAL_EQUIP;?></td>
                <td><?php echo $row->TXT_DESCRICAO_EQUIP?></td>
                <td>
                <div class="btn-group dropleft">
                <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Ações</button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                  <a class="dropdown-item" href="detalhes-equipamentos.php?id=<?php echo $row->NUM_ID_EQUIP;?>">Detalhes</a>
                  <a class="dropdown-item" href="cadastro-os.php?id_equip=<?php echo base64_encode($row->NUM_ID_EQUIP) ?>&id_cliente_equip=<?php echo base64_encode($row->TBL_CLIENTE_CLI_NUM_ID_CLI)?>&nome_cliente=<?php echo base64_encode($row->TXT_RAZAO_CLI)?>">Abrir OS</a>
                  <a class="dropdown-item" href="historico-os.php?valor=<?php echo $row->NUM_ID_EQUIP; ?>&id_cliente_equip=<?php echo base64_encode($row->TBL_CLIENTE_CLI_NUM_ID_CLI)?>&nome_cliente=<?php echo base64_encode($row->TXT_RAZAO_CLI)?>">Histórico de OS</a> 

                </div>
                </div>
                </td>
          </tr>
        <?php } ?>
  </table>
  </td></tr>
 </table>
</form>
<script>
$(document).ready(function(){
  $('[data-toggle="popover"]').popover();   
});
</script>
</body>
</html>
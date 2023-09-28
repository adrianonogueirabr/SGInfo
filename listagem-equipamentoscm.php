<?php include "verifica.php" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/bootstrap.css" rel="stylesheet" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Listagem de Equipamentos do COntrato</title>
</head>

<body>
<?php 
	include "conexao.php";	

	$valor = $_GET['id'];
	
		$res = $con->prepare("SELECT * FROM TBL_EQUIPCONT_ECM WHERE TBL_CONTRATO_CM_NUM_ID_CM = ?");
		$res->bindParam(1,$valor);
    if($res->execute());
		if($res->rowCount()<=0){	
		    echo "Contrato de Manutenção nao possui equipamentos registrados!";		
	}

?>

<form name="listagem" method="post">
  <table width="100%" border="0" cellpadding="0">
    <tr>
      <td width="100%">
      	
        <?php if ($criterio =="C"){ ?>
       	<legend><h3><a href="listagem-clientes.php?valor=<?php echo $valor ?>&criterio=I"><img src="imagens/voltar.png" width="30" height="30" alt="voltar" title="Clique para voltar" /></a>
		<a href="cadastro-equipamentos.php?id=<?php echo $valor ?>"><img src="imagens/computador_add.png" width="30" height="30" alt="novo" title="Clique para Novo Equipamento" /></a>Listagem de Equipamentos</h3></legend>	
		<?php }else{ ?>
			<legend><h3><a href="consulta-equipamentos.php"><img src="imagens/voltar.png" width="30" height="30" alt="voltar" title="Clique para voltar" /></a>	Listagem de Equipamentos do Contrato</h3></legend>		
		<?php } ?>
      </td>
    </tr>
    <tr>
      <td>
        <table width="100%" class="table-hover table-condensed table-bordered">
          <tr   class="p-3 mb-2 bg-info text-white">
            <th scope="col">ID</th>
            <th scope="col">ATIVO</th>
            <th scope="col">TIPO</th>
            <th colspan="1" scope="col">MARCA/MODELO</th>
			<th colspan="1" scope="col">NOME REDE</th>
            <th colspan="1" scope="col">DESCRICAO / FUNÇÃO</th>
            <th scope="col">TAREFAS</th>
          </tr>
          <?php
			while ($row = $res->fetch(PDO::FETCH_OBJ)){			
	  		?>
          <tr>
            <td><?php echo $row->TBL_EQUIPAMENTO_EQUIP_NUM_ID_EQUIP;?></td>
            <td><?php  ?></td>
            <td><?php  ?></td>
			<td><?php   ?> - <?php  ?></td>
			<td><?php  ?></td>
            <td><?php  ?></td>
            <td>
            <a href="alterar-equipamentos.php?id=<?php echo $row->NUM_ID_EQUIP ?>">
            <img src="imagens/alterar.png" width="26" height="25" title="Clique para Alterar" /> </a>
            
            <a href="detalhes-equipamentos.php?id=<?php echo $row->NUM_ID_EQUIP;?>">
            <img src="imagens/lupa.jpg" width="26" height="25" title="Clique para Detalhes" /> </a>
            
            <a href="cadastro-os.php?id_equip=<?php echo base64_encode($row->NUM_ID_EQUIP) ?>&id_cliente_equip=<?php echo base64_encode($row->TBL_CLIENTE_CLI_NUM_ID_CLI)?>">

            <img src="imagens/os.png" width="26" height="25" title="Clique para Cadastrar OS" /> </a>
            </td>
          </tr>
          <?php } ?>
        </table>
      </td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>
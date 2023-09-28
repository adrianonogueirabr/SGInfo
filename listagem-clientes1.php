
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Listagem de Clientes</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<?php 

  include "conexao.php";

    $valor = $_GET['valor'];
	
    $MensagemNaoEncontrado = "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-clientes.php'><script type=\"text/javascript\">alert(\"Dados nao encontrados!\");</script>";

		$res=$con->prepare("SELECT * FROM TBL_CLIENTE_CLI WHERE NUM_ID_CLI = ?");
		$res->bindParam(1,$valor);
    if($res->execute());
		if($res->rowCount()<=0){
      echo $MensagemNaoEncontrado;
    }	

?>

<form name="listagem" method="post">
<table width="100%">
  <tr>
      <td>
      <?php include "inicial.php" ?>	<legend><h3>Dados de Clientes<a href="cadastro-clientes.php"><h3></legend>
      </td>
    </tr>
    <tr>
      <td>
      <table width="100%" class="table-hover table table-condensed table-bordered table-striped table-sm">
        <tr  class="table-primary">	
		  
          <th scope="col">ID</th>
          <th scope="col">ATIVO</th>
          <th scope="col">CPF/CNPJ</th>
          <th scope="col">RAZAO</th>
          <th scope="col">TELEFONE</th>
          <th colspan="2" scope="col" align="center">AÇÕES</th>
        </tr>
        <?php
		while ($row = $res->fetch(PDO::FETCH_OBJ)){			
		?>        
        <tr>
          <td align="center"><?php echo $row->NUM_ID_CLI;?></div></td>
          <td align="center"><?php echo $row->TXT_ATIVO_CLI;?></div></td>
          <td><?php echo $row->TXT_CPF_CNPJ_CLI;?></div></td>
          <td><?php echo $row->TXT_RAZAO_CLI;?></div></td>

          <td><?php echo $row->TXT_TELEFONE_CLI;?></div></td>
          <td>
          <div class="btn-group dropleft">
          <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Ações</button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
              <a class="dropdown-item" href="alterar-clientes.php?id=<?php echo $row->NUM_ID_CLI;?>">Alterar</a>
              <a class="dropdown-item" href="detalhes-clientes.php?id=<?php echo $row->NUM_ID_CLI;?>">Detalhes</a>
                <?php  if($perfil_usuario <> '00002'){ ?>        
                  <a class="dropdown-item" href="cadastro-equipamentos.php?id=<?php echo $row->NUM_ID_CLI;?>">+ Equipamento</a>
                  <a class="dropdown-item" href="listagem-equipamentos1.php?id=<?php echo $row->NUM_ID_CLI;?>&n=<?php echo base64_encode($row->TXT_RAZAO_CLI); ?>">Equipamentos</a>
                <?php } ?>
              <a class="dropdown-item" href="listagem-os-clientes.php?valor=<?php echo $row->NUM_ID_CLI;?>&criterio=C">Listar OS</a>
            </div>
          </div>

		  </td>
        </tr>
        <?php
		}
		?>
      </table></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>

</body>
</html>
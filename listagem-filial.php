
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Listagem de Filial</title>
</head>

<body>
<?php 
	include "conexao.php";

	$valor = $_POST['valor'];
	$criterio = $_POST['criterio'];

	
	if($criterio == "C"){
		$sqlLoja = $con->prepare("SELECT * FROM TBL_EMPRESA_EMP WHERE TXT_CPFCNPJ_EMP = '$valor'");
		
    if(!$sqlLoja->execute()){die ('Houve um erro na transacao '. mysqli_error());}

		if($sqlLoja->rowCount()<=0){

			echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-filial.php'><script type=\"text/javascript\">alert(\"Dados nao encontrados CPF/CNPJ: $valor!\");</script>";		
	}
	}else if($criterio == "R"){
		$sqlLoja = $con->prepare("SELECT * FROM TBL_EMPRESA_EMP WHERE TXT_RAZAO_EMP LIKE '$valor'");

    if(!$sqlLoja->execute()){die ('Houve um erro na transacao '. mysqli_error());}

    if($sqlLoja->rowCount()<=0){

			echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-filial.php'><script type=\"text/javascript\">alert(\"Dados nao encontrados Razao: $valor!\");</script>";		
	}	
	}else if($criterio == "I"){
		$sqlLoja = $con->prepare("SELECT * FROM TBL_EMPRESA_EMP WHERE NUM_ID_EMP = '$valor'");
    
    if(!$sqlLoja->execute()){die ('Houve um erro na transacao '. mysqli_error());}

    if($sqlLoja->rowCount()<=0){

			echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-filial.php'><script type=\"text/javascript\">alert(\"Dados nao encontrados ID: $valor!\");</script>";		
	}
	}else if($criterio = ""){
	
			echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-filial.php'><script type=\"text/javascript\">alert(\"Erro no processamento das informacoes!\");</script>";		
	}	
?>

<form name="listagem" method="post">
<table width="100%">
  <tr>
      <td>
      <?php include "inicial.php" ?><legend><h4>Listagem de Lojas<h4></legend>
      </td>
    </tr>
    <tr>
    <td>
    <tr>
      <td>
      <table width="100%" class="table-hover table table-condensed table-bordered table-striped table-sm">
        <tr  class="table-primary responsive">			  
          <th>ID</th>
          <th>ATIVO</th>
          <th>CPF/CNPJ</th>
          <th>RAZAO SOCIAL</th>
          <th>EMAIL</th>
          <th>TELEFONE</th>
          <th colspan="2">TAREFAS</th>
        </tr>
        <?php
		while ($row = $sqlLoja->fetch(PDO::FETCH_OBJ)){			
		?>        
        <tr>
          <td><?php echo $row->NUM_ID_EMP?></div></td>
          <td><?php echo $row->TXT_ATIVO_EMP?></div></td>
          <td><?php echo $row->TXT_CPFCNPJ_EMP?></div></td>
          <td><?php echo $row->TXT_RAZAO_EMP?></div></td>
          <td><?php echo $row->TXT_EMAIL_EMP?></div></td>
          <td><?php echo $row->TXT_TELEFONE_EMP?></div></td>
          <td>
          <div class="btn-group dropleft">
          <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Ações</button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
              <a class="dropdown-item" href="detalhes-filial.php?id=<?php echo $row->NUM_ID_EMP ?>">Detalhes</a>
              <a class="dropdown-item" href="alterar-filial.php?id=<?php echo $row->NUM_ID_EMP ?>">Alterar</a>
            </div>
          </div>
		  
		  </td>
        </tr>
        <?php
		}
		?>
    </td>
    </tr>
  </table>
</form>
</body>
</html>
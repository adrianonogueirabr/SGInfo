
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Listagem de Servicos</title>
</head>

<body>
<?php 
	include "conexao.php";
	
	$valor = $_POST['valor'];
	$criterio = $_POST['criterio'];
	
	if($criterio == "C"){
		$sqlServico = $con->prepare("SELECT * FROM TBL_SERVICO_SER WHERE NUM_ID_SER = '$valor'");

		if(!$sqlServico->execute()){ die ('Houve um erro na transacao: ' . mysqli_error($con));}

		if($sqlServico->rowCount()<=0){ echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-servicos.php'><script type=\"text/javascript\">alert(\"Dados nao encontrados!\");</script>";}
	
  }else if($criterio == "R"){
		$sqlServico = $con->prepare("SELECT * FROM TBL_SERVICO_SER WHERE TXT_NOME_SER LIKE '$valor'");
	
    if(!$sqlServico->execute()){ die ('Houve um erro na transacao: ' . mysqli_error($con));}

    if($sqlServico->rowCount()<=0){ echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-servicos.php'><script type=\"text/javascript\">alert(\"Dados nao encontrados!\");</script>";}	
	
	}else if($criterio = ""){
	
		echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-servicos.php'><script type=\"text/javascript\">alert(\"Erro no processamento das informacoes!\");</script>";		
	}	
?>

<form name="listagem" method="post">
<table width="100%">
  <tr>
      <td>
      <?php include "inicial.php" ?>
      <legend><h4>Listagem de Serviços<h3></legend>
      </td>
    </tr>
    <tr>
    <td>
          
    <table width="100%" class="table-hover table table-condensed table-bordered table-striped table-sm">
        <tr  class="table-primary responsive">	
          <th><label>ID</label></th>
          <th><label>ATIVO</label></th>
          <th><label>NOME DO SERVICO</label></th>
          <th><label>DESCRICAO</label></th>
          <th><label>DURACAO</label></th>
          <th><label>FISICA</label></th>
          <th><label>JURIDICA</label></th>
          <th><label>GARANTIA</label></th>
          <th><label>INTERNO</label></th>
          <th><label>CONTRATO</label></th>
          <th><label>ACAO</label></th>
        </tr>
        <?php
		while ($row = $sqlServico->fetch(PDO::FETCH_OBJ)){			
		?>        
        <tr>
          <td><?php echo $row->NUM_ID_SER?></td>
          <td><?php echo $row->TXT_ATIVO_SER?></td>
          <td><?php echo $row->TXT_NOME_SER?></td>
          <td><?php echo $row->TXT_DESCRICAO_SER?></td>
          <td><?php echo $row->NUM_DURACAO_SER?></td>
          <td>R$<?php echo $row->VAL_FISICA_SER?></td>
          <td>R$<?php echo $row->VAL_JURIDICA_SER?></td>
          <td>R$<?php echo $row->VAL_GARANTIA_SER?></td>
          <td>R$<?php echo $row->VAL_INTERNO_SER?></td>
          <td>R$<?php echo $row->VAL_CONTRATO_SER?></td>
          <td><a href="alterar-servicos.php?id=<?php echo $row->NUM_ID_SER?>"><img src="imagens/alterar.png" alt="Clique para Alterar" width="26" height="25" /></a></td>
      <?php
		}
		?>
    </table>
    </td>
    </tr>
  </table>
</form>
</body>
</html>
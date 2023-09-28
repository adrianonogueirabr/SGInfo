<?php include "verifica.php" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/bootstrap.css" rel="stylesheet" />
<script type="text/javascript" src="javascript/cadastro_os.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Alterar Ordem de Serviço</title>
</head>

<body>
<?php 
	include "conexao.php";
    $id = $_GET['id'];
	$sql = $con->prepare("SELECT * FROM TBL_ORDEMSERVICO_OS WHERE NUM_ID_OS = '$id' AND TXT_STATUS_OS = 'AB' AND $perfil_usuario = 1"); 
	$sql->execute();
	
	if(!$sql){ die('Houve um erro no processamento da transacao: '.mysql_error());	}

  if($sql->rowCount()== ""){
      
      echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-os.php'><script type=\"text/javascript\">alert(\"Para cancelamento a Ordem de Servico tem que estar com Status Aberta e usuario Administrador!\");</script>";}else{
	
 ?>

<form name="os" action="processa-os.php?acao=cancelaros&os=<?php echo $id ?>" method="post" onSubmit="return validaCancelamento()">
  <table width="100%">
    <tr>
      <td height="50" ><legend><h3><a href="consulta-os.php"><img src="imagens/voltar.png" width="30" height="30" alt="voltar" /></a>Cancelar  Ordem de Serviço</h3></legend></td>
    </tr>
    <tr>
      <td>
      <table width="50%"  class="table-condensed" align="center">
        <?php while ($row = $sql->fetch(PDO::FETCH_OBJ)){	?>
        <tr>
        
          <td width="50%">
          <label>DADOS GERAIS</label>
          <input class="form-control" type="text"  title="DADOS GERAIS DO EQUIPAMENTO ESTADO E CONDIÇÕES" value="<?php echo $row->TXT_DADOSGERAIS_OS ?>" disabled="disabled" />
          </td>
        </tr>
        <tr>
          <td>
          <label>RECLAMAÇÃO</label>
          <textarea rows="3" readonly="true" class="form-control" title="RECLAMACAO DO CLIENTE"><?php echo $row->TXT_RECLAMACAO_OS ?></textarea>
          </td>
        </tr>
        <tr>
          <td>
          <label>PREVISAO</label>
          <input type="text" class="form-control" title="DATA DE PREVISAO DA ORDEM DE SERVIÇO" value="<?php echo date("d/m/Y",strtotime($row->DTA_PREVISAO_OS))?>" readonly="true" />
          </td>
        </tr>
        <tr>
          <td>
          <label>MOTIVO CANCELAMENTO</label>
          <textarea name="cancelamento" class="form-control" id="cancelamento" rows="3" title="INFORME O MOTIVO DO CANCELAMENTO"></textarea>
          </td>
        </tr>
        <?php 
		}		
		}
	    ?>
      </table>
      </td>
    </tr>
    <tr>
      <td align="center" height="40" ><input type="submit" class=" btn-success btn"  name="button" id="button" value="Efetuar Cancelamento" /></td>
    </tr>
  </table>
</form>
</body>
</html>
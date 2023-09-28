<?php include "verifica.php"; 
//LIBERACAO TECNICO PARA APROVAR E EXECUTAR SERVICO DAS OS
	//if($perfil_usuario == 5){
		
	include "conexao.php";
	
			$valor = $_GET['id'];	
	
	$sql = $con->prepare("SELECT * FROM TBL_ORDEMSERVICO_OS WHERE (TXT_STATUS_OS <> 'TE') AND (TXT_STATUS_OS <> 'PG') AND (TXT_STATUS_OS <> 'FA') AND (TXT_STATUS_OS <> 'CA') AND NUM_ID_OS = '$valor' AND TBL_USUARIO_USU_NUM_ID_USU = '$id_usuario'");		
	$sql->execute();
	//caso a os esteja com status nao permitido
	if($sql->rowCount()<=0){	
		echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-apontamento.php'><script type=\"text/javascript\">alert(\"Ordem de Servico nao disponivel para apontamento ou Tecnico diferente!\");</script>";		
	}else{
?>	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/bootstrap.css" rel="stylesheet" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Listagem de Serviços da OS</title>
</head>
<body>

<form name="listagem" method="post" action="processa-apontamento.php?acao=adcionar">

<table width="100%">
  <tr>
    <td height="40" >
    	<legend><h3><a href="consulta-apontamento.php"><img src="imagens/voltar.png" width="30" height="30" alt="voltar" title="Clique para consultar outro Apontamento" /></a>
        <a href="processa-apontamento.php?acao=encerraros&idos=<?php echo $valor ?>"><img src="imagens/terminar.png" width="30" height="30" title="Clique para encerrar a Ordem de Servico" /></a>
		<a href="relatorio-os.php?id=<?php echo $valor?>" target="_blank"> <img src="imagens/imprimir.png" width="26" height="25" title="Clique para Imprimir Ordem de Serviço" /></a>
        Listagem de Serviços da OS</h3></legend>
    </td>
  </tr>
  <tr>
    <td> 
    <table width="70%" class="table-condensed" align="center">
  <tr>
	<?php
		while ($row = $sql->fetch(PDO::FETCH_OBJ)){			
	?>
    
    <td width="50%">
    <label>NUMERO DA OS</label>
    <input class="form-control" name="id" type="text" disabled="disabled" id="id" value="<?php echo $row->NUM_ID_OS ?>" />
    <input type="hidden" name="id_os" id="id_os" value="<?php echo $row->NUM_ID_OS ?>" />
    <input type="hidden" name="tipo_os" id="tipo_os" value="<?php echo $row->TXT_TIPO_OS ?>" />
	<input type="hidden" name="id_cliente" id="id_cliente" value="<?php echo $row->TBL_CLIENTE_CLI_NUM_ID_CLI ?>" />
	</td>
    <td>
   <label>TIPO DE ORDEM DE SERVICO</label>
   <?php if($row->TXT_TIPO_OS=='P'){?>
            <input name="tipo2" class="form-control" type="text" disabled="disabled" id="tipo2" size="20" value="PADRAO" maxlength="20" />
            <?php }else if($row->TXT_TIPO_OS =='C'){ ?>
            <input name="tipo2" class="form-control" type="text" disabled="disabled" id="tipo2" size="20" value="CONTRATO" maxlength="20" /> 
            <?php }else if($row->TXT_TIPO_OS =='G'){ ?>
            <input name="tipo2" class="form-control" type="text" disabled="disabled" id="tipo2" size="20" value="GARANTIA" maxlength="20" />  
            <?php }?>
    </td>		
  </tr>

  
  <tr>
    <td colspan="2">
    <label>INFORMAÇÕES DO CLIENTE</label>
         
      <?php
					$cli = $row->TBL_CLIENTE_CLI_NUM_ID_CLI;
					$sql_nome = $con->prepare("SELECT *  FROM TBL_CLIENTE_CLI WHERE NUM_ID_CLI = '$cli'");
					$sql_nome->execute();
					while($row_nome = $sql_nome->fetch(PDO::FETCH_OBJ)){
						
	   ?>
	   <!-- adcionado em 21/01/2019	codigo para capturar tpo de pessoa cliente			
		--><input type="hidden" name="pessoa_cliente" id="pessoa_cliente" value="<?php echo $row_nome->TXT_PESSOA_CLI ?>" />
      <input class="form-control" type="text" disabled="disabled" value="ID: <?php echo $row->TBL_CLIENTE_CLI_NUM_ID_CLI ?> | NOME: <?php echo $row_nome->TXT_RAZAO_CLI ?> | TELEFONE: <?php echo $row_nome->TXT_TELEFONE_CLI ?> | EMAIL: <?php echo $row_nome->TXT_EMAIL_CLI ?>" id="nomecliente"  />
      <?php } ?>
    </td>
  </tr>
  <tr>
    <td colspan="2">
    <label>INFORMAÇÕES DO  EQUIPAMENTO</label>
    <input  class="form-control" type="text" disabled="disabled" value="ID: <?php echo $row->TBL_EQUIPAMENTO_EQUIP_NUM_ID_EQUIP ?> | ESTADO ATUAL: <?php echo $row->TXT_DADOSGERAIS_OS ?>" />  
    </td>
  </tr>
  <tr>
    <td colspan="2">
    <label>SOLICITACAO/RECLAMAÇÃO DO CLIENTE</label>
    <textarea name="textarea" class="form-control"  disabled="disabled" id="textarea"><?php echo $row->TXT_RECLAMACAO_OS ?></textarea>
    </td>
    </tr>
  <tr>
    <td colspan="2">
    <label>DEFEITO CONFORME O TECNICO</label>
    <a href="cadastro-defeito.php?os=<?php echo $valor ?>" target="_self" title="Clique para editar">
    <textarea class="form-control" name="textarea"  readonly="readonly" id="textarea"><?php echo $row->TXT_DEFEITO_OS ?></textarea>
    </a>
    </td>
    </tr>
   <tr>
    <td colspan="2">
    <label>SOLUCAO CONFORME O TECNICO</label>
    <a href="cadastro-solucao.php?os=<?php echo $valor ?>" target="_self" title="Clique para editar">
    <textarea class="form-control" name="textarea"  readonly="readonly" id="textarea"><?php echo $row->TXT_RESOLUCAO_OS  ?></textarea>
    </a>
    </td>
    </tr>
    <tr>
      <td>
      <label>SERVIÇOS</label>
     <?php } ?>      
        <select name="servico" class="form-control"> 
          <?php
				include "conexao.php"; 
				$sql_servicos=$con->prepare("SELECT NUM_ID_SER, TXT_NOME_SER FROM TBL_SERVICO_SER WHERE TXT_ATIVO_SER = 'S' ORDER BY TXT_NOME_SER");
				$sql_servicos->execute();
					while($sqlResultFim = $sql_servicos->fetch(PDO::FETCH_OBJ)){?>
          <option value="<?php echo $sqlResultFim->NUM_ID_SER ?>"> <?php echo $sqlResultFim->TXT_NOME_SER ?></option>
          <?php } ?>
        </select>

      </td>
      <td valign="bottom"> <input type="submit" class="btn btn-primary" name="button" id="button" value="ADCIONAR SERVICO" /></td>
      </tr>  
  </table>  
			<?php
				include "conexao.php";
				$sql_itens = $con->prepare("SELECT * FROM TBL_ITEMOS_ITOS WHERE TBL_ORDEMSERVICO_OS_NUM_ID_OS = '$valor'");
				$sql_itens->execute();
					while ($rowItem = $sql_itens->fetch(PDO::FETCH_OBJ)){			
			?>
  </p>
  <table width="70%" align="center" class="table-condensed table-bordered">
  <tr>
        <th scope="col"><label>ID</label></th>
        <th colspan="3" scope="col"><label>SERVICO</label></th>
        <th colspan="2" scope="col"><label>VALOR</label></th>
  </tr>
  <tr>
        <td><label><?php echo $rowItem->TBL_SERVICO_SER_NUM_ID_SER ?></label></td>
			<?php
				$idItem = $rowItem->TBL_SERVICO_SER_NUM_ID_SER;
				$sql_NomeItem = $con->prepare("SELECT TXT_NOME_SER FROM TBL_SERVICO_SER WHERE NUM_ID_SER = '$idItem'");
				$sql_NomeItem->execute();
					while($row_nomeItem = $sql_NomeItem->fetch(PDO::FETCH_OBJ)){
			?>
					<td colspan="3" align="left"><label><?php echo $row_nomeItem->TXT_NOME_SER ?></label></td>
			<?php } ?>
        <td colspan="2" align="center"><label><?php echo $rowItem->VAL_VALOR_ITOS ?></label></td>
          
  </tr>
  <tr>
        <th scope="col"><label>STATUS</label></th>
        <th scope="col"><label>DATA/HORA INICIO</label></th>
        <th scope="col"><label>DATA/HORA FIM</label></th>
        <th colspan="3" scope="col"><label>AÇÕES</label></th>
   </tr>
   <tr>
		<!--//date("d/m/Y", strtotime($data))-->
        <td><label><?php echo $rowItem->TXT_STATUS_ITOS ?></label></td>
        <td><label><?php if($rowItem->DTA_INICIO_ITOS<>""){echo date("d/m/Y",strtotime($rowItem->DTA_INICIO_ITOS)) ;}?> | <?php echo $rowItem->HOR_INICIO_ITOS ;?></label></td>
        <td><label><?php if($rowItem->DTA_TERMINO_ITOS<>""){echo date("d/m/Y",strtotime($rowItem->DTA_TERMINO_ITOS)) ;}?> | <?php echo $rowItem->HOR_TERMINO_ITOS ;?></label></td>
        <td colspan="3" align="center">
       
     
        
		<a href="processa-apontamento.php?acao=iniciar&id=<?php echo $rowItem->NUM_ID_ITOS ?>&os=<?php echo $valor ?>" class=" btn btn-success" 
      onclick="return confirm('Confirma iniciar servico?')" title="Clique para iniciar o servico"><span class="glyphicon glyphicon-check"></span></a>
        
        <a href="processa-apontamento.php?acao=terminar&id=<?php echo $rowItem->NUM_ID_ITOS ?>&os=<?php echo $valor ?>" class="btn btn-danger" 
          onclick="return confirm('Confirma terminar servico?')" title="Clique para terminar servico"><span class="glyphicon glyphicon-off"></span></a>
		
        <a href="processa-apontamento.php?acao=excluir&id=<?php echo $rowItem->NUM_ID_ITOS ?>&os=<?php echo $valor ?>" class="btn btn-warning" 
          onclick="return confirm('Confirma excluir servico?')" title="Clique para remover servico"><span class="glyphicon glyphicon-trash"></span></a>
                      
        </td>
    </tr>
    </table>
    <p>
      <?php
			}
	}
			?>        
      </p></td>
    </tr>
    <tr>
		<td>&nbsp;</td>
    </tr>
</table>
</form>
</body>
</html>

<?php

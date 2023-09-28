<?php include "verifica.php"; 

	include "conexao.php";
	
	$valor = $_POST['valor'];
	
	$res = $con->prepare("
		SELECT a.NUM_ID_OS,a.TXT_TIPO_ATENDIMENTO_OS,a.TXT_TIPO_OS,b.TXT_RAZAO_CLI,a.TBL_CLIENTE_CLI_NUM_ID_CLI,a.TBL_EQUIPAMENTO_EQUIP_NUM_ID_EQUIP,a.TXT_DADOSGERAIS_OS,
		a.TXT_RECLAMACAO_OS,a.TXT_DEFEITO_OS,a.TXT_RESOLUCAO_OS 
		FROM TBL_ORDEMSERVICO_OS a

		LEFT JOIN TBL_CLIENTE_CLI b ON b.NUM_ID_CLI = a.TBL_CLIENTE_CLI_NUM_ID_CLI

		WHERE TXT_STATUS_OS = 'AN' AND NUM_ID_OS = '$valor'");		
	
	if(!$res->execute()){die ('Houve um erro no processamento da transação: ' . mysqli_error());}
	//caso a os esteja com status nao permitido

	if($res->rowCount() == ""){	
		echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=corrigir-apontamento.php'><script type=\"text/javascript\">alert(\"Ordem de Servico precisa estar em ANDAMENTO!\");</script>";		
	}else{

?>	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>Corrigir Dados de Apontamento</title>
</head>
<body>
<form action="" method="post">
<table class="table">
<tr>
	    <td> <?php include "inicial.php"?> </td>
	</tr>
 	<tr><td class="table-primary"><h4>Corrigir Dados de Apontamento</h4></td></tr>
</table>
<table width="80%" align="center">
<tr>
<td>

	<?php
		while ($row = $res->fetch(PDO::FETCH_OBJ)){			
	?>
    <div class="form-row"> 
    <div class="form-group col-md-4 col-sm-6">
      <p class="font-weight-bold">NUMERO<input  class="form-control"  value="<?php echo $row->NUM_ID_OS ?>" readonly="readonly" /> </p>       
    </DIV>

    <div class="form-group col-md-4 col-sm-6">
      <p class="font-weight-bold">ATENDIMENTO <input  class="form-control"  readonly="readonly"  value="<?php echo $row->TXT_TIPO_ATENDIMENTO_OS ?>" /></p> 
    </DIV>

    <div class="form-group col-md-4 col-sm-6">
      <p class="font-weight-bold">TIPO OS <input  class="form-control"  readonly="readonly"  value="<?php echo $row->TXT_TIPO_OS ?>" /></p>       
    </DIV> 

    <div class="form-group col-md-6 col-sm-12">
      <p class="font-weight-bold">CLIENTE	    <input  class="form-control"  readonly="readonly" value="<?php echo $row->TXT_RAZAO_CLI ?>" /></p> 		
    </DIV>

    <div class="form-group col-md-6 col-sm-12">
      <p class="font-weight-bold">SITUAÇÃO EQUIPAMENTO	<input class="form-control" readonly="readonly"  value="<?php echo $row->TXT_DADOSGERAIS_OS ?>" /></p>     
    </DIV>

    <div class="form-group col-md-12 col-sm-12">
      <p class="font-weight-bold">RECLAMACAO/SOLICITACAO<textarea  class="form-control" readonly="readonly" ><?php echo $row->TXT_RECLAMACAO_OS ?></textarea></p>   		
    </DIV>

    <div class="form-group col-md-12 col-sm-12">
      <p class="font-weight-bold">DEFEITO P/ TECNICO	<textarea class="form-control"   readonly="readonly" ><?php echo $row->TXT_DEFEITO_OS ?></textarea></p>  	
    </DIV>  

    <div class="form-group col-md-12 col-sm-12">
      <p class="font-weight-bold">SOLUÇÃO P/ TECNICO<textarea  class="form-control" readonly="readonly" ><?php echo $row->TXT_RESOLUCAO_OS ?></textarea></p>
    	
  </form>
  
  <?php } ?> 
			<?php
				include "conexao.php";

				$sqlItem = $con->prepare("SELECT a.NUM_ID_ITOS,b.TXT_LOGIN_USU,c.TXT_NOME_SER,a.TBL_ORDEMSERVICO_OS_NUM_ID_OS,a.DTA_INICIO_ITOS, a.HOR_INICIO_ITOS,
				a.DTA_TERMINO_ITOS,a.HOR_TERMINO_ITOS,a.VAL_VALOR_ITOS,a.TXT_STATUS_ITOS FROM TBL_ITEMOS_ITOS a

				LEFT JOIN TBL_USUARIO_USU b
				ON b.NUM_ID_USU = a.TBL_USUARIO_USU_NUM_ID_USU

				LEFT JOIN TBL_SERVICO_SER c
				ON c.NUM_ID_SER = a.TBL_SERVICO_SER_NUM_ID_SER

				WHERE `TBL_ORDEMSERVICO_OS_NUM_ID_OS` = '$valor'");

				if(! $sqlItem->execute()){die ('Houve um erro no processamento da transacao: '.mysqli_error());}

				while ($rowItem = $sqlItem->fetch(PDO::FETCH_OBJ)){			
			?>
  </p>
  <form method="post" action="processa-apontamento.php?acao=corrigeapontamento">

      
        <input name="id_os_apontamento" type="hidden" value="<?php echo $valor ?>" />
        <input name="id_servico_apontamento" type="hidden" value="<?php echo $rowItem->TBL_SERVICO_SER_NUM_ID_SER ?>" />
        <input name="id_item_os" type="hidden" value="<?php echo $rowItem->NUM_ID_ITOS ?>">
    
    <div class="form-row">
    <div class="form-row border col-md-12"> 
    <div class="form-group col-md-9 col-sm-10">
      <p class="font-weight-bold">SERVIÇO</p>
      <?php echo $rowItem->TXT_NOME_SER ?>
    </DIV>

    <div class="form-group col-md-3 col-sm-2">
      <p class="font-weight-bold">VALOR</p>  
      <?php echo $rowItem->VAL_VALOR_ITOS ?>          
    </DIV>
		
    <div class="form-group col-md-3 col-sm-6">
      <p class="font-weight-bold">DATA INICIO</p>
      <input name="data1"  class="form-control" type="date" id="data1"  value="<?php echo $rowItem->DTA_INICIO_ITOS ?>" />
    </DIV>
    
    <div class="form-group col-md-3 col-sm-6">
      <p class="font-weight-bold">HORA INICIO</p>
      <input name="hora1" class="form-control" type="time" id="hora1" step="2"  />
    </DIV>
      
    <div class="form-group col-md-3 col-sm-6">
      <p class="font-weight-bold">DATA FIM</p>
      <input name="data2" class="form-control" type="date" id="data2"  value="<?php echo $rowItem->DTA_TERMINO_ITOS ?>" />
    </DIV>

    <div class="form-group col-md-3 col-sm-6">
      <p class="font-weight-bold">HORA FIM</p>
      <input name="hora2" class="form-control" type="time" step="2" id="hora2"  />
		</DIV>
    
    <div class="form-group col-md-2">
        <input type="submit" name="registrar"  value="Salvar Dados" class="btn btn-success btn-block" />        
	  </div>
    </div>
    </form>


  		<?php
			}
		?>  
 </td>
    </tr>
</table>

</body>
</html>
<?php } ?>

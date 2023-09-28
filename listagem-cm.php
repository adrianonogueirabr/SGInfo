<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/bootstrap.css" rel="stylesheet" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Listagem de Contrato de Manutenção</title>
</head>

<body>

<form name="listagem" method="post">
  <table width="100%">
  <tr>
      <td>
      <!--DESATIVADO EM 13/08/2020 POIS COMECARA EM LISTAGEM<a href="consulta-cm.php"><img src="imagens/voltar.png" width="30" height="30" alt="voltar" title="Clique para Voltar" /></a>-->
	  	 
      <?php include "inicial.php" ?><legend><h4>Contratos de Manutenção<a href="cadastro-cm.php">
      <img src="imagens/contrato.png" title="Clique para novo Contrato de Manutencao" width="30" height="30" /></a><h3></legend>
      </td>
    </tr>
    <tr>
    <td>

    <table width="100%" class="table-hover table table-condensed table-bordered table-striped table-sm">
        <tr  class="table-primary responsive">
		  
          <th scope="col">ID</th>
          <th scope="col">ATIVO</th>
          <th scope="col">ID DO CLIENTE</th>
          <th scope="col">DATA INICIO</th>
          <th scope="col">DATA TERMINO</th>
          <th scope="col">VALOR</th>
          <th scope="col">VENCIMENTO</th>
          <th scope="col">USUARIO</th>
          <th colspan="2" scope="col" align="center">TAREFAS</th>
        </tr>
      
        <tr>
        <?php
        require_once 'contratoManutencaoDao.php';
        require_once 'conexao.php';

        $listagemContratos = new contratoManutencaoDao();        
        
	    	foreach($listagemContratos->ListarContratos() as $contrato):			
	    	?>  
          <td align="center"><?php echo $contrato['NUM_ID_CM'];?></div></td>
          <td align="center"><?php echo $contrato['TXT_ATIVO_CM'];?></div></td>
          <td><?php echo $contrato['TXT_RAZAO_CLI'] ;?></div></td>
          <td><?php echo date("d/m/Y",strtotime($contrato['DTA_INICIO_CM']));?></div></td>
          <td><?php echo date("d/m/Y",strtotime($contrato['DTA_TERMINO_CM']));?></div></td>
          <td><?php echo $contrato['VAL_VALOR_CM'];?></div></td>
          <td><?php echo $contrato['NUM_DIAPAGAMENTO_CM'];?></div></td>
          <td><?php echo $contrato['TXT_LOGIN_USU'];?></div></td>
          <td>
          <a href="alterar-cm.php?id=<?php echo $contrato['NUM_ID_CM'];?>">
          	<img src="imagens/alterar.png" title="Clique para Alterar" width="26" height="25" /></a>
                
          <a href="gerar-fatura-cm.php?idContrato=<?php echo $contrato['NUM_ID_CM'];?>&idCliente=<?php echo $contrato['NUM_ID_CLI'];?>&valorCM=<?php echo $contrato['VAL_VALOR_CM'];?>&diaPag=<?php echo $contrato['NUM_DIAPAGAMENTO_CM'];?>">
		      	<img src="imagens/recibo.jpg" title="Clique para Gerar Fatura" width="26" height="25" onclick="return confirm('Confirma gerar fatura para pagamento em nome de <?php echo $contrato['TXT_RAZAO_CLI'];?>?')" /></a>  
          
          		  
		  </td>
        </tr>
        <?php
		     endforeach;
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
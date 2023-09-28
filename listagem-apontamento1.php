<?php include 'verifica.php';
//LIBERACAO TECNICO PARA APROVAR E EXECUTAR SERVICO DAS OS
	//if($perfil_usuario == 5){
		
	include "conexao.php";
	
	$valor = $_POST['valor'];		
	
	$res = $con->prepare("SELECT * FROM TBL_ORDEMSERVICO_OS WHERE (TXT_STATUS_OS <> 'TE') AND (TXT_STATUS_OS <> 'PG') AND (TXT_STATUS_OS <> 'FA') AND (TXT_STATUS_OS <> 'CA') AND NUM_ID_OS = '$valor' AND TBL_USUARIO_USU_NUM_ID_USU = '$id_usuario'");		
	$res->execute();
	//caso a os esteja com status nao permitido
	if($res->rowCount()<=0){	
		echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-apontamento.php'><script type=\"text/javascript\">alert(\"Ordem de Servico nao disponivel para apontamento ou Tecnico diferente!\");</script>";		
	}else{
?>	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/bootstrap.css" rel="stylesheet" />

<title>Listagem de Serviços da OS</title>
</head>
<body>

<form name="listagem" method="post" action="processa-apontamento.php?acao=adcionar">
<table class="table">
    <tr>
	    <td> <?php include "inicial.php"?> </td>
	</tr>
  <tr><td class=" table-primary"><h4>Dados de Serviços</h4>
   <!--
     desativado em 16/11/2020 pois foram para o rodape
     <a href="processa-apontamento.php?acao=encerraros&idos=<?php echo $valor ?>"><img src="imagens/terminar.png" width="30" height="30" title="Clique para encerrar a Ordem de Servico" /></a>
   <a href="relatorio-os.php?id=<?php echo $valor?>" target="_blank"> <img src="imagens/imprimir.png" width="26" height="25" title="Clique para Imprimir Ordem de Serviço" /></a>      
   -->
   </h4>        
  </td></tr>
  </table>
  <table width="80%" align="center">
	<tr><td>    

	<?php
		while ($row = $res->fetch(PDO::FETCH_OBJ)){			
	?>
    <div class="form-row">
    <div class="form-group col-md-3 col-sm-6">
        <p class="font-weight-bold">NUMERO
        <input disabled="disabled" value="<?php echo $row->NUM_ID_OS ?>"class="form-control"  /></p>
    </div>

      <!-- campos que identificam a os na inserçãp-->
      <input type="hidden" name="id_os" id="id_os" value="<?php echo $row->NUM_ID_OS ?>" />
      <input type="hidden" name="tipo_os" id="tipo_os" value="<?php echo $row->TXT_TIPO_OS ?>" />
      <input type="hidden" name="id_cliente" id="id_cliente" value="<?php echo $row->TBL_CLIENTE_CLI_NUM_ID_CLI ?>" />
      <!--fim campos -->

    <div class="form-group col-md-3 col-sm-6">
    <p class="font-weight-bold">TIPO OS
     <?php if($row->TXT_TIPO_OS=='P'){
                $tipos = 'PADRAO';
             }else if($row->TXT_TIPO_OS =='C'){ 
                $tipos = 'CONTRATO';
             }else if($row->TXT_TIPO_OS =='G'){ 
                $tipos = 'GARANTIA';
             }?>

    <input disabled="disabled"  value="<?php echo $tipos ?>"class="form-control"  /></p>
    </div>    
              
            <?php
                $cli = $row->TBL_CLIENTE_CLI_NUM_ID_CLI;
                $sql_nome = $con->prepare("SELECT *  FROM TBL_CLIENTE_CLI WHERE NUM_ID_CLI = '$cli'");
                $sql_nome->execute();
                while($row_nome = $sql_nome->fetch(PDO::FETCH_OBJ)){						
            ?>
                <!-- adcionado em 21/01/2019	codigo para capturar tpo de pessoa cliente-->
                <input type="hidden" name="pessoa_cliente" id="pessoa_cliente" value="<?php echo $row_nome->TXT_PESSOA_CLI ?>" />

                <div class="form-group col-md-6 col-sm-12">
                   <p class="font-weight-bold">CLIENTE
                   <input disabled="disabled" value="<?php echo $row_nome->TXT_RAZAO_CLI ?>" class="form-control"  /></p>
                </div>
          
            <?php } ?>
                 
            <div class="form-group col-md-12 col-sm-12">
                   <p class="font-weight-bold">ESTADO EQUIPAMENTO
                   <input disabled="disabled" value="<?php echo $row->TXT_DADOSGERAIS_OS ?>" class="form-control"  /></p>
            </div>             


            <div class="form-group col-md-12 col-sm-12">
                   <p class="font-weight-bold">SOLICITACAO/RECLAMAÇÃO DO CLIENTE
                   <textarea name="textarea" class="form-control"  disabled="disabled" id="textarea"><?php echo $row->TXT_RECLAMACAO_OS ?></textarea></p>
            </div>   

            <div class="form-group col-md-12 col-sm-12">
                   <p class="font-weight-bold">DEFEITO CONFORME O TECNICO
                   <a href="cadastro-defeito.php?os=<?php echo $valor ?>" target="_self" title="Clique para editar">
                   <textarea class="form-control" name="textarea"  readonly="readonly" id="textarea"><?php echo $row->TXT_DEFEITO_OS ?></textarea></p>
                   </a>
            </div>  

            <div class="form-group col-md-12 col-sm-12">
                   <p class="font-weight-bold">SOLUÇÃO CONFORME O TECNICO
                   <a href="cadastro-solucao.php?os=<?php echo $valor ?>" target="_self" title="Clique para editar">
                   <textarea class="form-control" name="textarea"  readonly="readonly" id="textarea"><?php echo $row->TXT_RESOLUCAO_OS  ?></textarea></p>
                   </a>
            </div>     

     <?php } ?> 

            <div class="form-group col-md-10 col-sm-9">
                  <select name="servico" class="form-control"> 
                    <?php
                  include "conexao.php"; 
                  $sql_servicos=$con->prepare("SELECT NUM_ID_SER, TXT_NOME_SER FROM TBL_SERVICO_SER WHERE TXT_ATIVO_SER = 'S' ORDER BY TXT_NOME_SER");
                  $sql_servicos->execute();
                    while($sqlResultFim = $sql_servicos->fetch(PDO::FETCH_OBJ)){?>
                    <option value="<?php echo $sqlResultFim->NUM_ID_SER ?>"> <?php echo $sqlResultFim->TXT_NOME_SER ?></option>
                    <?php } ?>
                  </select> 
            </DIV>          
            
            <div class="form-group col-md-2 col-sm-3">
                 <input type="submit" class="btn btn-primary btn-block" name="button" id="button" value="ADCIONAR SERVIÇO" />
            </DIV>


			<?php
				include "conexao.php";
				$sql_itens = $con->prepare("SELECT * FROM TBL_ITEMOS_ITOS WHERE TBL_ORDEMSERVICO_OS_NUM_ID_OS = '$valor'");
				$sql_itens->execute();
					while ($rowItem = $sql_itens->fetch(PDO::FETCH_OBJ)){			
      
            $idItem = $rowItem->TBL_SERVICO_SER_NUM_ID_SER;
			    	$sql_NomeItem = $con->prepare("SELECT TXT_NOME_SER FROM TBL_SERVICO_SER WHERE NUM_ID_SER = '$idItem'");
            $sql_NomeItem->execute();
              while($row_nomeItem = $sql_NomeItem->fetch(PDO::FETCH_OBJ)){
                $servico= $row_nomeItem->TXT_NOME_SER;
              } ?>       


        <div class="form-group col-md-5 col-sm-10">
            <p class="font-weight-bold">SERVIÇO
            <input disabled="disabled" value="<?php echo $servico ?>"class="form-control"  /></p>
        </div>

        <div class="form-group col-md-1 col-sm-2">
            <p class="font-weight-bold">VALOR
            <input disabled="disabled" value="<?php echo $rowItem->VAL_VALOR_ITOS ?>"class="form-control"  /></p>
        </div>

        <div class="form-group col-md-2 col-sm-6">
            <p class="font-weight-bold">DATA/HORA INICIO
            <input disabled="disabled" value="<?php if($rowItem->DTA_INICIO_ITOS<>""){echo date("d/m/Y",strtotime($rowItem->DTA_INICIO_ITOS)) ;}?> | <?php echo $rowItem->HOR_INICIO_ITOS ;?>"class="form-control"  /></p>
        </div>

        <div class="form-group col-md-2 col-sm-6">
            <p class="font-weight-bold">DATA/HORA FIM
            <input disabled="disabled" value="<?php if($rowItem->DTA_TERMINO_ITOS<>""){echo date("d/m/Y",strtotime($rowItem->DTA_TERMINO_ITOS)) ;}?> | <?php echo $rowItem->HOR_TERMINO_ITOS ;?>"class="form-control"  /></p>
        </div>


        <div class="form-group col-md-2 col-sm-12">
        <div class="btn-group dropleft">
          <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Ações</button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
              <a class="dropdown-item" href="processa-apontamento.php?acao=iniciar&id=<?php echo $rowItem->NUM_ID_ITOS ?>&os=<?php echo $valor ?>">Iniciar</a>
              <a class="dropdown-item" href="processa-apontamento.php?acao=terminar&id=<?php echo $rowItem->NUM_ID_ITOS ?>&os=<?php echo $valor ?>">Terminar</a>
              <a class="dropdown-item" href="processa-apontamento.php?acao=excluir&id=<?php echo $rowItem->NUM_ID_ITOS ?>&os=<?php echo $valor ?>">Remover</a>
            </div>
          </div>  
        </div> 
                    
      <?php
			}
	}
			?> 
        <div class="form-group col-md-2">
        <a href="processa-apontamento.php?acao=encerraros&idos=<?php echo $valor ?>" class="btn btn-success btn-block" >Encerrar OS</a>
        <a href="relatorio-os.php?id=<?php echo $valor?>" target="_blank" class="btn btn-danger btn-block" >Imprimir OS</a>        
</td>
    </tr>
    <tr><td>
        
        </td>
    </tr>
</table>
</form>


</div> 
</div>
</body>
</html>

<?php

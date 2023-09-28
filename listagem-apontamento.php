<?php include 'verifica.php';
//LIBERACAO TECNICO PARA APROVAR E EXECUTAR SERVICO DAS OS
	//if($perfil_usuario == 5){
		
	include "conexao.php";
	
      if($_POST['valor']==""){
	        $valor = $_GET['id'];		
      }else{
        $valor = $_POST['valor'];		
      }
	
	$res = $con->prepare("SELECT * FROM TBL_ORDEMSERVICO_OS WHERE (TXT_STATUS_OS <> 'ENCERRADA') AND (TXT_STATUS_OS <> 'PAGO') AND (TXT_STATUS_OS <> 'FATURADA') AND (TXT_STATUS_OS <> 'CANCELADA') AND NUM_ID_OS = '$valor' AND TBL_USUARIO_USU_NUM_ID_USU = '$id_usuario'");		
	$res->execute();
	//caso a os esteja com status nao permitido
	if($res->rowCount()<=0){	
		echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-apontamento.php'><script type=\"text/javascript\">alert(\"Ordem de Servico nao disponivel para apontamento ou Consultor diferente!\");</script>";		
	}else{
?>	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>

<form name="listagem" method="post" action="#">
<table class="table">
    <tr>
	      <td> <?php include "inicial.php"?> </td>
	  </tr>
    <tr>
        <td><legend class="p-4 table-primary">Servicos e Pecas<legend></td>
    </tr>
</table>
<?php
    if(isset($_SESSION['msg'])){
        echo $_SESSION['msg'];
        unset($_SESSION['msg']);
    }
?>
<table  class="table">
  	<tr>
        <td>    
            <?php
              while ($row = $res->fetch(PDO::FETCH_OBJ)){			
            ?>
                  <!-- campos que identificam a os na inserçãp-->
                  <input type="hidden" name="id_os" id="id_os" value="<?php echo $row->NUM_ID_OS ?>" />
                  <?php $statusOs = $row->TXT_STATUS_OS ?>
                  <input type="hidden" name="tipo_os" id="tipo_os" value="<?php echo $row->TXT_TIPO_OS ?>" />
                  <input type="hidden" name="id_cliente" id="id_cliente" value="<?php echo $row->TBL_CLIENTE_CLI_NUM_ID_CLI ?>" />
                  <!--fim campos -->

                    <div class="form-row">
                        <div class="form-group col-md-3 col-sm-6"><label>Ordem de Servico</label>
                        <input title="NUMERO DA ORDEM DE SERVICO" value="<?php echo $row->NUM_ID_OS ?>" readonly="readonly" class="form-control" readonly /> </div> 

                        <div class="form-group  col-md-3 col-sm-6"><label>Tipo</label>
                        <input title="TIPO DA ORDEM DE SERVICO" value="<?php echo $row->TXT_TIPO_OS ?>" readonly="readonly" class="form-control" readonly /></div> 
                        <!--identificacao do cliente-->
                        <?php
                            $cli = $row->TBL_CLIENTE_CLI_NUM_ID_CLI;
                            $sql_nome = $con->prepare("SELECT *  FROM TBL_CLIENTE_CLI WHERE NUM_ID_CLI = '$cli'");
                            $sql_nome->execute();
                            while($row_nome = $sql_nome->fetch(PDO::FETCH_OBJ)){						
                        ?>
                            <!-- adcionado em 21/01/2019	codigo para capturar tpo de pessoa cliente-->
                            <input type="hidden" name="pessoa_cliente" id="pessoa_cliente" value="<?php echo $row_nome->TXT_PESSOA_CLI ?>" />

                            <div class="form-group  col-md-6 col-sm-6"><label>Cliente</label>
                            <input title="CLIENTE DA ORDEM DE SERVICO" value="<?php echo $row_nome->TXT_RAZAO_CLI ?>" readonly="readonly" class="form-control" readonly /> </div>                    
                        <?php } ?>                   
                     <!--fim identificacao do cliente-->
                     <!--identificacao da frota-->
                        <?php 
                    
                     //select para pegar tipo de equipamento e serial
                      $sql_frota = $con->prepare("SELECT C.TXT_RAZAO_CLI,F.TBL_CLIENTE_CLI_NUM_ID_CLI , F.NUM_ID_FR, F.TXT_ATIVO_FR, T.TXT_NOME_TIP, M.TXT_NOME_MAR, MO.TXT_NOME_MOD, 
                 
                      F.TXT_PLACA_FR, F.TXT_CHASSI_FR, F.DTH_REGISTRO_FR,F.DTH_ALTERACAO_FR, CO.TXT_NOME_COR 

                      FROM tbl_frota_fr F 

                      LEFT JOIN TBL_CLIENTE_CLI C ON C.NUM_ID_CLI = F.TBL_CLIENTE_CLI_NUM_ID_CLI 
                      LEFT JOIN TBL_TIPO_TIP T ON T.NUM_ID_TIP = F.TBL_TIPO_TIP_NUM_ID_TIP 
                      LEFT JOIN TBL_MARCA_MAR M ON M.NUM_ID_MAR = F.TBL_MARCA_MAR_NUM_ID_MAR
                      LEFT JOIN TBL_MODELO_MOD MO ON MO.NUM_ID_MOD = F.TBL_MODELO_MOD_NUM_ID_MOD
                      LEFT JOIN TBL_COR_COR CO ON CO.NUM_ID_COR = F.TBL_COR_COR_NUM_ID_COR
            
                      WHERE F.NUM_ID_FR = $row->TBL_FROTA_FR_NUM_ID_FR");

                        $sql_frota->execute();
            
                        while($row_frota = $sql_frota->fetch(PDO::FETCH_OBJ)){?>
                            
                            <div class="form-group  col-md-4 "><label for="Tipo">Tipo</label>
                                <input name="Tipo" value="<?php echo $row_frota->TXT_NOME_TIP; ?>" readonly="readonly" class="form-control"  /></div> 
                            <div class="form-group  col-md-4 "><label for="Marca">Marca</label>
                                <input name="Marca" value="<?php echo $row_frota->TXT_NOME_MAR; ?>" readonly="readonly" class="form-control"  /></div>                        
                            <div class="form-group  col-md-4 "><label for="Modelo">Modelo</label>
                                <input name="Modelo" value="<?php echo $row_frota->TXT_NOME_MOD; ?>" readonly="readonly" class="form-control"  /> </div>                        
                            <div class="form-group  col-md-4 "><label for="Placa">Placa</label>
                                <input name="Placa" value="<?php echo $row_frota->TXT_PLACA_FR; ?>" readonly="readonly" class="form-control"  /> </div>                        
                            <div class="form-group col-md-4 "><label for="Chassi">Chassi</label>
                                <input name="Chassi" value="<?php echo $row_frota->TXT_CHASSI_FR; ?>" readonly="readonly" class="form-control"  /> </div>                        
                            <div class="form-group  col-md-4 "><label for="Cor">Cor</label>
                                <input name="Cor" value="<?php echo $row_frota->TXT_NOME_COR; ?>" readonly="readonly" class="form-control"  /></div>                        
                          
                        <?php }?>
                        <!--fim identificacao da frota-->
                        <div class="form-group col-md-12 col-sm-6"><label>Dados Gerais Frota</label>
                        <input title="DADOS GERAIS DA FROTA DA ORDEM DE SERVICO" value="<?php echo $row->TXT_DADOSGERAIS_OS ?>" readonly="readonly" class="form-control" readonly /></div> 

                        <div class="form-group col-md-12 col-sm-6"><label>Solicitacoes</label>
                        <textarea name="textarea" class="form-control"  disabled="disabled" id="textarea"><?php echo $row->TXT_SOLICITACOES_OS ?></textarea></div>
                        
                        <div class="form-group col-md-4 col-sm-6"><label>Valor Total</label>
                        <input title="VALOR TOTAL DE SERVICOS E PECAS" value="R$<?php echo number_format($row->VAL_TOTAL_OS,2) ?>" readonly="readonly" class="form-control" readonly /> </div> 

                        <div class="form-group col-md-4 col-sm-6"><label>Total Desconto</label>
                        <input title="VALOR TOTAL DE DESCONTOS" value="R$<?php echo number_format($row->VAL_DESCONTO_OS,2) ?>" readonly="readonly" class="form-control" readonly /> </div> 

                        <div class="form-group col-md-4 col-sm-6"><label>Valor Final</label>
                        <input title="VALOR FINAL A SER PAGO" value="R$<?php echo number_format($row->VAL_FINAL_OS,2) ?>" readonly="readonly" class="form-control" readonly /> </div> 

                    </div>

             <?php } ?> 
        </td>
    </tr>
    </form>
    <tr>
        <td>
                        <Legend>Servicos</legend> 
                        <!--LIstagem de Servicos para incluir na OS-->
                        <form name="servicos" method="post" action="processa-os.php?acao=incluirservico">
                        <input type="hidden" name="id" id="id" value="<?php echo $valor ?>" />
                            <div class="form-row">
                                <div class="form-group col-md-10 col-sm-10">
                                    <select name="servico" class="form-control" title="SELECIONE O SERVICO A SER INCLUIDO"> 
                                        <?php
                                        include "conexao.php"; 
                                        $sql_servicos=$con->prepare("SELECT NUM_ID_SER, TXT_NOME_SER, VAL_VALOR_SER FROM TBL_SERVICO_SER WHERE TXT_ATIVO_SER = 'SIM' ORDER BY TXT_NOME_SER");
                                        $sql_servicos->execute();
                                            while($sqlResultFim = $sql_servicos->fetch(PDO::FETCH_OBJ)){?>
                                                <option value="<?php echo $sqlResultFim->NUM_ID_SER ?>"> <?php echo $sqlResultFim->TXT_NOME_SER ?></option>
                                            <?php } ?>
                                    </select> 
                                </div>                                
                                <div class="form-group col-md-2 col-sm-2">
                                    <input type="submit" class="btn btn-outline-primary btn-block" name="button" id="button" value="Incluir Servico" />
                                </div>
                            </div>
                        </form>

             <!--Fim listagem-->
        </td>
    </tr>
    <tr>
        <td>
              <table width="100%" class=" table-sm table-striped table-bordered">
                        
                  <tr align="center">
                        <th>Servico</td>
                        <th>Total</td>                   
                        <th>Desconto</td>
                        <th>Final</td>
                        <th>Inicio</td>
                        <th>Termino</td>                        
                        <th>Mecanico</td>
                        <th>Status</td> 
                        <th>Opcoes</td>       
                  </tr>
                  <?php
                      include "conexao.php";
                      $sqlItem = $con->prepare("SELECT * FROM TBL_ITEM_SERVICO_OS WHERE TBL_ORDEMSERVICO_OS_NUM_ID_OS = '$valor'");
                      $sqlItem->execute();
                          while ($rowItem = $sqlItem->fetch(PDO::FETCH_OBJ)){
                  ?>        
                  <tr align="center">          
                      <td align="left">
                          <?php
                            $idServico = $rowItem->TBL_SERVICO_SER_NUM_ID_SER;
                            $sqlNomeServico = $con->prepare("SELECT TXT_NOME_SER FROM TBL_SERVICO_SER WHERE NUM_ID_SER = '$idServico'");
                            $sqlNomeServico->execute();
                            echo $nomeServico = $sqlNomeServico->fetchColumn()
                          ?>
                      </td>
                          <td>R$ <?php echo number_format($rowItem->VAL_VALOR_SERVICO_OS,2) ?></td>
                          <td>R$ <?php echo number_format($rowItem->VAL_DESCONTO_SERVICO_OS,2) ?></td>
                          <td>R$ <?php echo number_format($rowItem->VAL_VALOR_FINAL_SERVICO_OS,2) ?></td>
                          <td><?php echo date("d/m/Y  H:i:s",strtotime($rowItem->DTH_INICIO_SERVICO_OS)) ?></td>					
                          <td><?php echo date("d/m/Y  H:i:s",strtotime($rowItem->DTH_FINAL_SERVICO_OS)) ?></td>
                          <!--Buscar nome do mecanico-->
                          <?php
                            $idMecanico = $rowItem->TBL_MECANICO_MEC_NUM_ID_MEC;
                            $sqlNomeMecanico = $con->prepare("SELECT TXT_CODIGO_MEC FROM TBL_MECANICO_MEC WHERE NUM_ID_MEC = '$idMecanico'");
                            $sqlNomeMecanico->execute();
                            $nomeMecanico = $sqlNomeMecanico->fetchColumn()
                          ?>
                          <td><?php echo $nomeMecanico ?></td>
                          <td><?php echo $rowItem->TXT_STATUS_SERVICO_OS ?></td>
                          <td>
                        
                          <div class="form-group">
                            <div class="btn-group dropleft">
                              <button class="btn btn-outline-primary btn-sm dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Opcoes</button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="atribuir-mecanico.php?id=<?php echo $valor ?>&id_item_servico=<?php echo $rowItem->NUM_ID_SERVICO_OS ?>">Mecanico</a>
                                    <?php if($rowItem->TXT_STATUS_SERVICO_OS=='AGUARDANDO APROVACAO'){ ?>
                                        <a class="dropdown-item" href="processa-os.php?acao=aprovarservico&id=<?php echo $valor ?>&id_item_servico=<?php echo $rowItem->NUM_ID_SERVICO_OS ?>">Aprovar</a>
                                        <a class="dropdown-item" href="desconto-servico.php?id=<?php echo $valor ?>&id_item_servico=<?php echo $rowItem->NUM_ID_SERVICO_OS ?>">Desconto</a>
                                        <a class="dropdown-item" href="processa-os.php?acao=removerservico&id=<?php echo $valor ?>&id_item_servico=<?php echo $rowItem->NUM_ID_SERVICO_OS ?>">Remover</a>                                        
                                    <?php } ?> 
                                    <?php if($rowItem->TXT_STATUS_SERVICO_OS=='APROVADO'){ ?>
                                        <a class="dropdown-item" href="processa-os.php?acao=iniciar&id=<?php echo $valor ?>&id_item_servico=<?php echo $rowItem->NUM_ID_SERVICO_OS ?>">Iniciar</a>
                                        <a class="dropdown-item" href="processa-os.php?acao=removerservico&id=<?php echo $valor ?>&id_item_servico=<?php echo $rowItem->NUM_ID_SERVICO_OS ?>">Remover</a>                                        
                                    <?php } ?>
                                    <?php if($rowItem->TXT_STATUS_SERVICO_OS=='ANDAMENTO'){ ?>
                                        <a class="dropdown-item" href="processa-os.php?acao=terminar&id=<?php echo $valor ?>&id_item_servico=<?php echo $rowItem->NUM_ID_SERVICO_OS ?>">Terminar</a>
                                        <a class="dropdown-item" href="processa-os.php?acao=removerservico&id=<?php echo $valor ?>&id_item_servico=<?php echo $rowItem->NUM_ID_SERVICO_OS ?>">Remover</a>                                        
                                    <?php } ?>  
                                    <?php if($rowItem->TXT_STATUS_SERVICO_OS=='REALIZADO'){ ?>
                                        <a class="dropdown-item" href="#"></a>                                        
                                    <?php } ?>                                 
                                </div>
                              </div>  
                            </div>                        
                        
                        </td>
                  </tr>
                  <?php }  ?> 
              </table>
        </td>
    </tr>
    <tr>
        <td>
              <Legend>Pecas</Legend> 
             <!--LIstagem de Pecas para incluir na OS-->
             <form name="pecas" method="post" action="processa-os.php?acao=incluirpeca">
                <input type="hidden" name="id" id="id" value="<?php echo $valor ?>" />
                <div class="form-row">
                    <div class="form-group col-md-9 col-sm-9">
                        <select name="peca" class="form-control" title="SELECIONE A PECA A SER INCLUIDA"> 
                            <?php
                        include "conexao.php"; 
                        $sql_servicos=$con->prepare("SELECT NUM_ID_PEC, TXT_NOME_PEC, VAL_VALOR_VENDA_PEC FROM TBL_PECA_PEC WHERE TXT_ATIVO_PEC = 'SIM' ORDER BY TXT_NOME_PEC");
                        $sql_servicos->execute();
                            while($sqlResultFim = $sql_servicos->fetch(PDO::FETCH_OBJ)){?>
                            <option value="<?php echo $sqlResultFim->NUM_ID_PEC ?>"> <?php echo $sqlResultFim->TXT_NOME_PEC ?> - R$<?php echo $sqlResultFim->VAL_VALOR_VENDA_PEC ?></option>
                            <?php } ?>
                        </select> 
                    </div>

                    <div class="form-group col-md-1 col-sm-12">                
                        <p class="font-weight-bold"><input value="1" name="quantidade" id="quantidade" class="form-control" title="INFORME A QUANTIDADE" /></p>
                    </div>
                    
                    <div class="form-group col-md-2 col-sm-2">
                        <input type="submit" class="btn btn-outline-danger btn-block" name="button" id="button" value="Incluir Peca" />
                    </div>
                </div>
             </form>
             <!--Fim listagem-->
    </td>
</tr>
<tr>
    <td>
              <table width="100%" class=" table-sm table-striped table-bordered">                        
                  <tr align="center">
                        <th>Peca</td>
                        <th>Unitario</td> 
                        <th>QTD</td>
                        <th>Total</td>                   
                        <th>Desconto</td>
                        <th>Final</td>
                        <th>Status</td>
                        <th>Opcoes</td>          
                  </tr>
                  <?php
                      include "conexao.php";
                      $sqlItem = $con->prepare("SELECT * FROM TBL_ITEM_PECA_OS WHERE TBL_ORDEMSERVICO_OS_NUM_ID_OS = '$valor'");
                      $sqlItem->execute();
                          while ($rowItem = $sqlItem->fetch(PDO::FETCH_OBJ)){
                  ?>        
                  <tr align="center">          
                      <td align="left">
                          <?php
                            $id = $rowItem->TBL_PECA_PEC_NUM_ID_PEC;
                            $sqlItemNome = $con->prepare("SELECT TXT_NOME_PEC FROM TBL_PECA_PEC WHERE NUM_ID_PEC = '$id'");
                            $sqlItemNome->execute();
                            echo $nomePeca = $sqlItemNome->fetchColumn()
                          ?>
                      </td>
                          <td>R$ <?php echo number_format($rowItem->VAL_VALOR_PECA_OS / $rowItem->NUM_QUANTIDADE_PECA_OS,2) ?></td>
                          <td><?php echo $rowItem->NUM_QUANTIDADE_PECA_OS ?></td>
                          <td>R$ <?php echo number_format($rowItem->VAL_VALOR_PECA_OS,2) ?></td>
                          <td>R$ <?php echo number_format($rowItem->VAL_DESCONTO_PECA_OS,2) ?></td>
                          <td>R$ <?php echo number_format($rowItem->VAL_FINAL_PECA_OS,2) ?></td>					
                          <td><?php echo $rowItem->TXT_STATUS_PECA_OS ?></td>
                          <td>
                          <div class="form-group">
                            <div class="btn-group dropleft">
                              <button class="btn btn-outline-primary btn-sm dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Opcoes</button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <?php if($rowItem->TXT_STATUS_PECA_OS=='AGUARDANDO APROVACAO'){ ?>                                        
                                        <a class="dropdown-item" href="processa-os.php?acao=aprovarpeca&id=<?php echo $valor ?>&id_item_peca=<?php echo $rowItem->NUM_ID_PECA_OS ?>">Aprovar</a>
                                        <a class="dropdown-item" href="desconto-peca.php?id=<?php echo $valor ?>&id_item_peca=<?php echo $rowItem->NUM_ID_PECA_OS ?>">Desconto</a>
                                        <a class="dropdown-item" href="processa-os.php?acao=removerpeca&id=<?php echo $valor ?>&id_item_peca=<?php echo $rowItem->NUM_ID_PECA_OS ?>">Remover</a>                                        
                                    <?php } ?> 
                                    <?php if($rowItem->TXT_STATUS_PECA_OS=='APROVADO'){ ?>
                                        <a class="dropdown-item" href="processa-os.php?acao=realizadopeca&id=<?php echo $valor ?>&id_item_peca=<?php echo $rowItem->NUM_ID_PECA_OS ?>">Realizado</a>                                        
                                        <a class="dropdown-item"  href="processa-os.php?acao=removerpeca&id=<?php echo $valor ?>&id_item_peca=<?php echo $rowItem->NUM_ID_PECA_OS ?>">Remover</a>  
                                        
                                        <!-- comando para confirmacao onclick="return confirm('Tem certeza que deseja deletar este registro?')"-->
                                    <?php } if($rowItem->TXT_STATUS_PECA_OS=='REALIZADO'){ ?>
                                                <a class="dropdown-item" href="#"></a>
                                    <?php } ?>
                                    
                                    
                                </div>
                              </div>  
                            </div>
                          </td>
                  </tr>
                  <?php }  ?> 
              </table>            
                                
          <?php
          }
      
          ?>              
        </td>
    </tr> 
    <tr>
        <td>
                <div class="form-row">
                    <div class="form-group col-md-2">
                        <a href="processa-os.php?acao=encerraros&idos=<?php echo $valor ?>&statusOs=<?php echo $statusOs ?>" class="btn btn-outline-success btn-block"  >Encerrar OS</a></div>
                    <div class="form-group col-md-2">
                        <a href="relatorio-os.php?id=<?php echo $valor?>" target="_blank" class="btn btn-outline-warning btn-block" >Imprimir OS</a></div>
                </div>
        </td>
    </tr>               
</table>



</div> 
</div>
</body>
</html>

<?php

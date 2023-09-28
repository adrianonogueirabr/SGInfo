<?php 
    //LIBERACAO TECNICO PARA APROVAR E EXECUTAR SERVICO DAS OS
    
    include "conexao.php";
    
    $valor = $_GET['id'];	
    
    $sqlOs = $con->prepare("SELECT * FROM TBL_ORDEMSERVICO_OS WHERE NUM_ID_OS = '$valor'");		
    $sqlOs->execute();
    //caso a os esteja com status nao permitido
    if($sqlOs->rowCount() <=0){	
        echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-apontamento.php'><script type=\"text/javascript\">alert(\"Erro no processamento das informacoes!\");</script>";		
    }else{
?>	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head> 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="author" content="Adriano Nogueira - Desenvolvedor">
    <meta content= "SGOFIC - SISTEMA DE GESTÃO DE OFICINAS" name="description">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </head>
<body>
<table width="100%" class="table"> 
    <tr>
        <td width="50%">
            <img src="imagens/logo_ofc.png" width="50%" height="80" />     
        </td>
        <td align="right">
            <?php	while ($rowOs = $sqlOs->fetch(PDO::FETCH_OBJ)){	?> 
                <?php 
                    //selecao da empresa para cabecalho do relatorio
                    $empresa = $rowOs->TBL_EMPRESA_EMP_NUM_ID_EMP;
                    $sql_empresa = $con->prepare("SELECT * FROM TBL_EMPRESA_EMP WHERE NUM_ID_EMP = $empresa");
                    $sql_empresa->execute();
                    while ($row_empresa = $sql_empresa->fetch(PDO::FETCH_OBJ)){?>
                        <label><?php echo $row_empresa->TXT_FANTASIA_EMP ?></label></br>
                        <label><?php echo $row_empresa->TXT_LOGRADOURO_EMP ?> N<?php echo $row_empresa->NUM_NUMERO_EMP ?>, <?php echo $row_empresa->TXT_BAIRRO_EMP ?>,<?php echo $row_empresa->TXT_CIDADE_EMP ?>-<?php echo $row_empresa->TXT_ESTADO_EMP ?></label></br>
                        <label><?php echo $row_empresa->TXT_TELEFONE_EMP ?> - <?php echo $row_empresa->TXT_EMAIL_EMP ?><label></br>
                    <?php } ?> 
        </td>          
    </tr>
    <tr>
        <td colspan="2" align="center">
            <h3>Impressao de Ordem de Servico</h3>
        </td>
    </tr>
    <tr>
        <td colspan="2"><h4>Dados de Cliente</h4>             
                <?php	//seleciona nome e telefone do cliente da ordem de servico
                  $cli = $rowOs->TBL_CLIENTE_CLI_NUM_ID_CLI;
                  $sql_nome = $con->prepare("SELECT TXT_RAZAO_CLI,TXT_TELEFONE_CLI, TXT_EMAIL_CLI  FROM TBL_CLIENTE_CLI WHERE NUM_ID_CLI = '$cli'");
                  $sql_nome->execute();
                  while($row_nome = $sql_nome->fetch(PDO::FETCH_OBJ)){
                ?>                       
                    <div class="form-row">
                        <div class="form-group col-md-2 input-group-sm mb-3 ">
                          <label for="id">ID</label>              
                          <input name="id"value="<?php echo $rowOs->TBL_CLIENTE_CLI_NUM_ID_CLI; ?>" readonly="readonly" class="form-control"  />        
                        </div> 
                        <div class="form-group input-group-sm col-md-5 ">
                            <label for="Nome">Nome</label>
                            <input name="Nome" value="<?php echo $row_nome->TXT_RAZAO_CLI; ?>" readonly="readonly" class="form-control"  />   		      
                        </div> 
                        <div class="form-group input-group-sm col-md-2 ">
                            <label for="telefone">Telefone</label>
                            <input name="telefone" value="<?php echo $row_nome->TXT_TELEFONE_CLI; ?>" readonly="readonly" class="form-control"  />    		      
                        </div> 
                        <div class="form-group input-group-sm col-md-3 ">
                            <label for="tipo">Email</label>
                            <input name="Email" value="<?php echo $row_nome->TXT_EMAIL_CLI; ?>" readonly="readonly" class="form-control"  />   		      
                        </div> 
                    </div>
                <?php }//fim nome e telefone do cliente ?> 
            </td>
        </tr>
        <tr>       
            <td colspan="4"><h4>Dados da Frota</h4>         
              <?php 
                $equipamento = $rowOs->TBL_FROTA_FR_NUM_ID_FR;
                //select para pegar tipo de equipamento e serial
                 $sql_frota = $con->prepare("SELECT C.TXT_RAZAO_CLI,F.TBL_CLIENTE_CLI_NUM_ID_CLI , F.NUM_ID_FR, F.TXT_ATIVO_FR, T.TXT_NOME_TIP, M.TXT_NOME_MAR, MO.TXT_NOME_MOD, 
                 
                      F.TXT_PLACA_FR, F.TXT_CHASSI_FR, F.DTH_REGISTRO_FR,F.DTH_ALTERACAO_FR, CO.TXT_NOME_COR 

                      FROM tbl_frota_fr F 

                      LEFT JOIN TBL_CLIENTE_CLI C ON C.NUM_ID_CLI = F.TBL_CLIENTE_CLI_NUM_ID_CLI 
                      LEFT JOIN TBL_TIPO_TIP T ON T.NUM_ID_TIP = F.TBL_TIPO_TIP_NUM_ID_TIP 
                      LEFT JOIN TBL_MARCA_MAR M ON M.NUM_ID_MAR = F.TBL_MARCA_MAR_NUM_ID_MAR
                      LEFT JOIN TBL_MODELO_MOD MO ON MO.NUM_ID_MOD = F.TBL_MODELO_MOD_NUM_ID_MOD
                      LEFT JOIN TBL_COR_COR CO ON CO.NUM_ID_COR = F.TBL_COR_COR_NUM_ID_COR
            
                      WHERE F.NUM_ID_FR = $rowOs->TBL_FROTA_FR_NUM_ID_FR");

                 $sql_frota->execute();
    
                while($row_frota = $sql_frota->fetch(PDO::FETCH_OBJ)){?>

                    <div class="form-row" >
                        <div class="form-group input-group-sm col-md-3 "><label for="Nome">ID</label>
                            <input name="Nome" value="<?php echo $rowOs->TBL_FROTA_FR_NUM_ID_FR; ?>" readonly="readonly" class="form-control"  />   		      
                        </div>
                        <div class="form-group input-group-sm col-md-3 "><label for="Tipo">Tipo</label>
                            <input name="Tipo" value="<?php echo $row_frota->TXT_NOME_TIP; ?>" readonly="readonly" class="form-control"  />   		      
                        </div> 
                        <div class="form-group input-group-sm col-md-3 "><label for="Marca">Marca</label>
                            <input name="Marca" value="<?php echo $row_frota->TXT_NOME_MAR; ?>" readonly="readonly" class="form-control"  />   		      
                        </div>                        
                        <div class="form-group input-group-sm col-md-3 "><label for="Modelo">Modelo</label>
                            <input name="Modelo" value="<?php echo $row_frota->TXT_NOME_MOD; ?>" readonly="readonly" class="form-control"  />   		      
                        </div>                        
                        <div class="form-group input-group-sm col-md-4 "><label for="Placa">Placa</label>
                            <input name="Placa" value="<?php echo $row_frota->TXT_PLACA_FR; ?>" readonly="readonly" class="form-control"  />   		      
                        </div>                        
                        <div class="form-group input-group-sm col-md-4 "><label for="Chassi">Chassi</label>
                            <input name="Chassi" value="<?php echo $row_frota->TXT_CHASSI_FR; ?>" readonly="readonly" class="form-control"  />   		      
                        </div>                        
                        <div class="form-group input-group-sm col-md-4 "><label for="Cor">Cor</label>
                            <input name="Cor" value="<?php echo $row_frota->TXT_NOME_COR; ?>" readonly="readonly" class="form-control"  />   		      
                        </div>                        
                    </div>
                <?php }//fim select pegar dados do equipamento ?>
            </td>
        </tr>       
        <tr>        
            <td colspan="4"><h4>Dados e Solicitacoes</h4>              
                <div class="form-row">
                    <div class="form-group input-group-sm col-md-3 ">
                        <label for="ID">ID</label>
                        <input name="ID" value="<?php echo $rowOs->NUM_ID_OS; ?>" readonly="readonly" class="form-control"  />   		      
                    </div>
                    <div class="form-group input-group-sm col-md-3 ">
                        <label for="Tipo">Tipo</label>
                        <input name="Tipo" value="<?php echo $rowOs->TXT_TIPO_OS; ?>" readonly="readonly" class="form-control"  />   		      
                    </div>
                    <div class="form-group input-group-sm col-md-6 ">
                        <label for="Consultor">Consultor</label>
                            <?php   //selecionar o login do usuario que executou a ordem de servico
                                $usu = $rowOs->TBL_USUARIO_USU_NUM_ID_USU;
                                $sql_login = $con->prepare("SELECT TXT_NOME_USU FROM TBL_USUARIO_USU WHERE NUM_ID_USU = '$usu'");
                                $sql_login->execute();
                                $nomeTecnico = $sql_login->fetchColumn();
                            ?>
                            <input name="Consultor" value="<?php echo $nomeTecnico; ?>" readonly="readonly" class="form-control"  />   		      
                    </div>
                    <div class="form-group input-group-sm col-md-12 "><label for="DadosGerais">Dados Gerais</label>
                        <input name="DadosGerais" value="<?php echo $rowOs->TXT_DADOSGERAIS_OS; ?>" readonly="readonly" class="form-control"  />   		      
                    </div> 
                    <div class="form-group input-group-sm col-md-12 "><label for="Solicitacoes">Solicitacoes</label>
                        <input name="Solicitacoes" value="<?php echo $rowOs->TXT_SOLICITACOES_OS; ?>" readonly="readonly" class="form-control"  />   		      
                    </div> 

                    <div class="form-group col-md-4 input-group-sm"><label>Valor Total</label>
                        <input title="VALOR TOTAL DE SERVICOS E PECAS" value="R$<?php echo number_format($rowOs->VAL_TOTAL_OS,2) ?>" readonly="readonly" class="form-control" readonly /> </div> 

                        <div class="form-group col-md-4 input-group-sm"><label>Total Desconto</label>
                        <input title="VALOR TOTAL DE DESCONTOS" value="R$<?php echo number_format($rowOs->VAL_DESCONTO_OS,2) ?>" readonly="readonly" class="form-control" readonly /> </div> 

                        <div class="form-group col-md-4 input-group-sm"><label>Valor Final</label>
                        <input title="VALOR FINAL A SER PAGO" value="R$<?php echo number_format($rowOs->VAL_FINAL_OS,2) ?>" readonly="readonly" class="form-control" readonly /> </div> 
                    <?php	//CAPTURA DATA INICIO E ENCERRAMENTO DA ORDEM DE SERVICO
                    $data_inicio = $rowOs->DTH_ABERTURA_OS; $data_final =  $rowOs->DTH_ENCERRAMENTO_OS; $fimgarantia = $rowOs->DTA_FIMGARANTIA_OS; } ?>
    
            </td>
        </tr>
        <tr>
            <td colspan="2">
            <div class="table-responsive">      
                <table class=" table table-striped table-bordered table-sm">               
                        <thead class="thead-dark">      
                            <tr align="center">
                                    <th>Servico</td>
                                    <th>Valor</td>                   
                                    <th>Desconto</td>
                                    <th>Total</td>
                                    <th>Inicio</td>
                                    <th>Termino</td>                        
                                    <th>Mecanico</td>      
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            include "conexao.php";
                            $sqlItem = $con->prepare("SELECT * FROM TBL_ITEM_SERVICO_OS WHERE TBL_ORDEMSERVICO_OS_NUM_ID_OS = '$valor'");
                            $sqlItem->execute();
                                while ($rowItem = $sqlItem->fetch(PDO::FETCH_OBJ)){
                        ?>        
                            <tr align="center">          
                                <td align="left">
                                    <?php
                                        $id = $rowItem->TBL_SERVICO_SER_NUM_ID_SER;
                                        $sqlItemNome = $con->prepare("SELECT TXT_NOME_SER FROM TBL_SERVICO_SER WHERE NUM_ID_SER = '$id'");
                                        $sqlItemNome->execute();
                                        echo $nomeServico = $sqlItemNome->fetchColumn()
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
                                    <!--<td><?php echo $rowItem->TXT_STATUS_SERVICO_OS ?></td> RETIRADO EM 04/09/2023 POIS ESTA DESALINHANDO O RELATORIO-->
                            </tr>
                        </tbody>
                        <?php }  ?> 
              </table>
                                </div>            
            </td>
        </tr>
        <tr>
            <td colspan="2">
            <div class="table-responsive">     
              <table width="100%" class=" table table-striped table-bordered table-sm ">                  
                  <thead class="thead-dark">        
                  <tr align="center">
                        <th>Peca</td>
                        <th>Unitario</td>
                        <th>QTD</td>
                        <th>Valor</td>                   
                        <th>Desconto</td>
                        <th>Total</td>
                              
                  </tr>
                  </thead>
                  <?php
                      include "conexao.php";
                      $sqlItem = $con->prepare("SELECT * FROM TBL_ITEM_PECA_OS WHERE TBL_ORDEMSERVICO_OS_NUM_ID_OS = '$valor'");
                      $sqlItem->execute();
                          while ($rowItem = $sqlItem->fetch(PDO::FETCH_OBJ)){
                  ?>  
                  <tbody>      
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
                            <!--<td><?php echo $rowItem->TXT_STATUS_PECA_OS ?></td> RETIRADO EM 04/09/2023 POIS ESTA DESALINHANDO O RELATORIO-->
                  </tr>
                  <?php }  ?> 
                   </tbody>
              </table>            
                          </div>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <p class="lead sm">**Confirmo realização dos servicos acima listados tendo inicio no dia (<?php echo date("d/m/Y",strtotime($data_inicio)) ?>) e encerramento ao dia (<?php if($data_final<>""){echo date("d/m/Y",strtotime($data_final)) ;}?>).
            
                Informo que no dia (<?php if($fimgarantia<>""){echo date("d/m/Y",strtotime($fimgarantia)) ;}?>) ocorrerá termino da garantia de servico.
            
                Nossa garantia nao cobre mau uso, ou alterações indevidas no veiculo**</p>
                
                <img src="imagens/assinaturas.png" width="100%" height="80" />
            </td>
        </tr>
</table>
</body>
</html>

<?php
	}//fim status de os nao permitido//
?>
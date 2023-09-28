<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
<?php 
	include "conexao.php";
	
		$valor = $_POST['valor'];

		$sql = $con->prepare("SELECT * FROM TBL_ORDEMSERVICO_OS WHERE NUM_ID_OS = '$valor' AND TXT_STATUS_OS = 'ENCERRADA' AND TXT_TIPO_OS = 'PADRAO'");	
		
		if(! $sql->execute() ){
			die('Houve um erro no processamento da transação: ' . mysqli_error($con)); 
		}

		if($sql->rowCount() == 0){
			echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=fechamento-os.php'><script type=\"text/javascript\">alert(\"Ordem de servico nao encontrada ou em andamento!\");</script>";
		}else{
			while ($rowOs = $sql->fetch(PDO::FETCH_OBJ)){
							
?>

<table class="table">
  	<tr>
	    <td> <?php include "inicial.php"?> </td>
	</tr>
 	<tr>
		<td><legend class="p-4 table-primary">Resumo da Ordem de Serviço<legend></td>
	</tr>
</table>
<table class="table">
	<form name="fechamento" action="faturamento-os.php" method="post">	
		<tr>
			<td> 
				<div class="form-row"> 
					<input type="hidden" name="id_os" id="id_os" value="<?php echo $rowOs->NUM_ID_OS ?>" />					
					
					<div class="form-group col-md-3 col-sm-6"><label>Ordem de Servico</label>
						<input title="NUMERO DA ORDEM DE SERVICO" value="<?php echo $rowOs->NUM_ID_OS ?>" readonly="readonly" class="form-control" readonly /> </div> 

					<div class="form-group  col-md-3 col-sm-6"><label>Tipo</label>
						<input title="TIPO DA ORDEM DE SERVICO" value="<?php echo $rowOs->TXT_TIPO_OS ?>" readonly="readonly" class="form-control" readonly /></div> 
						
					<!--identificacao do cliente-->
					<?php
								include_once "conexao.php";
								$cli = $rowOs->TBL_CLIENTE_CLI_NUM_ID_CLI;
								$sql_nome = $con->prepare("SELECT * FROM TBL_CLIENTE_CLI WHERE NUM_ID_CLI = '$cli'");
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
						
								WHERE F.NUM_ID_FR = $rowOs->TBL_FROTA_FR_NUM_ID_FR");

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
							<input title="DADOS GERAIS DA FROTA DA ORDEM DE SERVICO" value="<?php echo $rowOs->TXT_DADOSGERAIS_OS ?>" readonly="readonly" class="form-control" readonly /></div> 

							<div class="form-group col-md-12 col-sm-6"><label>Solicitacoes</label>
							<textarea name="textarea" class="form-control"  disabled="disabled" id="textarea"><?php echo $rowOs->TXT_SOLICITACOES_OS ?></textarea></div>
							
							<div class="form-group col-md-4 col-sm-6"><label>Valor Total</label>
							<input title="VALOR TOTAL DE SERVICOS E PECAS" value="R$<?php echo number_format($rowOs->VAL_TOTAL_OS,2) ?>" readonly="readonly" class="form-control" readonly /> </div> 

							<div class="form-group col-md-4 col-sm-6"><label>Total Desconto</label>
							<input title="VALOR TOTAL DE DESCONTOS" value="R$<?php echo number_format($rowOs->VAL_DESCONTO_OS,2) ?>" readonly="readonly" class="form-control" readonly /> </div> 

							<div class="form-group col-md-4 col-sm-6"><label>Valor Final</label>
							<input title="VALOR FINAL A SER PAGO" value="R$<?php echo number_format($rowOs->VAL_FINAL_OS,2) ?>" readonly="readonly" class="form-control" readonly /> </div> 

							<div class="form-group col-md-2"><input type="submit"  class="btn-outline-success btn btn-block" name="button" id="button" value="Realizar Faturamento" onclick="return confirm('Confirma os dados informados?')"></div>					
			
		<?php
			}//fim row_ordem_servico	
		?>
			</td>
		</tr>
	</form>
</table>

</form>
</body>
</html>
<?php 												
}
?>


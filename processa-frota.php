<?php

include "verifica.php";

		$tipo						=$_POST["tipo"];
		$id_cliente					=$_POST["cliente"];
		$marca						=$_POST["marca"];		
		$modelo						=$_POST["modelo"];
		$placa						=strtoupper($_POST["placa"]);
		$chassi						=strtoupper($_POST["chassi"]);	
		$cor						=$_POST["cor"];	
		$ativo 						=$_POST["ativo"];
		$motorizacao				=$_POST["motorizacao"];
		$combustivel				=$_POST["combustivel"];
		$ano						=$_POST["ano"];

include "conexao.php";

$acao = $_GET['acao'];

if($acao == "cadastrar"){

	if($_POST['cliente']==""){
	
	echo "
		<META HTTP-EQUIV=REFRESH CONTENT='0; URL=cadastro-frota.php'><script type=\"text/javascript\">alert(\"Tente Novamente!\");</script>";
		
	}else{	
		
		if($placa==""){
			$res = $con->prepare("SELECT * FROM tbl_frota_fr WHERE txt_chassi_fr = ?");
			$res->bindParam(1,$chassi);			
		}else{
			$res = $con->prepare("SELECT * FROM tbl_frota_fr WHERE txt_chassi_fr = ? OR txt_placa_fr = ?");
			$res->bindParam(1,$chassi);
			$res->bindParam(2,$placa);
		}
		
		$res->execute();
		
		if($res->rowCount() > 0){
			echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL='><script type=\"text/javascript\">alert(\"Esse Chassi ou Placa ja foi cadastrado!\");</script>";
			echo "<script language='javascript'>history.back()</script>";
			
		}else{	
		
				$res = $con->prepare("INSERT INTO TBL_FROTA_FR (`TBL_TIPO_TIP_NUM_ID_TIP`, `TBL_MODELO_MOD_NUM_ID_MOD`, `TBL_COR_COR_NUM_ID_COR`, `TBL_MARCA_MAR_NUM_ID_MAR`, 
				
									`TBL_CLIENTE_CLI_NUM_ID_CLI`, `TBL_USUARIO_USU_NUM_ID_USU`, `NUM_ANO_FR`, `TXT_PLACA_FR`, `TXT_COMBUSTIVEL_FR`, `TXT_CHASSI_FR`, `TXT_MOTORIZACAO_FR`, 
									
									`DTH_REGISTRO_FR`, `DTH_ALTERACAO_FR`,`TXT_OS_ABERTA_FR`,`TXT_ATIVO_FR`) 
									
									VALUES (?,?,?,?,?,?,?,?,?,?,?,NOW(),NOW(),'NAO','SIM')"); 
				
									$res->bindParam(1,$tipo);
									$res->bindParam(2,$modelo);	
									$res->bindParam(3,$cor);
									$res->bindParam(4,$marca);
									$res->bindParam(5,$id_cliente);
									$res->bindParam(6,$id_usuario);					
									$res->bindParam(7,$ano);					
									$res->bindParam(8,$placa);
									$res->bindParam(9,$combustivel);
									$res->bindParam(10,$chassi);
									$res->bindParam(11,$motorizacao);					


				if (!$res->execute()) {
      				echo "Error: " . $sql . "<br>" . mysqli_error($con);
				}else{
		
					$ultimo = $con->prepare("SELECT MAX(NUM_ID_FR) FROM TBL_FROTA_FR");
						if(!$ultimo->execute()){
							echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-frota.php'><script type=\"text/javascript\">alert(\"Registro de frota efetuado com sucesso, Porém erro ao capturar codigo do mesmo!\");</script>";	
						}else{											
							$numeroFrota = $ultimo->fetchColumn();
							echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-frota.php'><script type=\"text/javascript\">alert(\"Registro efetuado com sucesso, codigo da frota: $numeroFrota !\");</script>";
						}
				}
		}
		
}

}else if($acao == "salvar"){
	
	$id = $_GET['id'];
	$res = $con->prepare("UPDATE `tbl_frota_fr` SET `TBL_TIPO_TIP_NUM_ID_TIP`=?,`TBL_MODELO_MOD_NUM_ID_MOD`=?,`TBL_COR_COR_NUM_ID_COR`=?,`TBL_MARCA_MAR_NUM_ID_MAR`=?,`NUM_ANO_FR`=?,`TXT_PLACA_FR`=?,
						
						`TXT_COMBUSTIVEL_FR`=?,`TXT_CHASSI_FR`=?,`TXT_MOTORIZACAO_FR`=?,`DTH_ALTERACAO_FR`=NOW(),`TXT_ATIVO_FR`=? WHERE NUM_ID_FR = ?");					

		$res->bindParam(1,$tipo);
		$res->bindParam(2,$modelo);
		$res->bindParam(3,$cor);
		$res->bindParam(4,$marca);
		$res->bindParam(5,$ano);
		$res->bindParam(6,$placa);
		$res->bindParam(7,$combustivel);
		$res->bindParam(8,$chassi);
		$res->bindParam(9,$motorizacao);
		$res->bindParam(10,$ativo);
		$res->bindParam(11,$id);

	if($res->execute()){
		echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-frota.php'><script type=\"text/javascript\">alert(\"Registro atualizado com sucesso!\");</script>";
	}else{
		echo "Houve um erro no processamento da transação: ' . mysql_error()";
	}
	
}else{
	
		echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-frota.php'><script type=\"text/javascript\">alert(\"Tente Novamente!\");</script>";	

}

?>

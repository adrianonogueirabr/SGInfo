<?php

include "verifica.php";
		$sistemaoperacional			=$_POST["sistemaoperacional"];
		$id_cliente					=$_POST["cliente"];
		$tipo						=$_POST["tipo"];
		$tipoarmazenamento			=$_POST["tipoarmazenamento"];
		$tipomemoria				=$_POST["tipomemoria"];
		$setor						=strtoupper($_POST["setor"]);
		$nomerede					=strtoupper($_POST["nomerede"]); 
		$descricao					=strtoupper($_POST["descricao"]); 
		$login						=$_POST["login"]; 
		$senha						=$_POST["senha"]; 
		$utilizadores				=strtoupper($_POST["utilizadores"]); 
		$hd							=$_POST["hd"]; 
		$processador				=strtoupper($_POST["processador"]); 
		$memoria					=$_POST["memoria"]; 
		$placamae  					=strtoupper($_POST["placamae"]); 
		$monitor					=strtoupper($_POST["monitor"]); 		
		$aplicativos				=strtoupper($_POST["aplicativos"]); 
		$nfe						=$_POST["nfe"]; 
		$marca						=strtoupper($_POST["marca"]); 
		$modelo						=strtoupper($_POST["modelo"]); 
		$ativo 						=$_POST["ativo"];
		$serial						=strtoupper($_POST["serial"]);
		$observacao					=strtoupper($_POST["observacao"]);
		$fimgarantia				=$_POST["fimgarantia"];

include "conexao.php";

$acao = $_GET['acao'];

if($acao == "cadastrar"){

	if($_POST['cliente']==""){
	
		echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=cadastro-equipamentos.php'><script type=\"text/javascript\">alert(\"Tente Novamente!\");</script>";
		
	}else{			
		
				$res = $con->prepare("INSERT INTO TBL_EQUIPAMENTO_EQUIP (`TBL_SISTEMAOPERACIONAL_SO_NUM_ID_SO`, `TBL_CLIENTE_CLI_NUM_ID_CLI`, `TBL_USUARIO_USU_NUM_ID_USU`, 
									`TXT_TIPO_EQUIP`, `TXT_SETOR_EQUIP`, `TXT_NOMEREDE_EQUIP`, `TXT_DESCRICAO_EQUIP`, `TXT_LOGIN_EQUIP`, `TXT_SENHA_EQUIP`, `TXT_UTILIZADORES_EQUIP`, 
									`NUM_HD_EQUIP`, `TXT_TIPO_ARMAZENAMENTO_EQUIP`,`TXT_PROCESSADOR_EQUIP`, `NUM_MEMORIA_EQUIP`,`TXT_TIPO_MEMORIA_EQUIP`, `TXT_PLACAMAE_EQUIP`, `TXT_MONITOR_EQUIP`, `TXT_APLICATIVOS_EQUIP`, `NUM_NFE_EQUIP`, 
									`DTH_REGISTRO_EQUIP`, `TXT_MARCA_EQUIP`, `TXT_MODELO_EQUIP`, `TXT_SERIAL_EQUIP`, `TXT_OBSERVACAO_EQUIP`,`DTA_GARANTIA_EQUIP`,`TXT_ATIVO_EQUIP`) 
									
									VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,now(),?,?,?,?,?,'SIM')"); 
				
				$res->bindParam(1,$sistemaoperacional);
				$res->bindParam(2,$id_cliente);
				$res->bindParam(3,$id_usuario);
				$res->bindParam(4,$tipo);
				$res->bindParam(5,$setor);
				$res->bindParam(6,$nomerede);
				$res->bindParam(7,$descricao);
				$res->bindParam(8,$login);
				$res->bindParam(9,$senha);
				$res->bindParam(10,$utilizadores);
				$res->bindParam(11,$hd);
				$res->bindParam(12,$tipoarmazenamento);
				$res->bindParam(13,$processador);
				$res->bindParam(14,$memoria);
				$res->bindParam(15,$tipomemoria);
				$res->bindParam(16,$placamae);
				$res->bindParam(17,$monitor);
				$res->bindParam(18,$aplicativos);
				$res->bindParam(19,$nfe);
				$res->bindParam(20,$marca);
				$res->bindParam(21,$modelo);
				$res->bindParam(22,$serial);				
				$res->bindParam(23,$observacao);
				$res->bindParam(24,$fimgarantia);

				if (!$res->execute()) {
      				echo "Error: " . $sql . "<br>" . mysqli_error($con);
				}else{
		
					$ultimo = $con->prepare("SELECT MAX(NUM_ID_EQUIP) FROM TBL_EQUIPAMENTO_EQUIP");
						if(!$ultimo->execute()){
							echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-equipamentos.php'><script type=\"text/javascript\">alert(\"Registro de equipamento efetuado com sucesso, Porém erro ao capturar codigo do mesmo!\");</script>";	
						}else{											
							$numeroequipamento = $ultimo->fetchColumn();
							echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-equipamentos.php'><script type=\"text/javascript\">alert(\"Registro efetuado com sucesso, codigo do equipamento: $numeroequipamento !\");</script>";
						}
				}
		
}

}else if($acao == "salvar"){
	
	$id = $_GET['id'];
	$res = $con->prepare("UPDATE TBL_EQUIPAMENTO_EQUIP SET TBL_SISTEMAOPERACIONAL_SO_NUM_ID_SO = ?, TBL_CLIENTE_CLI_NUM_ID_CLI = ?, TXT_TIPO_EQUIP = ?, TXT_SETOR_EQUIP = ?, 
	TXT_NOMEREDE_EQUIP = ?, TXT_DESCRICAO_EQUIP = ?,TXT_LOGIN_EQUIP = ?, TXT_SENHA_EQUIP = ?, TXT_UTILIZADORES_EQUIP = ?, NUM_HD_EQUIP = ?, TXT_TIPOARMAZENAMENTO_EQUIP = ?, 
	TXT_PROCESSADOR_EQUIP = ?, NUM_MEMORIA_EQUIP = ?, TXT_TIPOMEMORIA_EQUIP =?,TXT_PLACAMAE_EQUIP = ?, TXT_MONITOR_EQUIP = ?, TXT_APLICATIVOS_EQUIP = ?, NUM_NFE_EQUIP = ?, 
	TXT_MARCA_EQUIP = ?, TXT_MODELO_EQUIP = ?, 	TXT_SERIAL_EQUIP = ?, TXT_OBSERVACAO_EQUIP = ?,DTA_GARANTIA_EQUIP = ?,TXT_ATIVO_EQUIP = ?  WHERE NUM_ID_EQUIP = ?");

	$res->bindParam(1,$sistemaoperacional);
	$res->bindParam(2,$id_cliente);
	$res->bindParam(3,$tipo);
	$res->bindParam(4,$setor);
	$res->bindParam(5,$nomerede);
	$res->bindParam(6,$descricao);
	$res->bindParam(7,$login);
	$res->bindParam(8,$senha);
	$res->bindParam(9,$utilizadores);
	$res->bindParam(10,$hd);
	$res->bindParam(11,$tipoarmazenamento);
	$res->bindParam(12,$processador);
	$res->bindParam(13,$memoria);
	$res->bindParam(14,$tipomemoria);
	$res->bindParam(15,$placamae);
	$res->bindParam(16,$monitor);
	$res->bindParam(17,$aplicativos);
	$res->bindParam(18,$nfe);
	$res->bindParam(19,$marca);
	$res->bindParam(20,$modelo);
	$res->bindParam(21,$serial);	
	$res->bindParam(22,$observacao);
	$res->bindParam(23,$fimgarantia);
	$res->bindParam(24,$ativo);
	$res->bindParam(25,$id);

	if($res->execute()){
		echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-equipamentos.php'><script type=\"text/javascript\">alert(\"Registro atualizado com sucesso!\");</script>";
	}else{
		echo "Houve um erro no processamento da transação: ' . mysql_error()";
	}
	
}else{
	
		echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-equipamentos.php'><script type=\"text/javascript\">alert(\"Tente Novamente!\");</script>";	

}

?>

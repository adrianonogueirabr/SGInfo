<?php
include "verifica.php";

		$nome		=strtoupper($_POST["nome"]);
		$codigo		=strtoupper($_POST["codigo"]);
		$valor		=$_POST["valor"];

include "conexao.php";

$acao = $_GET['acao'];

if($acao == "cadastrar"){

	if($_POST['nome']==""){
	
		echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=cadastro-servicos.php'><script type=\"text/javascript\">alert(\"Erro no processamento das informacoes!\");</script>";
		
	}else{					
		$sqlInsert = $con->prepare("INSERT INTO `tbl_peca_pec`(`NUM_ID_PEC`, `TXT_NOME_PEC`, `TXT_CODIGO_PEC`, `VAL_ULTIMA_COMPRA_PEC`, `DTA_ULTIMA_COMPRA_PEC`, `VAL_CUSTO_MEDIO_PEC`, `VAL_VALOR_VENDA_PEC`, 
		
		`VAL_TOTAL_ACUMULADO_PEC`, `DTH_REGISTRO_PEC`, `TXT_ATIVO_PEC`) VALUES (NULL,?,?,0,NULL,0,?,0,NOW(),'SIM')");

		$sqlInsert->bindParam(1,$nome);
		$sqlInsert->bindParam(2,$codigo);
		$sqlInsert->bindParam(3,$valor);
		
		if(! $sqlInsert->execute() ){
			die('Houve um erro no processamento da transação: ' . mysqli_error());
		}else{			
			echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=cadastro-pecas.php'><script type=\"text/javascript\">alert(\"Registro realizado com sucesso!\");</script>";		
		}					
	}

}else if($acao == "salvar"){
	
	$id = $_POST['codigo'];
	$sql = $con->prepare("UPDATE TBL_SERVICO_SER SET TXT_NOME_SER = ?, TXT_DESCRICAO_SER = ?, NUM_DURACAO_SER = ?, VAL_FISICA_SER =?, VAL_JURIDICA_SER = ?, VAL_CONTRATO_SER = ?, TXT_ATIVO_SER = ? WHERE NUM_ID_SER = ?");
	
	$sql->bindParam(1,$nome);
	$sql->bindParam(2,$descricao);
	$sql->bindParam(3,$duracao);
	$sql->bindParam(4,$fisica);
	$sql->bindParam(5,$juridica);
	$sql->bindParam(6,$contrato);
	$sql->bindParam(7,$ativo);
	$sql->bindParam(8,$id);

	if(! $sql->execute() ){
		die('Houve um erro no processamento da transação: ' . mysqli_error());
	}
	
	echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-servicos.php'><script type=\"text/javascript\">alert(\"Registro atualizado com sucesso!\");</script>";	

}else{		
	echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-servicos.php'><script type=\"text/javascript\">alert(\"Erro no processamento das informacoes!\");</script>";	
}

?>

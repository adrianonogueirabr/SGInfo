<?php
include "verifica.php";

		$nome			=strtoupper($_POST["nome"]);
		$descricao		=strtoupper($_POST["descricao"]);
		$duracao		=$_POST["duracao"];
		$fisica			=$_POST["fisica"];
		$juridica		=$_POST["juridica"];
		$garantia		=$_POST["garantia"];	
		$interno		=$_POST["interno"];	
		$contrato		=$_POST["contrato"];
		$ativo			=$_POST["ativo"];	


include "conexao.php";

$acao = $_GET['acao'];

if($acao == "cadastrar"){

	if($_POST['nome']==""){
	
		echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=cadastro-servicos.php'><script type=\"text/javascript\">alert(\"Erro no processamento das informacoes!\");</script>";
		
	}else{	
				
		$sql = $con->prepare("INSERT INTO TBL_SERVICO_SER VALUES (NULL,'$nome','$descricao','$duracao','$fisica','$juridica','$garantia','$interno','$contrato','S')") or die(mysqli_error()); 
		
		if(! $sql->execute() )
		{
			die('Houve um erro no processamento da transação: ' . mysqli_error());
		}else{
			
			echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-servicos.php'><script type=\"text/javascript\">alert(\"Registro realizado com sucesso!\");</script>";		
		}
		
					
	}

}else if($acao == "salvar"){
	
	$id = $_POST['codigo'];
	$sql = $con->prepare("UPDATE TBL_SERVICO_SER SET TXT_NOME_SER = '$nome', TXT_DESCRICAO_SER = '$descricao', NUM_DURACAO_SER = '$duracao', VAL_FISICA_SER = '$fisica', VAL_JURIDICA_SER = '$juridica', VAL_GARANTIA_SER = '$juridica', VAL_INTERNO_SER = 0, VAL_CONTRATO_SER = '$contrato', TXT_ATIVO_SER = '$ativo' WHERE NUM_ID_SER = '$id'");

if(! $sql->execute() )
{
  die('Houve um erro no processamento da transação: ' . mysqli_error());
}

				echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-servicos.php'><script type=\"text/javascript\">alert(\"Registro atualizado com sucesso!\");</script>";	
	
}else{
	
		echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-servicos.php'><script type=\"text/javascript\">alert(\"Erro no processamento das informacoes!\");</script>";	

}

?>

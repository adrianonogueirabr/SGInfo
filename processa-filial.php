<?php
include "verifica.php";

		$pessoa		=$_POST["pessoa"];
		$cpfcnpj	=$_POST["cpfcnpj"];
		$razao		=strtoupper($_POST["razao"]);
		$fantasia	=strtoupper($_POST["fantasia"]);
		$nascimento	=$_POST['data_fundacao'];
		$telefone	=$_POST["telefone"];
		$ramal		=$_POST["ramal"];
		$fax		=$_POST["fax"];	
		$email		=strtolower($_POST["email"]);
		$site		=strtolower($_POST["site"]);
		$logradouro	=strtoupper($_POST["logradouro"]);
		$numero		=$_POST["numero"];
		$cep		=$_POST["cep"];
		$bairro		=strtoupper($_POST["bairro"]);
		$complemento=strtolower($_POST["complemento"]);
		$referencia	=strtolower($_POST["referencia"]);
		$cidade		=strtoupper($_POST["cidade"]);
		$estado		=$_POST["estado"];
		$im			=$_POST["im"];
		$ie			=$_POST["ie"];
		$rg			=$_POST["rg"];
		$multa		=$_POST["multa"];
		$juros		=$_POST["juros"];

include "conexao.php";

$acao = $_GET['acao'];

if($acao == "cadastrar"){

	if($_POST['cpfcnpj']==""){
	
		echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=cadastro-filial.php'><script type=\"text/javascript\">alert(\"Erro no processamento das informacoes!\");</script>";
		
	}else{		
	
		$sql = $con->prepare("SELECT * FROM TBL_EMPRESA_EMP WHERE TXT_CPFCNPJ_EMP = '$cpfcnpj'");
		if(!$sql->execute()){die ('Houve um erro na transacao' . mysqli_error($con));}

		if($sql->rowCount()>0){

				echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL='><script type=\"text/javascript\">alert(\"Esse CPF/CNPJ ja foi cadastrado!\");</script>";
				echo "<script language='javascript'>history.back()</script>";
			
		}else{	
		
				$sql = $con->prepare("INSERT INTO TBL_EMPRESA_EMP VALUES (NULL,'$pessoa','$cpfcnpj','$razao','$fantasia','$nascimento','$telefone','$ramal','$fax','$email','$site','$cep','$logradouro','$numero','$complemento','$bairro','$cidade','$estado',	'$im','$ie','$rg','$multa','$juros',now(),now(),'S')"); 
		
				if(! $sql->execute() )
				{
				  die('Houve um erro no processamento da transação: ' . mysqli_error($con));
				}
		
				$result = $con->prepare("SELECT MAX(NUM_ID_EMP) FROM TBL_EMPRESA_EMP");

				if(!$result->execute()){
						echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-filial.php'><script type=\"text/javascript\">alert(\"Registro de Filial efetuado com sucesso, Porém erro ao capturar do mesmo!\");</script>";	
				}else{				
						
						$numerocliente = $result->fetchColumn();
						echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-filial.php'><script type=\"text/javascript\">alert(\"Registro efetuado com sucesso, Codigo da Filial: $numerocliente !\");</script>";
				}
		}
}

}else if($acao == "salvar"){
	
	$id = $_POST['id'];
	$ativo = $_POST['ativo'];

	$sql = $con->prepare("UPDATE TBL_EMPRESA_EMP SET TXT_PESSOA_EMP = '$pessoa',TXT_CPFCNPJ_EMP = '$cpfcnpj', TXT_RAZAO_EMP = '$razao', TXT_FANTASIA_EMP = '$fantasia', DTA_FUNDACAO_EMP = '$nascimento',  TXT_TELEFONE_EMP = '$telefone', TXT_FAX_EMP = '$fax', TXT_EMAIL_EMP = '$email', TXT_SITE_EMP = '$site', NUM_CEP_EMP = '$cep', TXT_LOGRADOURO_EMP = '$logradouro', NUM_NUMERO_EMP = '$numero', TXT_COMPLEMENTO_EMP = '$complemento', TXT_BAIRRO_EMP = '$bairro', TXT_CIDADE_EMP = '$cidade', TXT_ESTADO_EMP = '$estado', TXT_IM_EMP = '$im', TXT_IE_EMP = '$ie', TXT_RG_EMP = '$rg',  DTA_ALTERACAO_EMP = now(),TXT_ATIVO_EMP = '$ativo' WHERE NUM_ID_EMP = '$id'");

if(! $sql->execute() )
{
  die('Houve um erro no processamento da transação: ' . mysqli_error($con));
}

		echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-filial.php'><script type=\"text/javascript\">alert(\"Registro atualizado com sucesso!\");</script>";	
	
}else{
	
		echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-filial.php'><script type=\"text/javascript\">alert(\"Erro no processamento das informacoes!\");</script>";	

}

?>

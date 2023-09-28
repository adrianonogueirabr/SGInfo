<?php
include "verifica.php";
	
$titulo	=$_POST['codigo'];		
$novadata	=$_POST['novadata'];

include "conexao.php";

if($titulo==""){
	echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-titulo-receber.php'><script type=\"text/javascript\">alert(\"Problemas ao processar sua informação!\");</script>";

}else{
		
				
			$sql = $con->prepare("UPDATE TBL_TITULORECEBER_TR SET DTA_VENCIMENTO_TR = '$novadata' WHERE NUM_ID_TR = '$titulo'"); 
			if(! $sql->execute() )
			{
			  die('Houve um erro no processamento da transação: ' . mysqli_error());
			}

			echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-titulo-receber.php'><script type=\"text/javascript\">alert(\"Nova data aplicada com sucesso: $novadata !\");</script>";
	
		}
		
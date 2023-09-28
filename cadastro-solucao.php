
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Registro de Solução</title>
</head>

<body>
<?php 
include "conexao.php";
$id_os = $_GET["os"]; 

$res = $con->prepare("SELECT * FROM TBL_ORDEMSERVICO_OS WHERE NUM_ID_OS = '$id_os'");	

if(! $res->execute() ){
  die('Houve um erro no processamento da transação: ' . mysqli_error());
}
		
?>

<form name="os" action="processa-os.php?acao=cadastrar_solucao" method="post" onSubmit="return validaForm()">
<INPUT TYPE="hidden" NAME="id_os" VALUE="<?php echo $id_os ?>" />
<table class="table">
    <tr>
	    <td> <?php include "inicial.php"?> </td>
	</tr>
   <tr><td class=" table-primary"><h4>Alterar/Registrar Solução</h4></td></tr>
</table>
<table width="90%" align="center">
<tr>
<td>
      
    <?php 		
	   while ($row = $res->fetch(PDO::FETCH_OBJ)){	 
	  ?>
        <td>
        <div class="form-row">
        <div class="form-group col-md-12 col-sm-12">
        <textarea name="solucao" class="form-control" id="solucao" rows="3" title="INFORME A SOLUCAO DO DEFEITO"><?php echo $row->TXT_RESOLUCAO_OS ?></textarea> 
        </div>

        
    <div class="form-group col-md-2 col-sm-12">
    <input class=" btn btn-primary btn-block" type="submit" name="registrar"  value="Registrar Solucao" title="Clique para Registrar Solucao" /> 
    <a href="listagem-apontamento.php?id=<?php echo $id_os?>" class="btn btn-danger btn-block" title="Clique para cancelar ação">Cancelar</a>   
    </div>
    </div>

      </tr>
    </td>
    </table>
 
</form>
<?php } ?>
</body>
</html>
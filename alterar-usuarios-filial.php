<?php 

include "conexao.php";

$id = $_GET['id'];

$sql = $con->prepare("SELECT NUM_ID_USU FROM TBL_USUARIO_USU WHERE NUM_ID_USU = '$id'");
if(!$sql->execute()){die ('Houve um erro na transacao: ' . mysqli_error());}

$idUsuario = $sql->fetchColumn();

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Alterar Filial do Usuario</title>
</head>

<body>
<form name="usuario" action="processa-usuarios.php?acao=salvarnovafilial" method="post" onSubmit="return validaForm()">
<table class="table">
    <tr>
	    <td> <?php include "inicial.php"?> </td>
	</tr>
     <tr><td class=" table-primary"><h4>Alterar Loja</h4></td></tr>
</table>
<table width="80%" align="center">
<tr>
<td>  

<input name="codigo" type="hidden" value="<?php echo $idUsuario ?>" />

  <div class="form-group col-sm-6 col-md-5">
      <p class="font-weight-bold">SELECIONE A LOJA
          <select name="empresa" class="form-control">
          <?php
          include "conexao.php"; 
          $res1=$con->prepare("SELECT NUM_ID_EMP, TXT_FANTASIA_EMP FROM TBL_EMPRESA_EMP WHERE TXT_ATIVO_EMP = 'S'");
          $res1->execute();

          while($row1 = $res1->fetch(PDO::FETCH_OBJ)){?>
          <option value="<?php echo $row1->NUM_ID_EMP ?>">
            <?php echo $row1->TXT_FANTASIA_EMP?>
            </option>
          <?php } ?>
          </select>
          </p>
  </div>
   
  <div class="form-group col-md-2 col-sm-12">
        <input type="submit" name="registrar"  value="Salvar Dados" class="btn btn-success btn-block" />        
	</div>


</td>
</tr>

</table>

</form>
</body>
</html>
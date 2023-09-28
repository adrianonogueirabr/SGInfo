<?php
include "conexao.php";

$id = $_GET['id'];

$sqlUsuario = $con->prepare("SELECT * FROM TBL_USUARIO_USU WHERE NUM_ID_USU = '$id'");
if(!$sqlUsuario->execute()){ die ('Houve um erro na transacao: ' . mysqli_error());}

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Alterar Usuario</title>
</head>

<body>
<form name="usuario" action="processa-usuarios.php?acao=salvar" method="post" onSubmit="return validaForm()">
<table class="table">
    <tr>
	    <td> <?php include "inicial.php"?> </td>
	</tr>
     <tr><td class=" table-primary"><h4>Alterar Usuario</h4></td></tr>
</table>
<table width="80%" align="center">
<tr>
<td>  
<?php
		while ($row = $sqlUsuario->fetch(PDO::FETCH_OBJ)){			
	?> 

<input name="codigo" type="hidden" value="<?php echo $row->NUM_ID_USU ?>" />

<div class="form-row">

    <div class="form-group col-md-5 col-sm-6">
        <p class="font-weight-bold">NOME
        <input name="nome" type="text" id="nome" title="INFORME O NOME DO USUARIO" value="<?php echo $row->TXT_NOME_USU; ?>" class="form-control"  /></p>
    </div>

    <div class="form-group col-md-3 col-sm-6">
        <p class="font-weight-bold">TELEFONE
        <input name="telefone" type="text" id="telefone" title="INFORME O TELEFONE DO USUARIO" value="<?php echo $row->TXT_TELEFONE_USU; ?>" class="form-control"  /></p>
    </div>

    <div class="form-group col-md-4 col-sm-6">
        <p class="font-weight-bold">EMAIL
        <input name="email" type="email" id="email" title="INFORME O EMAIL DO USUARIO" value="<?php echo $row->TXT_EMAIL_USU; ?>" class="form-control"  /></p>
    </div>

    <div class="form-group col-md-4 col-sm-6">
        <p class="font-weight-bold">LOGIN
        <input name="login" type="text" id="login" title="LOGIN DO USUARIO NAO ALTERA" value="<?php echo $row->TXT_LOGIN_USU;  ?>" readonly="readonly" class="form-control"  /></p>
    </div>

    <div class="form-group col-md-4 col-sm-6">
        <p class="font-weight-bold">SENHA
        <input name="senha" type="password" id="senha" title="INFORME A SENHA DO USUARIO" value="<?php echo $row->TXT_SENHA_USU;  ?>"  class="form-control"  /></p>
    </div>

    <div class="form-group col-md-4 col-sm-6">
      <p class="font-weight-bold">ATIVO: 
       <select name="ativo" id="ativo" title="INFORME SE USUARIO ESTA ATIVO OU NAO" class="form-control">
          <option value="S" selected="true">SIM</option>
          <option value="N">NAO</option>
        </select> 
        </p> 
    </div>  

    <div class="form-group col-md-2 col-sm-12">
        <input type="submit" name="registrar"  value="Salvar Dados" class="btn btn-success btn-block" />        
	  </div>
  </div>
  </td>
  </tr>

</table>
    <?php
		}//FIM DO RES
	?>
</form>
</body>
</html>
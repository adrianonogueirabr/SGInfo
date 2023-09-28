<?php 

include "conexao.php";

$id = $_GET['id'];

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/bootstrap.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Alterar Vencimento de Titulo</title>
</head>

<body>
<form name="titulo" action="processa-titulo-receber.php" method="post">
<table class="table">
    <tr>
	    <td> <?php include "inicial.php"?> </td>
	</tr>
     <tr><td class=" table-primary"><h4>Nova data de vencimento Titulo: <?php echo $id?></h4></td></tr>
</table>

<table width="80%">
<tr>
<td>     
     
        <div class="form-group col-md-4">    
           <p class="font-weight-bold">SELECIONE NOVA DATA</P>
        </DIV>
        <div class="form-group col-md-4">  
           <input name="novadata" class="form-control" type="date" required="true" id="novadata" />	</p>
           <input name="codigo" id="codigo" type="hidden" value="<?php echo $id ?>" />
        </div>

        <div class="form-group col-md-2 col-sm-12">
            <input type="submit" name="registrar"  value="Salvar Dados" class="btn btn-success btn-block" />        
	      </div>

    </td>
</tr>
</TABLE>
</form>
</body>
</html>
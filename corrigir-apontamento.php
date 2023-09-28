<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Corrigir Dados de Apontamento</title>
</head>

<body>

<form name="listagem" action="corrigir-apontamento-dados.php" method="post">
<table class="table">
    <tr>
	    <td> <?php include "inicial.php"?> </td>
	</tr>
 	<tr><td><h4 class="p-4 table-secondary"> CORRIGIR APONTAMENTO</h4></td></tr>
	<tr>
	<td>
    <div class="form-row">   
    <div class="form-group col-md-4 ">
		<input class="form-control"  type="text"   name="valor" id="valor" required="required" placeholder="INFORME O NUMERO DA ORDEM DE SERVICO"  />
  	</div>
     
    <div class="form-group col-md-2 col-sm-12">	
   		 <button type="submit" class="btn btn-primary btn-block">Buscar Dados</button>
    </div>

</form>
</td>
</tr>
</table>
</body>
</html>
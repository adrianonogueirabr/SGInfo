
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/bootstrap.css" rel="stylesheet" />


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Consulta de Servicos</title>
</head>

<table class="table">
    <tr>
	    <td> <?php include "inicial.php"?> </td>
	</tr>
 	<tr><td><h4 class="p-4 table-secondary"> CONSULTA DE SERVIÇOS</h4></td></tr>
	<tr>
	<td>

  <form name="listagem" action="listagem-servicos.php" method="post">

  <div class="form-check">
		<input class="form-check-input" type="radio" name="criterio" id="criterio" value="C" checked>
		<label class="form-check-label" for="criterio">PELO ID DO SERVICO</label>
	</div>

  <div class="form-check">
		<input class="form-check-input" type="radio" name="criterio" id="criterio" value="R" checked>
		<label class="form-check-label" for="criterio">PELO NOME DO SERVICO</label>
	</div>

  <div class="form-row"> 
	<div class="form-group col-md-4 ">
		<input class="form-control"  type="text"   name="valor" id="valor" required="required" placeholder="Informe Parametro"  />
	</div>

	<div class="form-group col-md-2 col-sm-12">	
	<button type="submit" class="btn btn-primary btn-block">Buscar Dados</button>
	</div>


</td>
  </tr>
</table>
</form>
</body>
</html>
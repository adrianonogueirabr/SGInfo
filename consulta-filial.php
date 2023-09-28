<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Consulta de Loja</title>
</head>

<body>
<form name="listagem" action="listagem-filial.php" method="post" >
<table class="table">
<tr>
	    <td> <?php include "inicial.php"?> </td>
	</tr>
 	<tr><td><h4 class="p-4 table-secondary"> CONSULTA LOJA</h4></td></tr>
	<tr>
	<td>

  <div class="form-check">
		<input class="form-check-input" type="radio" name="criterio" id="criterio" value="R" checked>
		<label class="form-check-label" for="criterio">PESQUISA P/ RAZAO</label>
	</div>
	<div class="form-check">
		<input class="form-check-input" type="radio" name="criterio" id="criterio" value="C">
		<label class="form-check-label" for="criterio">PESQUISA P/ CPF OU CNPJ</label>
	</div>
	<div class="form-check">
		<input class="form-check-input" type="radio" name="criterio" id="criterio" value="I">
		<label class="form-check-label" for="criterio">PESQUISA P/ ID</label>
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
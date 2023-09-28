
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
 <title>SGOFIC - Sistema de Gestão de Oficina 🚚🚕</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <meta name="author" content="Adriano Nogueira - Desenvolvedor">
   <meta content= "SGOFIC - SISTEMA DE GESTÃO DE OFICINAS" name="description">
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 </head>

<body>
<form name="listagem" action="listagem-frota.php" method="post">

	<table  width="100%" class="table responsive">
		<tr>
			<td> <?php include "inicial.php"?> </td>
		</tr>
		<tr>
			<td><legend class="p-4 table-primary">Pesquisar Frota</legend></td>
		</tr>
		<tr>
			<td>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="criterio" id="criterio" value="P" checked>
					<label class="form-check-label" for="criterio">Consulta por Placa</label>
				</div>

				<div class="form-check">
					<input class="form-check-input" type="radio" name="criterio" id="criterio" value="C">
					<label class="form-check-label" for="criterio">Consulta por Chassi</label>
				</div>

				<div class="form-row"> 
				<div class="form-group col-md-4 ">
					<input class="form-control"  type="text"   name="valor" id="valor" required="required" placeholder="Informe Parametro"  />
				</div>

				<div class="form-group col-md-2 col-sm-12">		
					<button type="submit" class="btn btn-outline-primary btn-block">Buscar Dados</button>
				</div>
			</td>
		</tr>
	</table>
</form>
</body>
</html>
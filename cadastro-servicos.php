<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Registro de Servicos</title>
</head>

<body>
<form name="servico" action="processa-servicos.php?acao=cadastrar" method="post">
<table class="table">
    <tr>
	    <td> <?php include "inicial.php"?> </td>
	</tr>
 	<tr><td class=" table-primary"><h4>Cadastro de Serviços</h4></td></tr>
</table>
<table width="80%" align="center">
<tr>
<td>

<div class="form-row">
  <div class="form-group  col-md-6 col-sm-6">
        <p class="font-weight-bold">NOME DO SERVICO*<input class="form-control input-lg" name="nome" type="text"  required="required" maxlength="50"  title="INFORME O NOME DO SERVICO" /></p>
	</div>

  <div class="form-group  col-md-6 col-sm-6">
        <p class="font-weight-bold">DESCRICAO DO SERVICO*<input class="form-control input-lg" name="descricao" type="text" required="required" maxlength="50"  title="INFORME A DESCRICAO DO SERVICO" /></p>
	</div>

  <div class="form-group  col-md-6 col-sm-6">
        <p class="font-weight-bold">DURACAO DO SERVICO*<input class="form-control input-lg" name="duracao" type="number" required="required"  title="INFORME A DURACAO DO SERVICO EM HORAS" /></p>
	</div>

  <div class="form-group  col-md-6 col-sm-6">
        <p class="font-weight-bold">VALOR PESSOA FISICA*<input class="form-control input-lg" name="fisica" type="DOUBLE" required="required"  title="INFORME O VALOR PARA PESSOA FISICA" /></p>
	</div>

  <div class="form-group  col-md-6 col-sm-6">
        <p class="font-weight-bold">VALOR PESSOA JURIDICA*<input class="form-control input-lg" name="juridica" type="DOUBLE" required="required"  title="INFORME O VALOR PARA PESSOA JURIDICA" /></p>
	</div>

  <div class="form-group  col-md-6 col-sm-6">
        <p class="font-weight-bold">VALOR GARANTIA*<input class="form-control input-lg" name="garantia" type="DOUBLE" required="required"  title="INFORME O VALOR PARA GARANTIA" /></p>
	</div>

  <div class="form-group  col-md-6 col-sm-6">
        <p class="font-weight-bold">VALOR INTERNO*<input class="form-control input-lg" name="interno" type="DOUBLE" required="required"  title="INFORME O VALOR PARA INTERNO" /></p>
	</div>

  <div class="form-group  col-md-6 col-sm-6">
        <p class="font-weight-bold">VALOR CONTRATO*<input class="form-control input-lg" name="contrato" type="DOUBLE" required="required"  title="INFORME O VALOR PARA CONTRATOS" /></p>
	</div>

  <div class="form-group col-md-2 col-sm-12">
        <input type="submit" class="btn btn-success btn-block"  name="registrar"  value="Registrar Dados" />
  </div>
</div>

  </td>
  </tr>
</table>
</form>
</body>
</html>
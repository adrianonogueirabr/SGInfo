<?php include "verifica.php" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/bootstrap.css" rel="stylesheet" />


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Consulta de Titulo a Receber</title>
</head>

<body>
<form name="listagem" action="listagem-titulo-receber.php" method="post">
<table width="100%" border="0" align="left" cellpadding="3" cellspacing="0">
  <tr>
     <th height="30" class="bg-primary" scope="col"><h4>Modulo de Titulo a Receber</h4></th>
  </tr>
  <tr>
    <td >  
      <div id="nomeCriterio" class="radio">
        <label><input type="radio" name="criterio" value="D" id="criterio" title="LISTAR TITULOS POR DATA" checked="checked" />DATA VENCIMENTO</label>
        <label><input type="radio" name="criterio" value="S" id="criterio" title="LISTAR TITULO PELO STATUS" />STATUS TITULO</label>
        <label><input type="radio" name="criterio" value="I" id="criterio" title="LISTAR TITULO PELO ID DE CLIENTE" />COD IDENTIFICADOR CLIENTE </label>
          
        if()
              <input name="valor" type="text" id="valor" class="form-group input-lg"/>

          <input type="submit" name="buscar"  value="Buscar" class="btn-success btn-lg"/>
        </div>
      </td>
    </tr>

  <tr>
    <td height="30" colspan="6">
    <div id="nomeCriterio">
        <p>STATUS DE TITULO </p>
        <p>AB - TITULO EM ABERTO | PG - TITULO PAGO |CA - TITULO CANCELADO</p>        
      </div>
    </td>
  </tr>
</table>
</form>
</body>
</html>
<?php include "verifica.php" ?>

<?php 
// Leandro Alexandre 
// Colaboração para o Open Source para comunidade Linux do Brasil

// leitura das datas automaticamente
$dia = date('d');
$mes = date('m');
$ano = date('Y');
$semana = date('w');
$cidade = "Manaus";

// configuração mes 

switch ($mes){

case 1: $mes = "Janeiro"; break;
case 2: $mes = "Fevereiro"; break;
case 3: $mes = "Março"; break;
case 4: $mes = "Abril"; break;
case 5: $mes = "Maio"; break;
case 6: $mes = "Junho"; break;
case 7: $mes = "Julho"; break;
case 8: $mes = "Agosto"; break;
case 9: $mes = "Setembro"; break;
case 10: $mes = "Outubro"; break;
case 11: $mes = "Novembro"; break;
case 12: $mes = "Dezembro"; break;

}


// configuração semana 

switch ($semana) {

case 0: $semana = "Domingo"; break;
case 1: $semana = "Segunda Feira"; break;
case 2: $semana = "Terça Feira"; break;
case 3: $semana = "Quarta Feira"; break;
case 4: $semana = "Quinta Feira"; break;
case 5: $semana = "Sexta Feira"; break;
case 6: $semana = "Sábado"; break;

}
//Agora basta imprimir na tela...
//echo ("$cidade, $semana, $dia de $mes de $ano");

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.css" rel="stylesheet" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="author" content="Adriano Nogueira - Desenvolvedor">
<meta content= "SGADM - SISTEMA DE GESTÃO ADMINFOR SOLUCOES EM TI" name="description">
<title>SGAD - SISTEMA DE GESTÃO ADMINFOR SOLUCOES EM TI</title>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
<a class="navbar-brand" href="#">
    <img src="imagens/logo techfy.png" width="30" height="30" class="d-inline-block align-top" alt="">
    Adm Informática
  </a>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item">
      <a class="nav-link"  href="consulta-clientes.php">Clientes</a>
      </li>
      
      <li class="nav-item">
      <a class="nav-link" href="consulta-equipamentos.php">Equipamentos</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="consulta-os.php">Ordem de Servicos</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Apontamentos
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">Correção de Apontamento</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Realizar Apontamento</a>
        </div>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="fechamento-os.php">Faturamento de OS</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="logoff.php"><?php echo $login_usuario ?> | <?php echo ("$semana $dia de $mes de $ano");?></a>
      </li>
    </ul>
  </div>
</nav>




</body>
</html>
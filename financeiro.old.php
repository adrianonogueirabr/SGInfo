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
<link href="css/bootstrap.css" rel="stylesheet" />
<script type="text/javascript" src="javascript/cadastro_cliente.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="author" content="Adriano Nogueira - Desenvolvedor">
<meta content= "SGADM - SISTEMA DE GESTÃO ADMINFOR SOLUCOES EM TI" name="description">
<title>SGADM - SISTEMA DE GESTÃO ADMINFOR SOLUCOES EM TI</title>
</head>

<body>
<table width="100%" border="0">
  <tr>
     <td height="30" colspan="8" align="rigth" class="bg-primary">
    <h4>Usuario: <?php echo $login_usuario ?><a href="logout.php">(Sair)</a></h4>
    </td>
  </tr>
  <tr>
    <td><a href="consulta-clientes.php" target="new"><img src="imagens/novo.png" width="70" height="70" title="Módulo de Clientes" /></a></td>
    <td><a href="recebimento.php" target="new"><img src="imagens/caixa.jpg" width="70" height="70" title="Módulo do Caixa" /></a></td>
    <td><a href="consulta-titulo-receber.php" target="new"><img src="imagens/contas_receber.png" width="70" height="70" title="Módulo de Contas a Receber" /></a></td>
    <td><a href="consulta-recibo.php" target="new"><img src="imagens/recibo.jpg" width="70" height="70" title="Módulo de Recibos" /></a></td>
    <td><a href="listagem-cm.php" target="new"><img src="imagens/contrato.png" width="70" height="70" title="Módulo de Contrato" /></a></td>
    <td><a href="consulta-relatorio.php" target="new"><img src="imagens/relatorios.png" width="70" height="70" title="Módulo de Relatorio" /></a></td>
    <td><a href="logout.php"><img src="imagens/sair.png" alt="" width="70" height="70" title="Sair do Sistema" /></a></td>
	<td><img src="imagens/logo techfy.png" alt="" width="145" height="100" /></td>  </tr>
  <tr>
    <td colspan="8" align="right"><h4><?php echo ("$cidade, $semana $dia de $mes de $ano");?></h4></td>
  </tr>
</table>
</body>
</html>
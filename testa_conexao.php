<?
$banco = "db_sgtechfy";
$usuario = "db_admin";
$senha = "M@nv3l@12";
$hostname = "db-sgtechfy.mysql.uhserver.com";
$conn = mysql_connect($hostname,$usuario,$senha); mysql_select_db($banco) or die( "Não foi possível conectar ao banco MySQL");
if (!$conn) {echo "Não foi possível conectar ao banco MySQL.
"; exit;}
else {echo "Parabéns!! A conexão ao banco de dados ocorreu normalmente!.
";}
mysql_close(); 
?>


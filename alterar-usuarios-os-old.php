<?php include "verifica.php"; 

include "conexao.php";

$id = $_GET['id'];

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/formularios.css" rel="stylesheet" />
<script type="text/javascript" src="javascript/cadastro_usuario.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Alterar Filial do Usuario</title>
</head>

<body>
<form name="usuario" action="processa-os.php?acao=atribuirtecnico" method="post" onSubmit="return validaForm()">
  <table width="700" border="1" align="left" cellpadding="3" cellspacing="0">
    <tr>
	<td height="25" bgcolor="#990000">
    	<div id="imagemTitulo">
    		<a href="consulta-usuarios.php">
            <img src="imagens/voltar.png" width="30" height="30" alt="voltar" /></a>
   	  	</div>
        <div id="tituloFormulario">Atribuir Tecnico a Ordem de Serviço</div>
    </td>
  </tr>
  <tr>
    <td height="59">
    
    <table width="679" border="0" align="center">
  <tr>
    <td height="20" valign="bottom"><div id="nomeCampoRegistro">SELECIONE O TECNICO</div></td>
    <td width="367" valign="bottom">&nbsp;</td>
  </tr>
  

  <input name="id_os" type="hidden" value="<?php echo $id ?>" />
  <tr>
    	<td><select name="tecnico"> 
          <?php
				include "conexao.php"; 
				$sql="SELECT NUM_ID_USU, TXT_NOME_USU FROM TBL_USUARIO_USU WHERE TXT_ATIVO_USU = 'S' AND TBL_PERFIL_PER_NUM_ID_PER = 5";
				$sqlResult = mysql_query($sql) or die(mysql_error());
					while($sqlResultFim = mysql_fetch_assoc($sqlResult)){?>
          <option value="<?=$sqlResultFim["NUM_ID_USU"]?>"> <?=$sqlResultFim["TXT_NOME_USU"]?></option>
          <?php } ?>
        </select></td>
    	<td>&nbsp;</td>
  </tr>  
    </table>
    
    </td>
  </tr>
  <tr>
     <td height="25" align="center" bgcolor="#990000">
        <input type="submit" name="registrar"  value="Salvar Dados" /></td>
  </tr>

</table>
</form>
</body>
</html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 
 <title>SGINFO - Sistema de Gestao de Informatica 🚚🚕</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <meta name="author" content="Adriano Nogueira - Desenvolvedor">
   <meta content= "SGinfo - Sistema de Gestao de Informatica" name="description">
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta charset="utf-8">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

 </head>

<body>
<form id="form1" name="form1" method="post" action="processa-login.php">
  <table width="350" border="0" align="center">
    <tr>
      <td  align="center"><img src="imagens/logo techfy.png" alt="" width="350" height="200" /></td>
    </tr>
    <tr>
      <td height="50"><legend><h6>Seja Bem Vindo</legend></h6</td>
    </tr>
    <tr>
      <td height="50">
      <form class="form-inline">
   		<div class="input-group">
		<div class="input-group-prepend">
        <span class="input-group-text" id="basic-addon1">@</span>
    </div>
      <input name="login" type="text" id="login"  maxlength="30" class="form-control" placeholder="Login" />
	  </div>    

   </td>
    </tr>
    <tr>                    
      <td height="50">
      <form class="form-inline">
   		<div class="input-group">
		<div class="input-group-prepend">
        <span class="input-group-text" id="basic-addon1">**</span>
    </div><input name="senha" type="password" class="form-control" id="senha"  maxlength="30" placeholder="Senha" />
    </div>  
      </td>
    </tr>
    <tr>
      <td height="50"><button type="button" class="btn btn-link">Esqueci minha senha</button></td>
    </tr>
    <tr>
      <td align="right" height="50"><input type="submit" name="button2" id="button2" class="btn btn-primary btn-block" value="Entrar" class="botao" /></td>
    </tr>
  </table>
</form>
</body>
</html>
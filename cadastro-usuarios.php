<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="javascript/cadastro_usuario.js"></script>
<title>Registro de Usuario</title>
</head>

<body>
<form name="usuario" action="processa-usuarios.php?acao=cadastrar" method="post" >

<table class="table">
    <tr>
	    <td> <?php include "inicial.php"?> </td>
	</tr>
 	<tr><td class=" table-primary"><h4>Cadastro de Usuario</h4></td></tr>
</table>
<table width="80%" align="center">
<tr>
<td>

<div class="form-row">
  <div class="form-group  col-md-5 col-sm-6">
        <p class="font-weight-bold">NOME<input class="form-control input-lg" name="nome" type="text" id="nome" required="required"   title="INFORME O NOME DO USUARIO" /></p>
	</div>

  <div class="form-group  col-md-3 col-sm-6">
        <p class="font-weight-bold">TELEFONE<input class="form-control input-lg" name="telefone" type="text" id="telefone" required="required"   title="INFORME O TELEFONE DO USUARIO" /></p>
	</div>

  <div class="form-group  col-md-4 col-sm-6">
        <p class="font-weight-bold">EMAIL<input class="form-control input-lg" name="email" type="email" id="email" required="required"   title="INFORME O EMAIL DO USUARIO" /></p>
	</div>

  <input type="hidden" name="ativo"id="ativo" value="S" />

  <div class="form-group  col-md-3 col-sm-6">
        <p class="font-weight-bold">LOGIN<input class="form-control input-lg" name="login" type="text" id="login" required="required"   title="INFORME O LOGIN DO USUARIO" /></p>
	</div>

  <div class="form-group  col-md-3 col-sm-6">
        <p class="font-weight-bold">SENHA<input class="form-control input-lg" name="senha" type="text" id="senha" required="required"   title="INFORME A SENHA DO USUARIO" /></p>
	</div>

  <div class="form-group col-sm-6 col-md-6">
      <p class="font-weight-bold">PERFIL DE USUARIO
          <select name="perfil" class="form-control">
          <?php
          include "conexao.php"; 
          $res1=$con->prepare("SELECT NUM_ID_PER, TXT_NOME_PER FROM TBL_PERFIL_PER WHERE TXT_ATIVO_PER = 'S'");
          $res1->execute();

          while($row1 = $res1->fetch(PDO::FETCH_OBJ)){?>
          <option value="<?php echo $row1->NUM_ID_PER ?>">
            <?php echo $row1->TXT_NOME_PER?>
            </option>
          <?php } ?>
          </select>
          </p>
  </div>


  <div class="form-group col-sm-6 col-md-12">
      <p class="font-weight-bold">LOJA
          <select name="empresa" class="form-control">
          <?php
          include "conexao.php"; 
          $res1=$con->prepare("SELECT NUM_ID_EMP, TXT_FANTASIA_EMP FROM TBL_EMPRESA_EMP WHERE TXT_ATIVO_EMP = 'S'");
          $res1->execute();

          while($row1 = $res1->fetch(PDO::FETCH_OBJ)){?>
          <option value="<?php echo $row1->NUM_ID_EMP ?>">
            <?php echo $row1->TXT_FANTASIA_EMP?>
            </option>
          <?php } ?>
          </select>
          </p>
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
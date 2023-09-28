<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Listagem de Usuario</title>
</head>

<body>
<?php 
	include "conexao.php";
	
	$valor = $_POST['valor'];
	$criterio = $_POST['criterio'];
	
	if($criterio == "C"){
		$sqlusuario = $con->prepare("

        SELECT a.NUM_ID_USU, b.TXT_NOME_PER, c.TXT_FANTASIA_EMP,a.TXT_NOME_USU, a.TXT_TELEFONE_USU, a.TXT_EMAIL_USU, a.TXT_LOGIN_USU, a.TXT_ATIVO_USU FROM TBL_USUARIO_USU a

        LEFT JOIN TBL_PERFIL_PER b ON b.NUM_ID_PER = a.TBL_PERFIL_PER_NUM_ID_PER 

        LEFT JOIN TBL_EMPRESA_EMP c ON c.NUM_ID_EMP = a.TBL_EMPRESA_EMP_NUM_ID_EMP

        WHERE NUM_ID_USU = '$valor';

      ");

		if(!$sqlusuario->execute()){die('Houve um erro na transacao' . mysqli_error());}
		if($sqlusuario->rowCount()<=0){
		  echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-usuarios.php'><script type=\"text/javascript\">alert(\"Usuario nao encontrado com ID: $valor informado!\");</script>";		
	}
	}else if($criterio == "R"){
		$sqlusuario = $con->prepare("

         SELECT a.NUM_ID_USU, b.TXT_NOME_PER, c.TXT_FANTASIA_EMP,a.TXT_NOME_USU, a.TXT_TELEFONE_USU, a.TXT_EMAIL_USU, a.TXT_LOGIN_USU, a.TXT_ATIVO_USU FROM TBL_USUARIO_USU a

        LEFT JOIN TBL_PERFIL_PER b ON b.NUM_ID_PER = a.TBL_PERFIL_PER_NUM_ID_PER 

        LEFT JOIN TBL_EMPRESA_EMP c ON c.NUM_ID_EMP = a.TBL_EMPRESA_EMP_NUM_ID_EMP

        WHERE TXT_NOME_USU LIKE '$valor'");

    if(!$sqlusuario->execute()){die('Houve um erro na transacao' . mysqli_error());}
    if($sqlusuario->rowCount()<=0){

		  echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-usuarios.php'><script type=\"text/javascript\">alert(\"Usuario nao encontrado com Nome: $valor informado!\");</script>";		
	}
	}else if($criterio = ""){	
		echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-usuarios.php'><script type=\"text/javascript\">alert(\"Erro no processamento das informacoes!\");</script>";  		
	}	
?>

<form name="listagem" method="post">
<table width="100%">
  <tr>
      <td>
      <?php include "inicial.php" ?><legend><h4>Listagem de Usuarios<h4></legend>
      </td>
    </tr>
    <tr>
    <td>
    <table width="100%" class="table-hover table table-condensed table-bordered table-striped table-sm">
        <tr  class="table-primary responsive">	
          <th><label>ID</label></th>          
          <th><label>NOME</label></th>
          <th><label>LOGIN</label></th>
          <th><label>TELEFONE</label></th>
          <th><label>PERFIL</label></th>
          <th><label>EMPRESA</label></th>
          <th><label>ATIVO</label></th>
          <th><label>EDITAR</label></th>
        </tr>
        <?php
		while ($row = $sqlusuario->fetch(PDO::FETCH_OBJ)){			
		?>        
        <tr>
          <td><?php echo $row->NUM_ID_USU?></td>          
          <td><?php echo $row->TXT_NOME_USU?></td>
          <td><?php echo $row->TXT_LOGIN_USU?></td>
          <td><?php echo $row->TXT_TELEFONE_USU?></td>
          <td><?php echo $row->TXT_NOME_PER ?></td>
          <td><?php echo $row->TXT_FANTASIA_EMP?></td>
          <td><?php echo $row->TXT_ATIVO_USU?></td>

          <td>
          		
              <div class="btn-group dropleft">
               <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Ações</button>
                 <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="alterar-usuarios.php?id=<?php echo $row->NUM_ID_USU?>">Alterar Dados</a>
                    <a class="dropdown-item" href="alterar-usuarios-filial.php?id=<?php echo $row->NUM_ID_USU?>">Mudar Loja</a>
                    <a class="dropdown-item" href="alterar-usuarios-perfil.php?id=<?php echo $row->NUM_ID_USU?>">Mudar Perfil</a>
                  </div>
              </div>

          </td>
          </tr>
        <?php
		}
		?>
      </table>
    </td>
    </tr>
  </table>
</form>
</body>
</html>
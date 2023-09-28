<?php include "verifica.php" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/bootstrap.css" rel="stylesheet" />
<script type="text/javascript" src="javascript/cadastro_equipamento.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Registro de Equipamentos</title>
</head>
<?php
include "conexao.php";
$id = $_GET['id'];
$res = $con->prepare("SELECT * FROM TBL_EQUIPAMENTO_EQUIP WHERE NUM_ID_EQUIP = ?");
$res->bindParam(1,$id);
$res->execute();

?>
<body>
<form name="equipamento" action="processa-equipamentos.php?acao=salvar&id=<?php echo $id ?>" method="post" onSubmit="return validaForm()">
<table width="100%" border="0" align="center">
  <tr>
    <td> <legend><h3>
   	<a href="consulta-equipamentos.php"><img src="imagens/voltar.png" width="30" height="30"  title="Clique para voltar" /></a>
    Alteração de Equipamento<h3></legend>
    </td>
  </tr>
  <tr>
    <td><table width="75%" align="center" class="table-condensed">
      <tr>
   
      </tr>
      <tr>
        <?php while ($row=$res->fetch(PDO::FETCH_OBJ)){ ?>
        <td width="50%">
          <label>TIPO EQUIPAMENTO</label>
          <select name="tipo" id="tipo" title="SELECIONE O TIPO DE EQUIPAMENTO" class="form-control">
          <option>SELECIONE</option>
          <option value="NOTEBOOK">NOTEBOOK</option>
		  <option value="ALLINONE">ALL IN ONE</option>
          <option value="DESKTOP">DESKTOP</option>
          <option value="SERVIDOR">SERVIDOR</option>
          </select>
        </td>
        <td width="50%">
        
        <!-- 
        Desativado em 16/10/2018 pois será desenvolvido um modulo somente para alteracao do titular 
        <label>ID DO CLIENTE</label>
        <input name="cliente" class="form-control" type="text" id="cliente" value="<?php echo $row->TBL_CLIENTE_CLI_NUM_ID_CLI ?>" maxlength="20" />
        -->
		<input name="cliente" type="hidden" id="cliente" value="<?php echo $row->TBL_CLIENTE_CLI_NUM_ID_CLI ?>">
        </td>
      </tr>
      <tr>
        <td>
        <label>SETOR</label>
        <input name="setor" class="form-control" type="text" id="setor" maxlength="50" value="<?php echo $row->TXT_SETOR_EQUIP ?>" />
        </td>
        <td>
        <label>NOME NA REDE</label>
        <input name="nomerede" class="form-control" type="text" id="nomerede"  maxlength="50" value="<?php echo $row->TXT_NOMEREDE_EQUIP ?>" />
        </td>
      </tr>
      <tr>
        <td>
        <label>DESC EQUIPAMENTO</label>
        <input name="descricao" class="form-control" type="text" id="descricao" value="<?php echo $row->TXT_DESCRICAO_EQUIP ?>" maxlength="50" />
        </td>
        <td>
        <label>LOGIN</label>
        <input name="login" class="form-control" type="text" id="login" value="<?php echo $row->TXT_LOGIN_EQUIP ?>" maxlength="20" /></td>
      </tr>
      <tr>
        <td>
        <label>SENHA</label>
        <input name="senha" class="form-control" type="text" id="senha" value="<?php echo $row->TXT_SENHA_EQUIP ?>" maxlength="20"/>
        </td>
        <td>
        <label>UTILIZADORES</label>
        <input name="utilizadores" class="form-control" type="text" id="utilizadores" value="<?php echo $row->TXT_UTILIZADORES_EQUIP ?>" maxlength="20" />
        </td>
      </tr>
      <tr>
        <td>
        <label>HD</label>
        <input name="hd" class="form-control" type="number" id="hd" value="<?php echo $row->NUM_HD_EQUIP ?>" />
        </td>
        <td>
        <label>PROCESSADOR</label>
        <input name="processador" class="form-control" type="text" id="processador" value="<?php echo $row->TXT_PROCESSADOR_EQUIP ?>" maxlength="20" />
        </td>
      </tr>
      <tr>
        <td>
        <label>MEMORIA</label>
        <input name="memoria" class="form-control" type="number" id="memoria" value="<?php echo $row->NUM_MEMORIA_EQUIP ?>" maxlength="20" />
        </td>
        <td>
        <label>PLACA MAE</label>
        <input class="form-control" name="placamae" type="text" id="placamae" value="<?php echo $row->TXT_PLACAMAE_EQUIP ?>" maxlength="20" /></td>
      </tr>
      <tr>
        <td>
        <label>MONITOR</label>
        <input class="form-control" name="monitor" type="text" id="monitor" value="<?php echo $row->TXT_MONITOR_EQUIP ?>" maxlength="20" />
        </td>
        <td>
        <label>APLICATIVOS</label>
        <input class="form-control" name="aplicativos" type="text" id="aplicativos" value="<?php echo $row->TXT_APLICATIVOS_EQUIP ?>" maxlength="50" />
        </td>
      </tr>
      <tr>
        <td>
        <label>NFE</label>
        <input name="nfe" class="form-control" type="number" id="nfe" maxlength="20" value="<?php echo $row->NUM_NFE_EQUIP ?>" />
        </td>
        <td>
        <label>SISTEMA OPERACIONAL</label>
        <select name="sistemaoperacional" placeholder="Somente numeros" class="form-control" >
          <?php 
		    include "conexao.php"; 
			$res1=$con->prepare("SELECT NUM_ID_SO, TXT_NOME_SO FROM TBL_SISTEMAOPERACIONAL_SO WHERE TXT_ATIVO_SO = 'S'");
      $res1->execute();

			while($row1 = $res1->fetch(PDO::FETCH_OBJ)){?>
          <option value="<?php echo $row1->NUM_ID_SO ?>"><?php echo $row1->TXT_NOME_SO ?></option>
          <?php } ?>
        </select>
        </td>
      </tr>
      <tr>
        <td>
        <label>MARCA</label>
        <input name="marca" class="form-control" type="text" id="marca" value="<?php echo $row->TXT_MARCA_EQUIP ?>" maxlength="50" />
        </td>
        <td>
        <label>MODELO DO EQUIPAMENTO</label>
        <input name="modelo" class="form-control" type="text" id="modelo"  maxlength="50" value="<?php echo $row->TXT_MODELO_EQUIP ?>" />
        </td>
      </tr>
      <tr>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>
        <label>SERIAL DO EQUIPAMENTO</label>
        <input name="serial" class="form-control" type="text" id="serial"  maxlength="30" value="<?php echo $row->TXT_SERIAL_EQUIP ?>" />
        </td>
        
        <td colspan="3">
        <label>ATIVO</label>
          <select name="ativo" id="ativo" title="INFORME SE EQUIPAMENTO ESTA ATIVO OU NAO" class="form-control">
          <option value="S">SIM</option>
          <option value="N">NAO</option>
          </select>
          </td>
      </tr>
      <td colspan="2">
    <label>OBSERVAÇÃO</label>
        <textarea name="observacao" id="observacao"  class="form-control"  cols="120" rows="3" title="DESCREVA INFORMAÇÕES SOBRE O EQUIPAMENTO"><?php echo $row->TXT_OBSERVACAO_EQUIP ?></textarea>
    </td>
    </tr>
      <?php } ?>
    </table>
    </td>
  </tr>
  <tr>
    <td height="40" align="center"><input type="submit" name="registrar"  value="Salvar Dados" class="btn btn-success" /></td>
  </tr>
</table>
</form>
</body>
</html>
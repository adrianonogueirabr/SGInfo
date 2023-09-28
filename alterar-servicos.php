<?php 

include "conexao.php";

$id = $_GET['id'];

$sqlServico = $con->prepare("SELECT * FROM TBL_SERVICO_SER WHERE NUM_ID_SER = '$id'");
if(!$sqlServico->execute()){die ('Houve um erro na transacao: ' . mysqli_error());}

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/bootstrap.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Alterar Servicos</title>
</head>

<body>
<form name="servico" action="processa-servicos.php?acao=salvar" method="post" onSubmit="return validaForm()">
<table class="table">
    <tr>
	    <td> <?php include "inicial.php"?> </td>
	</tr>
     <tr><td class=" table-primary"><h4>Alterar Serviços</h4></td></tr>
</table>
<table width="80%" align="center">
<tr>
<td> 
<?php
		while ($row = $sqlServico->fetch(PDO::FETCH_OBJ)){			
	?> 
<div class="form-row">  
<input name="codigo" type="hidden" value="<?php echo $row->NUM_ID_SER ?>" />

  <div class="form-group col-md-6 col-sm-6">
    <p class="font-weight-bold">NOME
    <input name="nome" type="text"  title="INFORME O NOME DO SERVICO" value="<?php echo $row->TXT_NOME_SER; ?>" class="form-control"  /></p>
  </div>

  <div class="form-group col-md-6 col-sm-6">
    <p class="font-weight-bold">DESCRICAO
    <input name="descricao" type="text"  title="INFORME A DESCRICAO DO SERVICO" value="<?php echo $row->TXT_DESCRICAO_SER; ?>" class="form-control"  /></p>
  </div>

  <div class="form-group col-md-6 col-sm-6">
    <p class="font-weight-bold">DURACAO
    <input name="duracao" type="number"  title="INFORME A DURACAO DO SERVICO EM HORAS" value="<?php echo $row->NUM_DURACAO_SER; ?>" class="form-control"  /></p>
  </div>

  <div class="form-group col-md-6 col-sm-6">
    <p class="font-weight-bold">VALOR PESSOA FISICA
    <input name="fisica" type="double"  title="INFORME O VALOR PESSOA FISICA" value="<?php echo $row->VAL_FISICA_SER; ?>" class="form-control"  /></p>
  </div>

  <div class="form-group col-md-6 col-sm-6">
    <p class="font-weight-bold">VALOR PESSOA JURIDICA
    <input name="juridica" type="double" title="INFORME O VALOR PESSOA JURIDICA" value="<?php echo $row->VAL_JURIDICA_SER; ?>" class="form-control"  /></p>
  </div>

  <div class="form-group col-md-6 col-sm-6">
    <p class="font-weight-bold">VALOR GARANTIA
    <input name="garantia" type="double"  title="INFORME O VALOR PARA GARANTIA" value="<?php echo $row->VAL_GARANTIA_SER; ?>" class="form-control"  /></p>
  </div>

  <div class="form-group col-md-6 col-sm-6">
    <p class="font-weight-bold">VALOR CONTRATO
    <input name="contrato" type="double"  title="INFORME O VALOR PARA CONTRATOS" value="<?php echo $row->VAL_CONTRATO_SER; ?>" class="form-control"  /></p>
  </div>

  <div class="form-group col-md-6 col-sm-6"> 
        <p class="font-weight-bold">ATIVO: </label>
           <select name="ativo" id="ativo" title="INFORME SE SERVICO ESTA ATIVO OU NAO" class="form-control">
          <option value="S">SIM</option>
          <option value="N">NAO</option>
        </select>  
  </div>

  <div class="form-group col-md-2 col-sm-12">
        <input type="submit" name="registrar"  value="Salvar Dados" class="btn btn-success btn-block" />        
	</div>

 </div>





    
    </td>
  </tr>
  <?php
		}//FIM DO RES
	?>
</table>
</form>
</body>
</html>
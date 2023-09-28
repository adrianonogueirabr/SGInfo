<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/bootstrap.css" rel="stylesheet" />
<title>Detalhes da Loja</title>
</head>

<?php

include "conexao.php";

$id = $_GET['id'];

$res = $con->prepare("SELECT * FROM TBL_EMPRESA_EMP WHERE NUM_ID_EMP = ?");
$res->bindParam(1,$id);
if (!$res->execute()) { echo "Error: " . $sql . "<br>" . mysqli_error($con);}
    
    while ($row = $res->fetch(PDO::FETCH_OBJ)){     
    
?>

<body>
<form name="cliente" action="alterar-filial.php?id=<?php echo $row->NUM_ID_EMP ?>" method="post">
<table class="table">
    <tr>
	    <td> <?php include "inicial.php"?> </td>
	</tr>
    <tr><td class=" table-primary"><h4>Dados da Loja</h4></td></tr>
</table>
<table width="80%" align="center">
<tr>
<td> 
<div class="form-row"> 
    <div class="form-group col-md-4 col-sm-6">
      <p class="font-weight-bold">ID DA LOJA</label>
            <input type="text" readonly="readonly" title="ID DO CLIENTE NO SISTEMA" value="<?php echo $row->NUM_ID_EMP; ?>" class="form-control"  />
    </div>

    <div class="form-group col-md-4 col-sm-6">
      <p class="font-weight-bold">TIPO PESSOA			
			    <?php if($row->TXT_PESSOA_EMP=='J'){ ?>
				<input name="id_" type="text" value="JURIDICA" readonly="readonly" class="form-control" title="PESSOA FISICA OU JURIDICA" />
				<?php }else if($row->TXT_PESSOA_EMP=='F'){ ?>
				<input name="id_" type="text" value="FISICA" readonly="readonly"  class="form-control" title="PESSOA FISICA OU JURIDICA"/>
				<?php } ?>  
		</div>
    
    <div class="form-group col-md-4 col-sm-6">
      <p class="font-weight-bold">CPF/CNPJ	   
      <input  type="text" title="CPF OU CNPJ DO CLIENTE" value="<?php echo $row->TXT_CPFCNPJ_EMP; ?>" readonly="readonly" class="form-control"  />
    </div>
        
    <div class="form-group col-md-6 col-sm-6">
      <p class="font-weight-bold">RAZÃO SOCIAL 
      <input  type="text" value="<?php echo $row->TXT_RAZAO_EMP; ?>" title="NOME/RAZAO SOCIAL DO CLIENTE"  readonly="readonly" class="form-control"  />
    </div>

    <div class="form-group col-md-6 col-sm-6">
      <p class="font-weight-bold">NOME FANTASIA
      <input  type="text" readonly="readonly"  value="<?php echo $row->TXT_FANTASIA_EMP; ?>" title="NOME FANTASIA" class="form-control"  />
    </div>
    
    <div class="form-group col-md-3 col-sm-6">
        <p class="font-weight-bold">DATA DE FUNDACAO
        <input type="text" class="form-control" title="DATA DE NASCIMENTO" value="<?php echo date("d/m/Y", strtotime($row->DTA_FUNDACAO_EMP)); ?>" readonly="readonly" />
    </div>

    <div class="form-group col-md-3 col-sm-6">
        <p class="font-weight-bold">SITE
        <input class="form-control" type="text" readonly="readonly" value="<?php echo $row->TXT_SITE_EMP; ?>" title="SITE CASO POSSUA" />
    </div>

    <div class="form-group col-md-3 col-sm-6">
        <p class="font-weight-bold">TELEFONE/RAMAL
        <input type="text" class="form-control" readonly="readonly" value="<?php echo $row->TXT_TELEFONE_EMP; ?> | <?php echo $row->TXT_RAMAL_EMP; ?>" title="TELEFONE CELULAR OU FIXO" />
    </div>
    
    <div class="form-group col-md-3 col-sm-6">
        <p class="font-weight-bold">FAX
        <input name="fax" class="form-control" type="text" readonly="readonly"value="<?php echo $row->TXT_FAX_EMP; ?>" title="FAX CASO POSSUA" />
    </div>

    <div class="form-group col-md-4 col-sm-6">
        <p class="font-weight-bold">EMAIL 
        <input  class="form-control" type="text" readonly="readonly" value="<?php echo $row->TXT_EMAIL_EMP; ?>" title="EMAIL DO CLIENTE" />
    </div>

    <div class="form-group col-md-6 col-sm-6">
        <p class="font-weight-bold">LOGRADOURO
        <input  class="form-control" type="text" readonly="readonly" value="<?php echo $row->TXT_LOGRADOURO_EMP; ?>" title="LOGRADOURO"/>
    </div>

    <div class="form-group col-md-2 col-sm-6">
        <p class="font-weight-bold">NUMERO
        <input class="form-control" type="text" readonly="readonly" value="<?php echo $row->NUM_NUMERO_EMP; ?>" title="NUMERO DA RESIDENCIA"/>
    </div>

    <div class="form-group col-md-3 col-sm-6">
        <p class="font-weight-bold">CEP
        <input class="form-control" type="text" readonly="readonly" value="<?php echo $row->NUM_CEP_EMP; ?>" title="CEP DO ENDERECO" />
    </div>

    <div class="form-group col-md-3 col-sm-6">
        <p class="font-weight-bold">BAIRRO 
        <input  class="form-control" type="text"  readonly="readonly" value="<?php echo $row->TXT_BAIRRO_EMP; ?>" title="BAIRRO DO ENDERECO" />
    </div>

    <div class="form-group col-md-6 col-sm-6">
        <p class="font-weight-bold">COMPLEMENTO:
        <input name="complemento" class="form-control" type="text" readonly="readonly" value="<?php echo $row->TXT_COMPLEMENTO_EMP; ?>" title="COMPLEMENTO DO ENDERECO" />
    </div>
    
    <div class="form-group col-md-3 col-sm-6">
        <p class="font-weight-bold">CIDADE
        <input type="text" class="form-control" readonly="readonly" value="<?php echo $row->TXT_CIDADE_EMP; ?>" title="CIDADE DO CLIENTE" />
    </div>

    <div class="form-group col-md-3 col-sm-6">
        <p class="font-weight-bold">ESTADO
        <input name="id_" type="text" title="ESTADO DO CLIENTE NO SISTEMA" value="<?php echo $row->TXT_ESTADO_EMP; ?>" readonly="readonly" class="form-control" />    
    </div>

   <div class="form-group col-md-3 col-sm-6">
        <p class="font-weight-bold">INSC. MUNICIPAL
        <input name="im" type="text" class="form-control" readonly="readonly" value="<?php echo $row->TXT_IM_EMP; ?>" title="INSCRICAO MUNICIPAL CASO POSSUA" />
    </div>
    
    <div class="form-group col-md-3 col-sm-6">
        <p class="font-weight-bold">INSC. ESTADUAL
        <input  type="text" class="form-control" readonly="readonly" value="<?php echo $row->TXT_IE_EMP; ?>" title="INSCRICAO ESTADUAL CASO POSSUA"/>
    </div>
    
    <div class="form-group col-md-4 col-sm-6">
        <p class="font-weight-bold">REGISTRO GERAL
        <input name="rg" type="text" readonly="readonly" class="form-control"  value="<?php echo $row->TXT_RG_EMP; ?>" title="RG"/>
    </div>
      
    <div class="form-group col-md-4 col-sm-6">
        <p class="font-weight-bold">ULTIMA ALTERACAO
        <input  class="form-control" type="text" readonly="readonly" title="DATA DA ULTIMA ALTERACAO " value="<?php echo date("d/m/Y",strtotime($row->DTA_ALTERACAO_EMP)); ?>"/></p>
    </div>

    <div class="form-group col-md-4 col-sm-6">
        <p class="font-weight-bold">CADASTRADO EM
        <input name="registro_" class="form-control" type="text" readonly="readonly" title="DATA DE REGISTRO" value="<?php echo date("d/m/Y", strtotime($row->DTA_REGISTRO_EMP)); ?>" /></p>
    </div>
    
    <div class="form-group col-md-6 col-sm-6">
        <p class="font-weight-bold">ATIVO: </label>
        <?php if($row->TXT_ATIVO_EMP=='S'){ ?>
              <input name="id_" type="text" id="ativo" value="SIM" size="20" maxlength="20" readonly="readonly" class="form-control" /></p>
        <?php }else if($row->TXT_ATIVO_EMP=='N'){ ?>
              <input name="id_" type="text" id="ativo" value="NAO" size="20" maxlength="20" readonly="readonly" class="form-control" /></p>
        <?php } ?>     
    <div>
</div>

    <div class="form-group col-md-3 col-sm-12">
        <input type="submit" name="Alterar"  value="Alterar" class="btn btn-danger btn-block"  />
    </div>

        
    <?php
		}
	?>      

</form>
</td>
</tr>
</table>
</body>
</html>
<?php include "verifica.php" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/formularios.css" rel="stylesheet" />
<script type="text/javascript" src="javascript/cadastro_cliente.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Detalhes de Clientes</title>
</head>

<?php

include "conexao.php";

$id = $_GET['id'];

$sql = "SELECT * FROM TBL_CLIENTE_CLI WHERE NUM_ID_CLI = '$id'";
$res = mysql_query($sql);

?>

<body>
<form name="cliente" action="processa-clientes.php?acao=salvar" method="post" onSubmit="return validaForm()">
<table width="700" border="1" align="left" cellpadding="3" cellspacing="0">
  <tr>
    <td width="761" height="20" bgcolor="#990000">
    	<div id="imagemTitulo"><a href="consulta-clientes.php">
        	<img src="imagens/voltar.png" width="29" height="29" alt="voltar" /></a></div>
            <div id="tituloFormulario">Detalhes de Clientes</div></td>
    </tr>
    <?php
		while ($row = mysql_fetch_array($res)){			
	?> 
        <tr>
          <td height="30" align="center"><table width="680" border="0">
            <tr>

	<td colspan="2"><div id="Importante">ID DO CLIENTE*:</div></td>
    <td width="359"><div id="Importante">TIPO PESSOA*:</div></td>
    </tr>
  <tr>
    <td colspan="2"><input name="id_" type="text" id="id_" title="ID DO CLIENTE NO SISTEMA" value="<?php echo $row["NUM_ID_CLI"]; ?>" size="20" maxlength="20" readonly="readonly" /></td>
    <td>
    <?php if($row["TXT_PESSOA_CLI"]=='J'){ ?>
    <input name="id_" type="text" id="tipo_pessoa" title="TIPO PESSOA" value="JURIDICA" size="20" maxlength="20" readonly="readonly" />
    <?php }else if($row["TXT_PESSOA_CLI"]=='F'){ ?>
    <input name="id_" type="text" id="tipo_pessoa" title="TIPO PESSOA" value="FISICA" size="20" maxlength="20" readonly="readonly" />
    <?php } ?>
    </td>
    </tr>
  <tr>
    <td colspan="2"><div id="Importante">CPF OU CNPJ*:</div></td>
    <td><div id="Importante">RAZÃO SOCIAL*:</div></td>
    </tr>
  <tr>
    <td colspan="2"><input name="cpfcnpj" type="text" id="cpfcnpj" title="INFORME O CPF OU CNPJ DO CLIENTE" value="<?php echo $row["TXT_CPF_CNPJ_CLI"]; ?>" size="20" maxlength="20" readonly="readonly" /></td>
    <td><input name="razao" type="text" id="razao" title="INFORME NOME/RAZAO SOCIAL DO CLIENTE" onblur="adcionaRazaoFantasia()" value="<?php echo $row["TXT_RAZAO_CLI"]; ?>" size="45" maxlength="100" readonly="readonly" /></td>
    </tr>
  <tr>
    <td colspan="2"><div id="nomeCampoRegistro">NOME FANTASIA:</div></td>
    <td><div id="nomeCampoRegistro">DATA NASCIMENTO:</div></td>
    </tr>
  <tr>
    <td colspan="2"><input name="fantasia" type="text" id="fantasia" title="INFORME NOME FANTASIA" value="<?php echo $row["TXT_FANTASIA_CLI"]; ?>" size="45" maxlength="100" readonly="readonly" /></td>
    <td>
    <input name="id_" type="text" id="data" title="DATA DE NASCIMENTO" value="<?php echo $row["DTA_NASCIMENTO_CLI"]; ?>" size="20" maxlength="20" readonly="readonly" />
    </td>
    </tr>
  <tr>
    <td colspan="2"><div id="Importante">SEXO*:</div></td>
    <td><div id="Importante">TELEFONE/RAMAL*:</div></td>
    </tr>
  <tr>
    <td colspan="2">
    <?php if($row["TXT_SEXO_CLI"]=='M'){ ?>
    <input name="id_" type="text" id="sexo" value="MASCULINO" size="20" maxlength="20" readonly="readonly" />
    <?php }else if($row["TXT_SEXO_CLI"]=='F'){ ?>
    <input name="id_" type="text" id="sexo" value="FEMININO" size="20" maxlength="20" readonly="readonly" />
    <?php } ?>
    </td>
    <td><input name="telefone" type="text" id="telefone" placeholder="92991490000" title="INFORME TELEFONE SEJA CELULAR OU FIXO" value="<?php echo $row["TXT_TELEFONE_CLI"]; ?>" size="20" maxlength="20" readonly="readonly" />
      <input name="ramal" type="text" id="ramal" title="INFORME CASO POSSUA NUMERO DO RAMAL" value="<?php echo $row["TXT_RAMAL_CLI"]; ?>" size="10" maxlength="20" readonly="readonly" /></td>
    </tr>
  <tr>
    <td colspan="2"><div id="nomeCampoRegistro">FAX:</div></td>
    <td><div id="Importante">EMAIL*:</div></td>
    </tr>
  <tr>
    <td colspan="2"><input name="fax" type="text" id="fax" title="INFORME NUMERO DO FAX CASO POSSUA" value="<?php echo $row["TXT_FAX_CLI"]; ?>" size="20" maxlength="20" readonly="readonly" /></td>
    <td><input name="email" type="text" id="email" title="INFORME EMAIL DO CLIENTE" value="<?php echo $row["TXT_EMAIL_CLI"]; ?>" size="45" maxlength="100" readonly="readonly" /></td>
    </tr>
  <tr>
    <td colspan="3"><div id="nomeCampoRegistro">SITE:</div></td>
    </tr>
  <tr>
    <td colspan="3"><input name="site" type="text" id="site" title="INFORME SITE CASO CLIENTE POSSUA" value="<?php echo $row["TXT_SITE_CLI"]; ?>" size="45" maxlength="100" readonly="readonly" /></td>
    </tr>
  <tr>
    <td colspan="2"><div id="nomeCampoRegistro">LOGRADOURO:</div></td>
    <td><div id="nomeCampoRegistro">NUMERO:</div></td>
    </tr>
  <tr>
    <td colspan="2"><input name="logradouro" type="text" id="logradouro" placeholder="RUA / AVENIDA / BECO" title="INFORME LOGRADOURO SEM NUMERO" value="<?php echo $row["TXT_LOGRADOURO_CLI"]; ?>" size="45" maxlength="100" readonly="readonly"/></td>
    <td><input name="numero" type="text" id="numero" title="INFORME NUMERO DA RESIDENCIA" value="<?php echo $row["NUM_NUMERO_CLI"]; ?>" size="10" maxlength="20" readonly="readonly"/></td>
    </tr>
  <tr>
    <td colspan="2"><div id="nomeCampoRegistro">CEP:</div></td>
    <td><div id="nomeCampoRegistro">BAIRRO:</div></td>
    </tr>
  <tr>
    <td colspan="2"><input name="cep" type="text" id="cep" title="INFORME O CEP DO CLIENTE" value="<?php echo $row["NUM_CEP_CLI"]; ?>" size="20" maxlength="10" readonly="readonly" /></td>
    <td><input name="bairro" type="text" id="bairro" title="INFORME O BAIRRO DO CLIENTE" value="<?php echo $row["TXT_BAIRRO_CLI"]; ?>" size="45" maxlength="40" readonly="readonly" /></td>
    </tr>
  <tr>
    <td colspan="2"><div id="nomeCampoRegistro">COMPLEMENTO:</div></td>
    <td><div id="nomeCampoRegistro">PONTO DE REF.:</div></td>
    </tr>
  <tr>
    <td colspan="2"><input name="complemento" type="text" id="complemento" title="INFORME COMPLEMENTO DO ENDERECO" value="<?php echo $row["TXT_COMPLEMENTO_CLI"]; ?>" size="45" maxlength="40" readonly="readonly" />    </td>
    <td><input name="referencia" type="text" id="referencia" title="INFORME PONTO DE REFERENCIA DO CLIENTE" value="<?php echo $row["TXT_REFERENCIA_CLI"]; ?>" size="45" maxlength="40" readonly="readonly" /></td>
    </tr>
  <tr>
    <td colspan="2"><div id="nomeCampoRegistro">CIDADE:</div></td>
    <td><div id="nomeCampoRegistro">ESTADO:</div></td>
    </tr>
  <tr>
    <td colspan="2"><input name="cidade" type="text" id="cidade" title="INFORME A CIDADE DO CLIENTE" value="<?php echo $row["TXT_CIDADE_CLI"]; ?>" size="45" maxlength="40" readonly="readonly" /></td>
    <td>
    <input name="id_" type="text" id="estado" title="ESTADO DO CLIENTE NO SISTEMA" value="<?php echo $row["TXT_ESTADO_CLI"]; ?>" size="20" maxlength="20" readonly="readonly" />
    </td>
    </tr>
  <tr>
    <td colspan="2"><div id="nomeCampoRegistro">INSC. MUNICIPAL:</div></td>
    <td><div id="nomeCampoRegistro">INSC. ESTADUAL:</div></td>
    </tr>
  <tr>
    <td colspan="2"><input name="im" type="text" id="im" title="INFORME INSCRICAO MUNICIPAL CASO POSSUA" value="<?php echo $row["TXT_IM_CLI"]; ?>" size="20" maxlength="20" readonly="readonly" /></td>
    <td><input name="ie" type="text" id="ie" title="INFORME INSCRICAO ESTADUAL CASO POSSUA" value="<?php echo $row["TXT_IE_CLI"]; ?>" size="20" maxlength="20" readonly="readonly"/></td>
    </tr>
    <tr>
      <td colspan="2"><div id="nomeCampoRegistro">REGISTRO GERAL:</div></td>
      <td><div id="nomeCampoRegistro">CONTATO:</div></td>
    </tr>
    <tr>
      <td colspan="2"><input name="rg" type="text" id="rg" title="INFORME RG DO CLIENTE" value="<?php echo $row["TXT_RG_CLI"]; ?>" size="20" maxlength="20" readonly="readonly"/></td>
      <td><input name="contato" type="text" id="contato" title="INFORME DADOS DO CONTATO CASO EMPRESA NOME - TELEFONE" value="<?php echo $row["TXT_CONTATO_CLI"]; ?>" size="45" maxlength="40" readonly="readonly"/></td>
    </tr>
    <tr>
      <td colspan="3" valign="top"><div id="nomeCampoRegistro">OBSERVAÇÃO:</div></td>
    </tr>
    <tr>
      <td colspan="3" valign="top"><textarea name="observacao" cols="60" rows="3" readonly="readonly" id="observacao" title="INFORMACOES GERAIS DO CLIENTE"><?php echo $row["TXT_OBSERVACAO_CLI"]; ?></textarea></td>
    </tr>
    <tr>
      <td colspan="2"><div id="nomeCampoRegistro">SALDO ADIANTAMENTO:</div></td>
      <td><div id="nomeCampoRegistro">TITULO EM ABERTO:</div></td>
    </tr>
    <tr>
      <td colspan="2"><input name="saldo_" type="text" id="saldo_" title="SALDO EM ADIANTAMENTO DO CLIENTE" value="<?php echo $row["VAL_SALDO_CLI"]; ?>" size="20" maxlength="20" readonly="readonly" /></td>
      <td>
          <?php if($row["TXT_TITULOABERTO_CLI"]=='S'){ ?>
    <input name="id_" type="text" id="titulo_aberto" value="SIM" size="20" maxlength="20" readonly="readonly" />
    <?php }else if($row["TXT_TITULOABERTO_CLI"]=='N'){ ?>
    <input name="id_" type="text" id="titulo_aberto" value="NAO" size="20" maxlength="20" readonly="readonly" />
    <?php } ?>
      </td>
    </tr>
    <tr>
      <td colspan="2"><div id="nomeCampoRegistro">ULTIMA ALTERACAO:</div></td>
      <td><div id="nomeCampoRegistro">CLIENTE DESDE:</div></td>
    </tr>
    <tr>
      <td colspan="2"><input name="alteracao_" type="text" id="alteracao_" title="DATA DA ULTIMA ALTERACAO DO CLIENTE" value="<?php echo $row["DTA_ALTERACAO_CLI"]; ?>" size="20" maxlength="20" readonly="readonly"/></td>
      <td><input name="registro_" type="text" id="registro_" title="DATA DE REGISTRO DO CLIENTE" value="<?php echo $row["DTA_REGISTRO_CLI"]; ?>" size="20" maxlength="20" readonly="readonly"/></td>
    </tr>
    <tr>
      <td colspan="3"><div id="Importante">ATIVO:</div></td>
    </tr>
    <tr>
      <td colspan="3">
            <?php if($row["TXT_ATIVO_CLI"]=='S'){ ?>
    <input name="id_" type="text" id="ativo" value="SIM" size="20" maxlength="20" readonly="readonly" />
    <?php }else if($row["TXT_ATIVO_CLI"]=='N'){ ?>
    <input name="id_" type="text" id="ativo" value="NAO" size="20" maxlength="20" readonly="readonly" />
    <?php } ?>
        </td>
    </tr>
    <tr>
      <td height="30" colspan="3" align="center">
      <INPUT TYPE="hidden" NAME="id" VALUE="<?php echo $row["NUM_ID_CLI"]; ?>">
      <INPUT TYPE="hidden" NAME="saldo" VALUE="<?php echo $row["VAL_SALDO_CLI"]; ?>">
      <INPUT TYPE="hidden" NAME="registro" VALUE="<?php echo $row["DTA_REGISTRO_CLI"]; ?>">
      <INPUT TYPE="hidden" NAME="alteracao" VALUE="<?php echo $row["DTA_ALTERACAO_CLI"]; ?>">
      <INPUT TYPE="hidden" NAME="tituloaberto" VALUE="<?php echo $row["TXT_TITULOABERTO_CLI"]; ?>">      
      </td>
    </tr>

          </table></td>
    </tr>
        
    <?php
		}
	?>
        <tr>
      <td height="30" align="center" bgcolor="#990000">&nbsp;</td>
    </tr>
</table>
</form>
</body>
</html>
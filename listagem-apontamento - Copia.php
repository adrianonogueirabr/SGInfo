<?php include "verifica.php"; 
//LIBERACAO TECNICO PARA APROVAR E EXECUTAR SERVICO DAS OS
	if($perfil_usuario == 5){
		
	include "conexao.php";
	
	$valor = $_POST['valor'];
		if($valor == ""){
			$valor = $_GET['id'];	
		}
	
	$sql = "SELECT * FROM TBL_ORDEMSERVICO_OS WHERE (TXT_STATUS_OS <> 'TE') AND (TXT_STATUS_OS <> 'PG') AND (TXT_STATUS_OS <> 'FA') AND (TXT_STATUS_OS <> 'CA') AND NUM_ID_OS = '$valor'";		
	$res = mysql_query($sql);
	//caso a os esteja com status nao permitido
	if(mysql_num_rows($res) == ""){	
		echo "
			<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-apontamento.php'>
			<script type=\"text/javascript\">
			alert(\"Erro no processamento das informacoes ou OS com status nao permitido!\");
			</script>";		
	}else{
?>	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/formularios.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Listagem de Serviços da OS</title>
</head>
<body>

<form name="listagem" method="post" action="processa-apontamento.php?acao=adcionar">

<table width="700" border="1" align="left" cellpadding="3" cellspacing="0">
  <tr>
    <td height="32" bgcolor="#990000">
    	<div id="imagemTitulo">
    		<a href="consulta-apontamento.php">
            	<img src="imagens/voltar.png" width="30" height="30" alt="voltar" title="CLIQUE AQUI PARA VOLTAR CONSULTA DE OS" />
            </a>
        </div>
        <div id="imagemTitulo">
          	<a href="processa-apontamento.php?acao=encerraros&idos=<?php echo $valor ?>">
                <img src="imagens/terminar.png" width="30" height="30" alt="CLIQUE AQUI PARA TERMINAR A OS" /> 
            </a>
        </div>
    	<div id="tituloFormulario">Listagem de Serviços da Ordem de Servico</div>
    </td>
	</tr>
  <tr>
    <td height="718" align="center"><table width="669" border="0" align="center" cellpadding="1" cellspacing="1">
      <tr>
	<?php
		while ($row = mysql_fetch_array($res)){			
	?>
    <td width="330" height="25"><div id="Importante">NUMERO DA OS*:</div></td>
		<td width="332">
        <div id="Importante">TIPO DE OS*:</div></td>    
  </tr>
  <tr>
    <td width="330"><input name="id2" type="text" disabled="disabled" id="id2" size="20" value="<?php echo $row["NUM_ID_OS"] ?>" maxlength="20" /><input type="hidden" name="id_os" id="id_os" value="<?php echo $row["NUM_ID_OS"] ?>" />            
	    <input type="hidden" name="tipo_os" id="tipo_os" value="<?php echo $row["TXT_TIPO_OS"] ?>" /></td>
		<td width="332">			
		<input name="tipo" type="text" disabled="disabled" id="tipo" size="20" value="<?php echo $row["TXT_TIPO_OS"] ?>" maxlength="20" />
        </td>
  </tr>
  <tr>
    <td height="25" colspan="2"><div id="Importante">ID DO CLIENTE*:</div></td>
    </tr>
  <tr>
    <td colspan="2">
      <input name="id_cliente" type="text" id="id_cliente" value="<?php echo $row["TBL_CLIENTE_CLI_NUM_ID_CLI"] ?>" size="5" maxlength="20" readonly="readonly" />      
      <?php
					$cli = $row["TBL_CLIENTE_CLI_NUM_ID_CLI"];
					$sql_nome = "SELECT TXT_RAZAO_CLI  FROM TBL_CLIENTE_CLI WHERE NUM_ID_CLI = '$cli'";
					$res_nome = mysql_query($sql_nome);
					while($row_nome = mysql_fetch_array($res_nome)){
				?>
      <input name="nomecliente" type="text" disabled="disabled" value="<?php echo $row_nome["TXT_RAZAO_CLI"] ?>" id="nomecliente" size="35" />
      <?php } ?>
    </td>
		</tr>
  <tr>
    <td height="25" colspan="2"><div id="Importante">ID EQUIPAMENTO*:</div></td>
    </tr>
  <tr>
    <td><input name="setor2" type="text" disabled="disabled" id="setor2" size="45" maxlength="50" value="<?php echo $row["TBL_EQUIPAMENTO_EQUIP_NUM_ID_EQUIP"] ?>" />	
		
	</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
      <td height="25" colspan="2"><div id="Importante">DADOS GERAIS:</div></td>
      </tr>
    <tr>
    <td colspan="2">	
      <input name="dadosgerais" type="text" disabled="disabled" id="dadosferais" size="90" maxlength="50" value="<?php echo $row["TXT_DADOSGERAIS_OS"] ?>" />    
    </td>
    </tr>
    <tr>
      <td height="25" colspan="2" valign="top"><div id="Importante">RECLAMAÇÃO*:</div></td>
      </tr>
    <tr>
		<td colspan="2" valign="top">
		  <textarea name="textarea" cols="90" rows="3" disabled="disabled" id="textarea"><?php echo $row["TXT_RECLAMACAO_OS"] ?></textarea>
		  </td>
		</tr>
    <tr>
      <td height="25" colspan="2" valign="top"><div id="Importante">DEFEITO*:</div></td>
      </tr>
    <tr>
<td colspan="2" valign="top">
  <textarea name="textarea" cols="90" rows="3" disabled="disabled" id="textarea"><?php echo $row["TXT_DEFEITO_OS"] ?></textarea>
  
  <a href="cadastro-defeito.php?os=<?php echo $valor ?>" target="_self"><img src="imagens/defeito.png" width="50" height="50" alt="defeito" /></a>    
</td>
		</tr>
    <tr>
      <td height="25" colspan="2" valign="top"><div id="Importante">SOLUCAO*:</div></td>
      </tr>
    <tr>
      <td colspan="2" valign="top">
      <textarea name="textarea" cols="90" rows="3" disabled="disabled" id="textarea"><?php echo $row["TXT_RESOLUCAO_OS"] ?></textarea>
        <a href="cadastro-defeito.php?os=<?php echo $valor ?>" target="_self"><img src="imagens/solucao.png" width="50" height="50" alt="solucao" /></a>
        </td>
    </tr>
    <tr>
      <td height="25" colspan="2" valign="top"><div id="Importante">SERVIÇOS*:</div></td>
      </tr>
    <tr>
      <?php
	}
    ?>
      <td height="30" colspan="2" valign="top"><select name="servico2">
        <?php
				include "conexao.php"; 
				$sql="SELECT NUM_ID_SER, TXT_NOME_SER FROM TBL_SERVICO_SER WHERE TXT_ATIVO_SER = 'S'";
				$sqlResult = mysql_query($sql) or die(mysql_error());
					while($sqlResultFim = mysql_fetch_assoc($sqlResult)){?>
				    <option value="<?=$sqlResultFim["NUM_ID_SER"]?>"><?=$sqlResultFim["TXT_NOME_SER"]?></option>
        			<?php } ?>
      </select>
        <input type="submit" name="button2" id="button2" value="ADCIONAR" /></td>
      </tr>  
  
</table>  
			<?php
				include "conexao.php";
				$sql = "SELECT * FROM TBL_ITEMOS_ITOS WHERE TBL_ORDEMSERVICO_OS_NUM_ID_OS = '$valor'";
				$res = mysql_query($sql);
					while ($rowItem = mysql_fetch_array($res)){			
			?>
  </p>
  <table width="652" height="106" border="1" align="center" cellpadding="0" cellspacing="0">
  <tr>
        <th width="106" height="25" scope="col"><div id="tituloCampoListagem">ID</div></th>
        <th colspan="3" scope="col"><div id="tituloCampoListagem">SERVICO</div><div id="nomeCampoListagem"></div><div id="nomeCampoListagem"></div></th>
        <th width="156" colspan="2" scope="col"><div id="tituloCampoListagem">VALOR</div></th>
  </tr>
  <tr>
        <td height="25"><div id="nomeCampoListagem"><?php echo $rowItem["TBL_SERVICO_SER_NUM_ID_SER"]; ?></div></td>
			<?php
				$id = $rowItem["TBL_SERVICO_SER_NUM_ID_SER"];
				$sql_nome = "SELECT TXT_NOME_SER FROM TBL_SERVICO_SER WHERE NUM_ID_SER = '$id'";
				$res_nome = mysql_query($sql_nome);
					while($row_nome = mysql_fetch_array($res_nome)){
			?>
						<td colspan="3" align="left"><div id="nomeCampoListagemEsquerda"><?php echo $row_nome["TXT_NOME_SER"];?></div></td>
					<?php } ?>
        <td colspan="2" align="center"><div id="nomeCampoListagem"><?php echo $rowItem["VAL_VALOR_ITOS"];?></div></td>
          
  </tr>
  <tr>
        <th width="106" height="25" scope="col"><div id="tituloCampoListagem">STATUS</div></th>
        <th width="189" scope="col"><div id="tituloCampoListagem">DATA/HORA INICIO</div></th>
        <th width="190" scope="col"><div id="tituloCampoListagem">DATA/HORA FIM</div></th>
        <th colspan="3" scope="col"><div id="tituloCampoListagem">AÇÕES</div></th>
   </tr>
   <tr>
        <td height="25"><div id="nomeCampoListagem"><?php echo $rowItem["TXT_STATUS_ITOS"];?></div></td>
        <td height="25"><div id="nomeCampoListagem"><?php echo $rowItem["DTA_INICIO_ITOS"] ;?> | <?php echo $rowItem["HOR_INICIO_ITOS"] ;?></div></td>
        <td height="25"><div id="nomeCampoListagem"><?php echo $rowItem["DTA_TERMINO_ITOS"] ;?> | <?php echo $rowItem["HOR_TERMINO_ITOS"] ;?></div></td>
        <td height="25" colspan="3" align="center"><div id="nomeCampoListagem">
            
			<a href="processa-apontamento.php?acao=aprovar&id=<?php echo $rowItem["NUM_ID_ITOS"];?>&os=<?php echo $valor ?>"><img src="imagens/aprovar.jpg" width="20" height="20" title="APROVAR SERVICO" /></a>          
			<a href="processa-apontamento.php?acao=desaprovar&id=<?php echo $rowItem["NUM_ID_ITOS"];?>&os=<?php echo $valor ?>"><img src="imagens/nao_aprovar.png" width="20" height="20" title="NAO APROVAR SERVICO"/></a>          
			<a href="processa-apontamento.php?acao=iniciar&id=<?php echo $rowItem["NUM_ID_ITOS"];?>&os=<?php echo $valor ?>"><img src="imagens/iniciar.png" width="20" height="20" title="INICIAR SERVICO"/></a><a href="processa-apontamento.php?acao=terminar&id=<?php echo $rowItem["NUM_ID_ITOS"];?>&os=<?php echo $valor ?>"><img src="imagens/terminar.png" width="20" height="20" title="TERMINAR SERVICO"/></a>
			<a href="processa-apontamento.php?acao=excluir&id=<?php echo $rowItem["NUM_ID_ITOS"];?>&os=<?php echo $valor ?>"><img src="imagens/excluir.png" width="20" height="20" title="EXCLUIR SERVICO"/></a>            </div>              
        </td>
    </tr>
    </table>
    <p>
      <?php
			}
			?>        
      </p></td>
    </tr>
    <tr>
		<td height="40" align="center" bgcolor="#990000">&nbsp;</td>
    </tr>
</table>
</form>
</body>
</html>

<?php
	}//fim status de os nao permitido
//LIBERACAO PARA TECNICO INTERNO APENAS INICIAR E TERMINAR O SERVICO
}else if($perfil_usuario == 4){
?>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/formularios.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Listagem de Serviços da OS</title>
</head>
<body>

<form name="listagem" method="post" action="processa-apontamento.php?acao=adcionar">

<table width="700" border="1" align="left" cellpadding="3" cellspacing="0">
  <tr>
    <td height="32" bgcolor="#990000">
    	<div id="imagemTitulo">
    		<a href="consulta-apontamento.php">
            	<img src="imagens/voltar.png" width="30" height="30" alt="voltar" title="CLIQUE AQUI PARA VOLTAR CONSULTA DE OS" />
            </a>
        </div>
        <div id="imagemTitulo">
          	<a href="processa-apontamento.php?acao=encerraros&idos=<?php echo $valor ?>">
                <img src="imagens/terminar.png" width="30" height="30" alt="CLIQUE AQUI PARA TERMINAR A OS" /> 
            </a>
        </div>
    	<div id="tituloFormulario">Listagem de Serviços da Ordem de Servico</div>
    </td>
	</tr>
  <tr>
    <td height="535" align="center" valign="top">     
  
  <table width="669" border="0" align="center" cellpadding="1" cellspacing="1">
  <tr>
	<?php
		while ($row = mysql_fetch_array($res)){			
	?>
    <td width="330" height="20"><div id="Importante">NUMERO DA OS*:</div></td>
		<td width="332">
        <div id="Importante">TIPO DE OS*:</div></td>    
  </tr>
  <tr>
    <td width="330"><input name="id2" type="text" disabled="disabled" id="id2" size="20" value="<?php echo $row["NUM_ID_OS"] ?>" maxlength="20" /><input type="hidden" name="id_os" id="id_os" value="<?php echo $row["NUM_ID_OS"] ?>" />            
	    <input type="hidden" name="tipo_os" id="tipo_os" value="<?php echo $row["TXT_TIPO_OS"] ?>" /></td>
		<td width="332">			
		<input name="tipo" type="text" disabled="disabled" id="tipo" size="20" value="<?php echo $row["TXT_TIPO_OS"] ?>" maxlength="20" />
        </td>
  </tr>
  <tr>
    <td height="20" colspan="2"><div id="Importante">ID DO CLIENTE*:</div></td>
    </tr>
  <tr>
    <td colspan="2">
      <input name="id_cliente" type="text" id="id_cliente" value="<?php echo $row["TBL_CLIENTE_CLI_NUM_ID_CLI"] ?>" size="5" maxlength="20" readonly="readonly" />      
      <?php
					$cli = $row["TBL_CLIENTE_CLI_NUM_ID_CLI"];
					$sql_nome = "SELECT TXT_RAZAO_CLI  FROM TBL_CLIENTE_CLI WHERE NUM_ID_CLI = '$cli'";
					$res_nome = mysql_query($sql_nome);
					while($row_nome = mysql_fetch_array($res_nome)){
				?>
      <input name="nomecliente" type="text" disabled="disabled" value="<?php echo $row_nome["TXT_RAZAO_CLI"] ?>" id="nomecliente" size="35" />
      <?php } ?>
    </td>
		</tr>
  <tr>
    <td height="20" colspan="2"><div id="Importante">ID EQUIPAMENTO*:</div></td>
    </tr>
  <tr>
    <td><input name="setor2" type="text" disabled="disabled" id="setor2" size="45" maxlength="50" value="<?php echo $row["TBL_EQUIPAMENTO_EQUIP_NUM_ID_EQUIP"] ?>" />	
		
	</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
      <td height="20" colspan="2"><div id="Importante">DADOS GERAIS:</div></td>
      </tr>
    <tr>
    <td colspan="2">	
      <input name="dadosgerais" type="text" disabled="disabled" id="dadosferais" size="90" maxlength="50" value="<?php echo $row["TXT_DADOSGERAIS_OS"] ?>" />    
    </td>
    </tr>
    <tr>
      <td height="20" colspan="2" valign="top"><div id="Importante">RECLAMAÇÃO*:</div></td>
      </tr>
    <tr>
		<td colspan="2" valign="top">
		  <textarea name="textarea" cols="90" rows="3" disabled="disabled" id="textarea"><?php echo $row["TXT_RECLAMACAO_OS"] ?></textarea>
		  </td>
		</tr>
    <tr>
      <td height="20" colspan="2" valign="top"><div id="Importante">DEFEITO*:</div></td>
      </tr>
    <tr>
<td colspan="2" valign="top">
  <textarea name="textarea" cols="90" rows="3" disabled="disabled" id="textarea"><?php echo $row["TXT_DEFEITO_OS"] ?></textarea>
  
  <a href="cadastro-defeito.php?os=<?php echo $valor ?>" target="_self"><img src="imagens/defeito.png" width="50" height="50" alt="defeito" /></a>    
</td>
		</tr>
    <tr>
      <td height="20" colspan="2" valign="top"><div id="Importante">SOLUCAO*:</div></td>
      </tr>
    <tr>
      <td colspan="2" valign="top">
      <textarea name="textarea" cols="90" rows="3" disabled="disabled" id="textarea"><?php echo $row["TXT_RESOLUCAO_OS"] ?></textarea>
        <a href="cadastro-defeito.php?os=<?php echo $valor ?>" target="_self"><img src="imagens/solucao.png" width="50" height="50" alt="solucao" /></a>
        </td>
    </tr>
    <tr>
      <td height="20" colspan="2" valign="top"><div id="Importante">SERVIÇOS*:</div></td>
      </tr>
    <tr>
      <?php
	}
    ?>
      <td height="30" colspan="2" valign="top"><select name="servico2">
        <?php
				include "conexao.php"; 
				$sql="SELECT NUM_ID_SER, TXT_NOME_SER FROM TBL_SERVICO_SER WHERE TXT_ATIVO_SER = 'S'";
				$sqlResult = mysql_query($sql) or die(mysql_error());
					while($sqlResultFim = mysql_fetch_assoc($sqlResult)){?>
				    <option value="<?=$sqlResultFim["NUM_ID_SER"]?>"><?=$sqlResultFim["TXT_NOME_SER"]?></option>
        			<?php } ?>
      </select>
        <input type="submit" name="button2" id="button2" value="ADCIONAR" /></td>
      </tr>  
  
  </table>  
			<?php
				include "conexao.php";
				$sql = "SELECT * FROM TBL_ITEMOS_ITOS WHERE TBL_ORDEMSERVICO_OS_NUM_ID_OS = '$valor'";
				$res = mysql_query($sql);
					while ($rowItem = mysql_fetch_array($res)){			
			?>
  </p>
 <table width="630" height="106" border="1" align="center" cellpadding="0" cellspacing="0">
  <tr>
        <th width="78" height="25" scope="col"><div id="nomeCampoListagem">ID</div></th>
        <th colspan="3" scope="col"><div id="nomeCampoListagem">SERVICO</div><div id="nomeCampoListagem"></div><div id="nomeCampoListagem"></div></th>
        <th width="134" colspan="2" scope="col"><div id="nomeCampoListagem">VALOR</div></th>
  </tr>
  <tr>
        <td height="25"><div id="nomeCampoListagem"><?php echo $rowItem["TBL_SERVICO_SER_NUM_ID_SER"]; ?></div></td>
			<?php
				$id = $rowItem["TBL_SERVICO_SER_NUM_ID_SER"];
				$sql_nome = "SELECT TXT_NOME_SER FROM TBL_SERVICO_SER WHERE NUM_ID_SER = '$id'";
				$res_nome = mysql_query($sql_nome);
					while($row_nome = mysql_fetch_array($res_nome)){
			?>
						<td colspan="3" align="left"><div id="nomeCampoListagem"><?php echo $row_nome["TXT_NOME_SER"];?></div></td>
					<?php } ?>
        <td colspan="2" align="center"><div id="nomeCampoListagem"><?php echo $rowItem["VAL_VALOR_ITOS"];?></div></td>
          
  </tr>
  <tr>
        <th width="78" height="25" scope="col"><div id="nomeCampoListagem">STATUS</div></th>
        <th width="155" scope="col"><div id="nomeCampoListagem">DATA/HORA INICIO</div></th>
        <th width="155" scope="col"><div id="nomeCampoListagem">DATA/HORA FIM</div></th>
        <th colspan="3" scope="col"><div id="nomeCampoListagem">AÇÕES</div></th>
   </tr>
   <tr>
        <td height="25"><div id="nomeCampoListagem"><?php echo $rowItem["TXT_STATUS_ITOS"];?></div></td>
        <td height="25"><div id="nomeCampoListagem"><?php echo $rowItem["DTA_INICIO_ITOS"] ;?> | <?php echo $rowItem["HOR_INICIO_ITOS"] ;?></div></td>
        <td height="25"><div id="nomeCampoListagem"><?php echo $rowItem["DTA_TERMINO_ITOS"] ;?> | <?php echo $rowItem["HOR_TERMINO_ITOS"] ;?></div></td>
        <td height="25" colspan="3" align="center"><div id="nomeCampoListagem">
            
			<?php /*<a href="processa-apontamento.php?acao=aprovar&id=<?php echo $rowItem["NUM_ID_ITOS"];?>&os=<?php echo $valor ?>"><img src="imagens/aprovar.jpg" width="20" height="20" title="APROVAR SERVICO" /></a>          
			<a href="processa-apontamento.php?acao=desaprovar&id=<?php echo $rowItem["NUM_ID_ITOS"];?>&os=<?php echo $valor ?>"><img src="imagens/nao_aprovar.png" width="20" height="20" title="NAO APROVAR SERVICO"/></a>          
			*/?><a href="processa-apontamento.php?acao=iniciar&id=<?php echo $rowItem["NUM_ID_ITOS"];?>&os=<?php echo $valor ?>"><img src="imagens/iniciar.png" width="20" height="20" title="INICIAR SERVICO"/></a>			<img src="imagens/parar.jpg" width="20" height="20" title="PARAR SERVICO"/>
			<a href="processa-apontamento.php?acao=terminar&id=<?php echo $rowItem["NUM_ID_ITOS"];?>&os=<?php echo $valor ?>"><img src="imagens/terminar.png" width="20" height="20" title="TERMINAR SERVICO"/></a>
			<a href="processa-apontamento.php?acao=excluir&id=<?php echo $rowItem["NUM_ID_ITOS"];?>&os=<?php echo $valor ?>"><img src="imagens/excluir.png" width="20" height="20" title="EXCLUIR SERVICO"/></a>            </div>              
        </td>
    </tr>
    </table>
    <p>
      <?php
			}
			?>        
      </p></td>
    </tr>
    <tr>
		<td height="40" align="center" bgcolor="#990000">&nbsp;</td>
    </tr>
</table>
</form>
</body>
<?php 
//LIBERACAO PARA CONSUOLTOR TECNICO APENAS APROVAR E DESAPROVAR SERVICO
}else if($perfil_usuario == 3){
?>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/formularios.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Listagem de Serviços da OS</title>
</head>
<body>

<form name="listagem" method="post" action="processa-apontamento.php?acao=adcionar">

<table width="700" border="1" align="left" cellpadding="3" cellspacing="0">
  <tr>
    <td height="32" bgcolor="#990000">
    	<div id="imagemTitulo">
    		<a href="consulta-apontamento.php">
            	<img src="imagens/voltar.png" width="30" height="30" alt="voltar" title="CLIQUE AQUI PARA VOLTAR CONSULTA DE OS" />
            </a>
        </div>
        <div id="imagemTitulo">
          	<a href="processa-apontamento.php?acao=encerraros&idos=<?php echo $valor ?>">
                <img src="imagens/terminar.png" width="30" height="30" alt="CLIQUE AQUI PARA TERMINAR A OS" /> 
            </a>
        </div>
    	<div id="tituloFormulario">Listagem de Serviços da Ordem de Servico</div>
    </td>
	</tr>
  <tr>
    <td height="535" align="center" valign="top">     
  
  <table width="669" border="0" align="center" cellpadding="1" cellspacing="1">
  <tr>
	<?php
		while ($row = mysql_fetch_array($res)){			
	?>
    <td width="330" height="20"><div id="Importante">NUMERO DA OS*:</div></td>
		<td width="332">
        <div id="Importante">TIPO DE OS*:</div></td>    
  </tr>
  <tr>
    <td width="330"><input name="id2" type="text" disabled="disabled" id="id2" size="20" value="<?php echo $row["NUM_ID_OS"] ?>" maxlength="20" /><input type="hidden" name="id_os" id="id_os" value="<?php echo $row["NUM_ID_OS"] ?>" />            
	    <input type="hidden" name="tipo_os" id="tipo_os" value="<?php echo $row["TXT_TIPO_OS"] ?>" /></td>
		<td width="332">			
		<input name="tipo" type="text" disabled="disabled" id="tipo" size="20" value="<?php echo $row["TXT_TIPO_OS"] ?>" maxlength="20" />
        </td>
  </tr>
  <tr>
    <td height="20" colspan="2"><div id="Importante">ID DO CLIENTE*:</div></td>
    </tr>
  <tr>
    <td colspan="2">
      <input name="id_cliente" type="text" id="id_cliente" value="<?php echo $row["TBL_CLIENTE_CLI_NUM_ID_CLI"] ?>" size="5" maxlength="20" readonly="readonly" />      
      <?php
					$cli = $row["TBL_CLIENTE_CLI_NUM_ID_CLI"];
					$sql_nome = "SELECT TXT_RAZAO_CLI  FROM TBL_CLIENTE_CLI WHERE NUM_ID_CLI = '$cli'";
					$res_nome = mysql_query($sql_nome);
					while($row_nome = mysql_fetch_array($res_nome)){
				?>
      <input name="nomecliente" type="text" disabled="disabled" value="<?php echo $row_nome["TXT_RAZAO_CLI"] ?>" id="nomecliente" size="35" />
      <?php } ?>
    </td>
		</tr>
  <tr>
    <td height="20" colspan="2"><div id="Importante">ID EQUIPAMENTO*:</div></td>
    </tr>
  <tr>
    <td><input name="setor2" type="text" disabled="disabled" id="setor2" size="45" maxlength="50" value="<?php echo $row["TBL_EQUIPAMENTO_EQUIP_NUM_ID_EQUIP"] ?>" />	
		
	</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
      <td height="20" colspan="2"><div id="Importante">DADOS GERAIS:</div></td>
      </tr>
    <tr>
    <td colspan="2">	
      <input name="dadosgerais" type="text" disabled="disabled" id="dadosferais" size="90" maxlength="50" value="<?php echo $row["TXT_DADOSGERAIS_OS"] ?>" />    
    </td>
    </tr>
    <tr>
      <td height="20" colspan="2" valign="top"><div id="Importante">RECLAMAÇÃO*:</div></td>
      </tr>
    <tr>
		<td colspan="2" valign="top">
		  <textarea name="textarea" cols="90" rows="3" disabled="disabled" id="textarea"><?php echo $row["TXT_RECLAMACAO_OS"] ?></textarea>
		  </td>
		</tr>
    <tr>
      <td height="20" colspan="2" valign="top"><div id="Importante">DEFEITO*:</div></td>
      </tr>
    <tr>
<td colspan="2" valign="top">
  <textarea name="textarea" cols="90" rows="3" disabled="disabled" id="textarea"><?php echo $row["TXT_DEFEITO_OS"] ?></textarea>
  
  <a href="cadastro-defeito.php?os=<?php echo $valor ?>" target="_self"><img src="imagens/defeito.png" width="50" height="50" alt="defeito" /></a>    
</td>
		</tr>
    <tr>
      <td height="20" colspan="2" valign="top"><div id="Importante">SOLUCAO*:</div></td>
      </tr>
    <tr>
      <td colspan="2" valign="top">
      <textarea name="textarea" cols="90" rows="3" disabled="disabled" id="textarea"><?php echo $row["TXT_RESOLUCAO_OS"] ?></textarea>
        <a href="cadastro-defeito.php?os=<?php echo $valor ?>" target="_self"><img src="imagens/solucao.png" width="50" height="50" alt="solucao" /></a>
        </td>
    </tr>
    <tr>
      <td height="20" colspan="2" valign="top"><div id="Importante">SERVIÇOS*:</div></td>
      </tr>
    <tr>
      <?php
	}
    ?>
      <td height="30" colspan="2" valign="top"><select name="servico2">
        <?php
				include "conexao.php"; 
				$sql="SELECT NUM_ID_SER, TXT_NOME_SER FROM TBL_SERVICO_SER WHERE TXT_ATIVO_SER = 'S'";
				$sqlResult = mysql_query($sql) or die(mysql_error());
					while($sqlResultFim = mysql_fetch_assoc($sqlResult)){?>
				    <option value="<?=$sqlResultFim["NUM_ID_SER"]?>"><?=$sqlResultFim["TXT_NOME_SER"]?></option>
        			<?php } ?>
      </select>
        <input type="submit" name="button2" id="button2" value="ADCIONAR" /></td>
      </tr>  
  
  </table>  
			<?php
				include "conexao.php";
				$sql = "SELECT * FROM TBL_ITEMOS_ITOS WHERE TBL_ORDEMSERVICO_OS_NUM_ID_OS = '$valor'";
				$res = mysql_query($sql);
					while ($rowItem = mysql_fetch_array($res)){			
			?>
  </p>
<table width="630" height="106" border="1" align="center" cellpadding="0" cellspacing="0">
  <tr>
        <th width="78" height="25" scope="col"><div id="nomeCampoListagem">ID</div></th>
        <th colspan="3" scope="col"><div id="nomeCampoListagem">SERVICO</div><div id="nomeCampoListagem"></div><div id="nomeCampoListagem"></div></th>
        <th width="134" colspan="2" scope="col"><div id="nomeCampoListagem">VALOR</div></th>
  </tr>
  <tr>
        <td height="25"><div id="nomeCampoListagem"><?php echo $rowItem["TBL_SERVICO_SER_NUM_ID_SER"]; ?></div></td>
			<?php
				$id = $rowItem["TBL_SERVICO_SER_NUM_ID_SER"];
				$sql_nome = "SELECT TXT_NOME_SER FROM TBL_SERVICO_SER WHERE NUM_ID_SER = '$id'";
				$res_nome = mysql_query($sql_nome);
					while($row_nome = mysql_fetch_array($res_nome)){
			?>
						<td colspan="3" align="left"><div id="nomeCampoListagem"><?php echo $row_nome["TXT_NOME_SER"];?></div></td>
					<?php } ?>
        <td colspan="2" align="center"><div id="nomeCampoListagem"><?php echo $rowItem["VAL_VALOR_ITOS"];?></div></td>
          
  </tr>
  <tr>
        <th width="78" height="25" scope="col"><div id="nomeCampoListagem">STATUS</div></th>
        <th width="155" scope="col"><div id="nomeCampoListagem">DATA/HORA INICIO</div></th>
        <th width="155" scope="col"><div id="nomeCampoListagem">DATA/HORA FIM</div></th>
        <th colspan="3" scope="col"><div id="nomeCampoListagem">AÇÕES</div></th>
   </tr>
   <tr>
        <td height="25"><div id="nomeCampoListagem"><?php echo $rowItem["TXT_STATUS_ITOS"];?></div></td>
        <td height="25"><div id="nomeCampoListagem"><?php echo $rowItem["DTA_INICIO_ITOS"] ;?> | <?php echo $rowItem["HOR_INICIO_ITOS"] ;?></div></td>
        <td height="25"><div id="nomeCampoListagem"><?php echo $rowItem["DTA_TERMINO_ITOS"] ;?> | <?php echo $rowItem["HOR_TERMINO_ITOS"] ;?></div></td>
        <td height="25" colspan="3" align="center"><div id="nomeCampoListagem">
            
			<a href="processa-apontamento.php?acao=aprovar&id=<?php echo $rowItem["NUM_ID_ITOS"];?>&os=<?php echo $valor ?>"><img src="imagens/aprovar.jpg" width="20" height="20" title="APROVAR SERVICO" /></a>          
			<a href="processa-apontamento.php?acao=desaprovar&id=<?php echo $rowItem["NUM_ID_ITOS"];?>&os=<?php echo $valor ?>"><img src="imagens/nao_aprovar.png" width="20" height="20" title="NAO APROVAR SERVICO"/></a>          
			<?php /*<a href="processa-apontamento.php?acao=iniciar&id=<?php echo $rowItem["NUM_ID_ITOS"];?>&os=<?php echo $valor ?>"><img src="imagens/iniciar.png" width="20" height="20" title="INICIAR SERVICO"/></a>			<img src="imagens/parar.jpg" width="20" height="20" title="PARAR SERVICO"/>
			<a href="processa-apontamento.php?acao=terminar&id=<?php echo $rowItem["NUM_ID_ITOS"];?>&os=<?php echo $valor ?>"><img src="imagens/terminar.png" width="20" height="20" title="TERMINAR SERVICO"/></a>
			<a href="processa-apontamento.php?acao=excluir&id=<?php echo $rowItem["NUM_ID_ITOS"];?>&os=<?php echo $valor ?>"><img src="imagens/excluir.png" width="20" height="20" title="EXCLUIR SERVICO"/></a>*/?>              
        </td>
    </tr>
    </table>
    <p>
      <?php
			}
			?>        
      </p></td>
    </tr>
    <tr>
		<td height="40" align="center" bgcolor="#990000">&nbsp;</td>
    </tr>
</table>
</form>
</body>
<?php 
}else{
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/formularios.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Listagem de Serviços da OS</title>
</head>
<body>

<form name="listagem" method="post" action="processa-apontamento.php?acao=adcionar">

<table width="700" border="1" align="left" cellpadding="3" cellspacing="0">
  <tr>
    <td height="32" bgcolor="#990000">
    	<div id="imagemTitulo">
    		<a href="consulta-apontamento.php">
            	<img src="imagens/voltar.png" width="30" height="30" alt="voltar" title="CLIQUE AQUI PARA VOLTAR CONSULTA DE OS" />
            </a>
        </div>
        <div id="imagemTitulo">
          	<a href="processa-apontamento.php?acao=encerraros&idos=<?php echo $valor ?>">
                <img src="imagens/terminar.png" width="30" height="30" alt="CLIQUE AQUI PARA TERMINAR A OS" /> 
            </a>
        </div>
    	<div id="tituloFormulario">Listagem de Serviços da Ordem de Servico</div>
    </td>
	</tr>
  <tr>
    <td height="535" align="center" valign="top">     
  
  <table width="669" border="0" align="center" cellpadding="1" cellspacing="1">
  <tr>
	<?php
		while ($row = mysql_fetch_array($res)){			
	?>
    <td width="330" height="20"><div id="Importante">NUMERO DA OS*:</div></td>
		<td width="332">
        <div id="Importante">TIPO DE OS*:</div></td>    
  </tr>
  <tr>
    <td width="330"><input name="id2" type="text" disabled="disabled" id="id2" size="20" value="<?php echo $row["NUM_ID_OS"] ?>" maxlength="20" /><input type="hidden" name="id_os" id="id_os" value="<?php echo $row["NUM_ID_OS"] ?>" />            
	    <input type="hidden" name="tipo_os" id="tipo_os" value="<?php echo $row["TXT_TIPO_OS"] ?>" /></td>
		<td width="332">			
		<input name="tipo" type="text" disabled="disabled" id="tipo" size="20" value="<?php echo $row["TXT_TIPO_OS"] ?>" maxlength="20" />
        </td>
  </tr>
  <tr>
    <td height="20" colspan="2"><div id="Importante">ID DO CLIENTE*:</div></td>
    </tr>
  <tr>
    <td colspan="2">
      <input name="id_cliente" type="text" id="id_cliente" value="<?php echo $row["TBL_CLIENTE_CLI_NUM_ID_CLI"] ?>" size="5" maxlength="20" readonly="readonly" />      
      <?php
					$cli = $row["TBL_CLIENTE_CLI_NUM_ID_CLI"];
					$sql_nome = "SELECT TXT_RAZAO_CLI  FROM TBL_CLIENTE_CLI WHERE NUM_ID_CLI = '$cli'";
					$res_nome = mysql_query($sql_nome);
					while($row_nome = mysql_fetch_array($res_nome)){
				?>
      <input name="nomecliente" type="text" disabled="disabled" value="<?php echo $row_nome["TXT_RAZAO_CLI"] ?>" id="nomecliente" size="35" />
      <?php } ?>
    </td>
		</tr>
  <tr>
    <td height="20" colspan="2"><div id="Importante">ID EQUIPAMENTO*:</div></td>
    </tr>
  <tr>
    <td><input name="setor2" type="text" disabled="disabled" id="setor2" size="45" maxlength="50" value="<?php echo $row["TBL_EQUIPAMENTO_EQUIP_NUM_ID_EQUIP"] ?>" />	
		
	</td>
    <td>&nbsp;</td>
  </tr>
    <tr>
      <td height="20" colspan="2"><div id="Importante">DADOS GERAIS:</div></td>
      </tr>
    <tr>
    <td colspan="2">	
      <input name="dadosgerais" type="text" disabled="disabled" id="dadosferais" size="90" maxlength="50" value="<?php echo $row["TXT_DADOSGERAIS_OS"] ?>" />    
    </td>
    </tr>
    <tr>
      <td height="20" colspan="2" valign="top"><div id="Importante">RECLAMAÇÃO*:</div></td>
      </tr>
    <tr>
		<td colspan="2" valign="top">
		  <textarea name="textarea" cols="90" rows="3" disabled="disabled" id="textarea"><?php echo $row["TXT_RECLAMACAO_OS"] ?></textarea>
		  </td>
		</tr>
    <tr>
      <td height="20" colspan="2" valign="top"><div id="Importante">DEFEITO*:</div></td>
      </tr>
    <tr>
<td colspan="2" valign="top">
  <textarea name="textarea" cols="90" rows="3" disabled="disabled" id="textarea"><?php echo $row["TXT_DEFEITO_OS"] ?></textarea>
  
  <a href="cadastro-defeito.php?os=<?php echo $valor ?>" target="_self"><img src="imagens/defeito.png" width="50" height="50" alt="defeito" /></a>    
</td>
		</tr>
    <tr>
      <td height="20" colspan="2" valign="top"><div id="Importante">SOLUCAO*:</div></td>
      </tr>
    <tr>
      <td colspan="2" valign="top">
      <textarea name="textarea" cols="90" rows="3" disabled="disabled" id="textarea"><?php echo $row["TXT_RESOLUCAO_OS"] ?></textarea>
        <a href="cadastro-defeito.php?os=<?php echo $valor ?>" target="_self"><img src="imagens/solucao.png" width="50" height="50" alt="solucao" /></a>
        </td>
    </tr>
    <tr>
      <td height="20" colspan="2" valign="top"><div id="Importante">SERVIÇOS*:</div></td>
      </tr>
    <tr>
      <?php
	}
    ?>
      <td height="30" colspan="2" valign="top"><select name="servico2">
        <?php
				include "conexao.php"; 
				$sql="SELECT NUM_ID_SER, TXT_NOME_SER FROM TBL_SERVICO_SER WHERE TXT_ATIVO_SER = 'S'";
				$sqlResult = mysql_query($sql) or die(mysql_error());
					while($sqlResultFim = mysql_fetch_assoc($sqlResult)){?>
				    <option value="<?=$sqlResultFim["NUM_ID_SER"]?>"><?=$sqlResultFim["TXT_NOME_SER"]?></option>
        			<?php } ?>
      </select>
        <input type="submit" name="button2" id="button2" value="ADCIONAR" /></td>
      </tr>  
  
  </table>  
			<?php
				include "conexao.php";
				$sql = "SELECT * FROM TBL_ITEMOS_ITOS WHERE TBL_ORDEMSERVICO_OS_NUM_ID_OS = '$valor'";
				$res = mysql_query($sql);
					while ($rowItem = mysql_fetch_array($res)){			
			?>
  </p>
<table width="630" height="106" border="1" align="center" cellpadding="0" cellspacing="0">
  <tr>
        <th width="78" height="25" scope="col"><div id="nomeCampoListagem">ID</div></th>
        <th colspan="3" scope="col"><div id="nomeCampoListagem">SERVICO</div><div id="nomeCampoListagem"></div><div id="nomeCampoListagem"></div></th>
        <th width="134" colspan="2" scope="col"><div id="nomeCampoListagem">VALOR</div></th>
  </tr>
  <tr>
        <td height="25"><div id="nomeCampoListagem"><?php echo $rowItem["TBL_SERVICO_SER_NUM_ID_SER"]; ?></div></td>
			<?php
				$id = $rowItem["TBL_SERVICO_SER_NUM_ID_SER"];
				$sql_nome = "SELECT TXT_NOME_SER FROM TBL_SERVICO_SER WHERE NUM_ID_SER = '$id'";
				$res_nome = mysql_query($sql_nome);
					while($row_nome = mysql_fetch_array($res_nome)){
			?>
						<td colspan="3" align="left"><div id="nomeCampoListagem"><?php echo $row_nome["TXT_NOME_SER"];?></div></td>
					<?php } ?>
        <td colspan="2" align="center"><div id="nomeCampoListagem"><?php echo $rowItem["VAL_VALOR_ITOS"];?></div></td>
          
  </tr>
  <tr>
        <th width="78" height="25" scope="col"><div id="nomeCampoListagem">STATUS</div></th>
        <th width="155" scope="col"><div id="nomeCampoListagem">DATA/HORA INICIO</div></th>
        <th width="155" scope="col"><div id="nomeCampoListagem">DATA/HORA FIM</div></th>
        <th colspan="3" scope="col"><div id="nomeCampoListagem">AÇÕES</div></th>
   </tr>
   <tr>
        <td height="25"><div id="nomeCampoListagem"><?php echo $rowItem["TXT_STATUS_ITOS"];?></div></td>
        <td height="25"><div id="nomeCampoListagem"><?php echo $rowItem["DTA_INICIO_ITOS"] ;?> | <?php echo $rowItem["HOR_INICIO_ITOS"] ;?></div></td>
        <td height="25"><div id="nomeCampoListagem"><?php echo $rowItem["DTA_TERMINO_ITOS"] ;?> | <?php echo $rowItem["HOR_TERMINO_ITOS"] ;?></div></td>
        <td height="25" colspan="3" align="center"><div id="nomeCampoListagem">
            <?php /*
			<a href="processa-apontamento.php?acao=aprovar&id=<?php echo $rowItem["NUM_ID_ITOS"];?>&os=<?php echo $valor ?>"><img src="imagens/aprovar.jpg" width="20" height="20" title="APROVAR SERVICO" /></a>          
			<a href="processa-apontamento.php?acao=desaprovar&id=<?php echo $rowItem["NUM_ID_ITOS"];?>&os=<?php echo $valor ?>"><img src="imagens/nao_aprovar.png" width="20" height="20" title="NAO APROVAR SERVICO"/></a>          
			<a href="processa-apontamento.php?acao=iniciar&id=<?php echo $rowItem["NUM_ID_ITOS"];?>&os=<?php echo $valor ?>"><img src="imagens/iniciar.png" width="20" height="20" title="INICIAR SERVICO"/></a>			<img src="imagens/parar.jpg" width="20" height="20" title="PARAR SERVICO"/>
			<a href="processa-apontamento.php?acao=terminar&id=<?php echo $rowItem["NUM_ID_ITOS"];?>&os=<?php echo $valor ?>"><img src="imagens/terminar.png" width="20" height="20" title="TERMINAR SERVICO"/></a>
			<a href="processa-apontamento.php?acao=excluir&id=<?php echo $rowItem["NUM_ID_ITOS"];?>&os=<?php echo $valor ?>"><img src="imagens/excluir.png" width="20" height="20" title="EXCLUIR SERVICO"/></a>            </div>    */ ?>          
        </td>
    </tr>
    </table>
    <p>
      <?php
			}
			?>        
      </p></td>
    </tr>
    <tr>
		<td height="40" align="center" bgcolor="#990000">&nbsp;</td>
    </tr>
</table>
</form>
</body>

<?php } ?>

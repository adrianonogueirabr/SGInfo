
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
 <title>SGOFIC - Sistema de Gestão de Oficina 🚚🚕</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <meta name="author" content="Adriano Nogueira - Desenvolvedor">
   <meta content= "SGOFIC - SISTEMA DE GESTÃO DE OFICINAS" name="description">
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 </head>

<body>
<?php 
	include "conexao.php";	

  if($_POST['valor']==""){
      $valor = $_GET['id'];
      $criterio = "CI";
  }else{
      $valor = $_POST['valor'];
      $criterio = $_POST['criterio'];
  }

  if($criterio == "P"){

          $res= $con->prepare("SELECT C.TXT_RAZAO_CLI,F.TBL_CLIENTE_CLI_NUM_ID_CLI , F.NUM_ID_FR, F.TXT_ATIVO_FR, T.TXT_NOME_TIP, M.TXT_NOME_MAR, MO.TXT_NOME_MOD, F.TXT_PLACA_FR, F.TXT_CHASSI_FR, F.DTH_REGISTRO_FR,F.DTH_ALTERACAO_FR, CO.TXT_NOME_COR 
          FROM tbl_frota_fr F 
          LEFT JOIN TBL_CLIENTE_CLI C ON C.NUM_ID_CLI = F.TBL_CLIENTE_CLI_NUM_ID_CLI 
          LEFT JOIN TBL_TIPO_TIP T ON T.NUM_ID_TIP = F.TBL_TIPO_TIP_NUM_ID_TIP 
          LEFT JOIN TBL_MARCA_MAR M ON M.NUM_ID_MAR = F.TBL_MARCA_MAR_NUM_ID_MAR
          LEFT JOIN TBL_MODELO_MOD MO ON MO.NUM_ID_MOD = F.TBL_MODELO_MOD_NUM_ID_MOD
          LEFT JOIN TBL_COR_COR CO ON CO.NUM_ID_COR = F.TBL_COR_COR_NUM_ID_COR

          WHERE TXT_PLACA_FR = ?");          

          $res->bindParam(1,$valor);
          $res->execute();

          if($res->rowCount()<=0){
              echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-frota.php'><script type=\"text/javascript\">alert(\"Frota nao encontrada\");</script>";  
          }

	}else if($criterio == "C"){

          $res= $con->prepare("SELECT C.TXT_RAZAO_CLI,F.TBL_CLIENTE_CLI_NUM_ID_CLI , F.NUM_ID_FR, F.TXT_ATIVO_FR, T.TXT_NOME_TIP, M.TXT_NOME_MAR, MO.TXT_NOME_MOD, F.TXT_PLACA_FR, F.TXT_CHASSI_FR,F.DTH_REGISTRO_FR,F.DTH_ALTERACAO_FR, CO.TXT_NOME_COR 
          FROM tbl_frota_fr F 
          LEFT JOIN TBL_CLIENTE_CLI C ON C.NUM_ID_CLI = F.TBL_CLIENTE_CLI_NUM_ID_CLI 
          LEFT JOIN TBL_TIPO_TIP T ON T.NUM_ID_TIP = F.TBL_TIPO_TIP_NUM_ID_TIP 
          LEFT JOIN TBL_MARCA_MAR M ON M.NUM_ID_MAR = F.TBL_MARCA_MAR_NUM_ID_MAR
          LEFT JOIN TBL_MODELO_MOD MO ON MO.NUM_ID_MOD = F.TBL_MODELO_MOD_NUM_ID_MOD
          LEFT JOIN TBL_COR_COR CO ON CO.NUM_ID_COR = F.TBL_COR_COR_NUM_ID_COR
          WHERE TXT_CHASSI_FR = ?");

          $res->bindParam(1,$valor);
          $res->execute();

            if($res->rowCount()<=0){
              echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-frota.php'><script type=\"text/javascript\">alert(\"Frota nao encontrada\");</script>";  
            }

	}else if($criterio == "CI"){

          $res= $con->prepare("SELECT C.TXT_RAZAO_CLI,F.TBL_CLIENTE_CLI_NUM_ID_CLI, F.NUM_ID_FR, F.TXT_ATIVO_FR, T.TXT_NOME_TIP, M.TXT_NOME_MAR, MO.TXT_NOME_MOD, F.TXT_PLACA_FR, F.TXT_CHASSI_FR, CO.TXT_NOME_COR, F.DTH_REGISTRO_FR,F.DTH_ALTERACAO_FR
          FROM tbl_frota_fr F 
          LEFT JOIN TBL_CLIENTE_CLI C ON C.NUM_ID_CLI = F.TBL_CLIENTE_CLI_NUM_ID_CLI 
          LEFT JOIN TBL_TIPO_TIP T ON T.NUM_ID_TIP = F.TBL_TIPO_TIP_NUM_ID_TIP 
          LEFT JOIN TBL_MARCA_MAR M ON M.NUM_ID_MAR = F.TBL_MARCA_MAR_NUM_ID_MAR
          LEFT JOIN TBL_MODELO_MOD MO ON MO.NUM_ID_MOD = F.TBL_MODELO_MOD_NUM_ID_MOD
          LEFT JOIN TBL_COR_COR CO ON CO.NUM_ID_COR = F.TBL_COR_COR_NUM_ID_COR
          WHERE TBL_CLIENTE_CLI_NUM_ID_CLI = ?");

          $res->bindParam(1,$valor);
          $res->execute();

            if($res->rowCount()<=0){
              echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-frota.php'><script type=\"text/javascript\">alert(\"Frota nao encontrada\");</script>";  
            }

  }else if($criterio = ""){	
	      echo "<META HTTP-EQUIV=REFRESH CONTENT='0; URL=consulta-frota.php'><script type=\"text/javascript\">alert(\"Tente Novamente!\");</script>";
	}	

 

?>
<form name="listagem" method="post">
<table width="100%" class="table responsive">
      <tr>
          <td><?php include "inicial.php" ?></td>
      </tr>
      <tr>
          <td><legend class="p-4 table-primary">Listagem de Frota<legend></td>		
      </td>
    </tr>
    <tr>
      <td>
      <table  class="table-hover table  table-bordered responsive">
            <tr class="table-success" align="center">	
            <th scope="col">ID</th>
            <th scope="col">Cliente</th>
            <th scope="col">Ativo</th>
            <th scope="col">Tipo</th>
            <th scope="col">Marca</th>
            <th scope="col">Modelo</th>
            <th scope="col">Placa</th>
            <th scope="col">Chassi</th>
            <th scope="col">Cor</th>
            <th scope="col">Datas</th>
            <th scope="col">Opcoes</th>
          </tr>
          <?php  while ($row = $res->fetch(PDO::FETCH_OBJ)){?>
          <tr align="center">            
            <td><?php echo $row->NUM_ID_FR?></td>
            <td align="left"> <?php echo $row->TXT_RAZAO_CLI?></td>
            <td><?php echo $row->TXT_ATIVO_FR?></td>
            <td><?php echo $row->TXT_NOME_TIP?></td>
		      	<td><?php echo $row->TXT_NOME_MAR ?></td>
            <td><?php echo $row->TXT_NOME_MOD ?></td>
            <td><?php echo $row->TXT_PLACA_FR ?></td>
            <td><?php echo $row->TXT_CHASSI_FR ?></td>
            <td><?php echo $row->TXT_NOME_COR?></td>
            
            <?php //mensagem para exibicao de data de registro e alteracao da frota 
                $dataRegistro = date("d/m/Y  H:i:s",strtotime($row->DTH_REGISTRO_FR));
                $dataAlteracao = date("d/m/Y  H:i:s",strtotime($row->DTH_ALTERACAO_FR));
                $MensagemPopover = "Registro: $dataRegistro | Alteracao: $dataAlteracao";  
            ?>
            
            <td><a href="#" data-toggle="popover" title="Cronologia da Frota" data-content="<?php echo $MensagemPopover ?>">DATAS</a></td>
            <td>
                <div class="btn-group dropleft"><button class="btn btn-outline-primary btn-sm dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Opcoes</button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                      <a class="dropdown-item" href="alterar-frota.php?id=<?php echo $row->NUM_ID_FR;?>">Alterar</a>
                      <a class="dropdown-item" href="cadastro-orcamento.php?id_fr=<?php echo $row->NUM_ID_FR ?>&id_cli=<?php echo $row->TBL_CLIENTE_CLI_NUM_ID_CLI?>"> + Orcamento</a>
                      <a class="dropdown-item" href="cadastro-os.php?id_fr=<?php echo base64_encode($row->NUM_ID_FR) ?>&id_cliente_fr=<?php echo base64_encode($row->TBL_CLIENTE_CLI_NUM_ID_CLI)?>&nome_cliente=<?php echo base64_encode($row->TXT_RAZAO_CLI)?>"> + Ordem de Servico</a>
                      <!--<a class="dropdown-item" href="historico-os.php?valor=<?php echo $row->NUM_ID_FR; ?>&id_cliente_fr=<?php echo base64_encode($row->TBL_CLIENTE_CLI_NUM_ID_CLI)?>&nome_cliente=<?php echo base64_encode($row->TXT_RAZAO_CLI)?>">Histórico de OS</a> -->
                    </div>
                </div>
            </td>
          </tr>
          <?php } ?>
        </table>
      </td>
    </tr>
  </table>
</form>
<script>
$(document).ready(function(){
  $('[data-toggle="popover"]').popover();   
});
</script>
</body>
</html>
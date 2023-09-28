<?php 
//verificacao se equipamento possui OS em garantia
  include "conexao.php";
  
 $valor = base64_decode($_GET['id_fr']);
 $nome_cliente = base64_decode($_GET['nome_cliente']);

 $iniciogarantia = date('Y-m-d');

    $sql = $con->prepare("SELECT * FROM TBL_ORDEMSERVICO_OS WHERE TBL_FROTA_FR_NUM_ID_FR = '$valor' and DTA_FIMGARANTIA_OS >= '$iniciogarantia'");
    $sql->execute();
    if($sql->rowCount()>0){ ?> 
          <div class="alert alert-danger" role="alert">
              Equipamento tem Ordem de Serviço em garantia, favor verificar!
          </div>
    <?php }

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<body>

<?php     
    $id_fr = $_GET["id_fr"]; 
    $id_cliente_fr = $_GET["id_cliente_fr"];     
?>

<form name="ordemservico" action="processa-os.php?acao=cadastrar" method="post" onSubmit="return validaForm()">
<INPUT TYPE="hidden" NAME="id_fr" VALUE="<?php echo"$id_fr" ?>" />
<INPUT TYPE="hidden" NAME="id_cliente_fr" VALUE="<?php echo"$id_cliente_fr" ?>" />

<table class="table responsive">
	<tr>
	    <td> <?php include "inicial.php"?></td>
	</tr>
	<tr>
		<td><legend class="p-4 table-primary">Nova Ordem de Servico<legend></td>
	</tr>
</table>
<table class="table">
<tr>
    <td>
        <div class="form-row g-3">
            <div class="form-group form-group-lg col-md-3 col-sm-6"><label for="tipo_os">Tipo</label>
                <select name="tipo_os" id="tipo_os" class="form-control" required title="INFORME O TIPO DA ORDEM DE SERVICO">
                <option value="S">Selecione..</option>
                <option value="PADRAO">PADRAO</option>
                <option value="GARANTIA">GARANTIA</option>
                </select>
            </div>  
            
            <div class="form-group  col-md-3 col-sm-6"><label for="km">KM Atual</label>
                <input class="form-control input-lg" name="km" type="number" id="km" required="required" title="INFORME O KM ATUAL DA FROTA" />
            </div> 

            <div class="form-group  col-md-6 col-sm-6"><label for="nomeclient">Cliente</label>
                <input class="form-control input-lg" name="km" type="text"  value="<?php echo $nome_cliente ?>" readonly="true" title="NOME DO CLIENTE" /> 
            </DIV>

            <div class="form-group  col-md-9 col-sm-6"><label for="dadosgerais">Dados Gerais Frota</label>
                <input class="form-control input-lg" name="dadosgerais" type="text" id="dadosgerais" title="CAMPO CHECKLIST DA FROTA" />
            </div> 

            <div class="form-group  col-md-3 col-sm-6"><label for="previsao">Previsao</label>
                <input class="form-control input-lg" name="previsao" type="date" id="previsao" title="SELECIONE PREVISAO DE TERMINO" />
            </div>
        
            <div class="form-group col-md-12 col-sm-12"><label for="solicitacoes">Solicitacoes</label>
                <textarea name="solicitacoes" id="solicitacoes" class="form-control" required="required" cols="120" rows="3" title="INFORME A SOLICITACAO DO CLIENTE"></textarea> 
            </div>  
          
            <div class="form-group col-md-2">
                <input type="submit" name="registrar"  value="Registrar Dados" class="btn btn-outline-primary" />
            </div>
        </div>      
    </td>
</tr>
</table>
</form>
    <script type="text/javascript" src="javascript/cadastro_os.js"></script>
</body>
</html>
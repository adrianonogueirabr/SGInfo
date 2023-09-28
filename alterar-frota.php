<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
 <title>SGOFIC - Sistema de Gestão de Oficina 🚚🚕</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <meta name="author" content="Adriano Nogueira - Desenvolvedor">
   <meta content= "SGOFIC - SISTEMA DE GESTÃO DE OFICINAS" name="description">
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 </head>
<?php 
//recebe o codigo do cliente para adcionar ao equipamento
  include "conexao.php";

  $id = filter_input(INPUT_GET,"id",FILTER_SANITIZE_STRING);
  $res = $con->prepare("SELECT * FROM TBL_FROTA_FR WHERE NUM_ID_FR = '$id'");
  $res->execute();

  while ($row = $res->fetch(PDO::FETCH_OBJ)){ 

?>
<body>
<form name="equipamento" action="processa-frota.php?id=<?php echo $id ?>&acao=salvar" method="post">
<table  width="100%" class="table responsive">
		<tr>
			<td> <?php include "inicial.php"?> </td>
		</tr>
    <tr>
			<td><legend class="p-4 table-primary">Alterar dados de Frota</legend></td>
		</tr>
  </table>
<table class="table">
    <tr>
          <td>
            <div class="form-row">
            <div class="form-group form-group-lg col-md-4 col-sm-6">
                  <span id="msgAlertaTipo"></span>
                  <label for="tipo">Tipo </label> 
                  <select id="tipo" class="form-control" required="required" onfocus="listarTipo()" name="tipo">
                  <option value="" selected>SELECIONE</option></select>
            </div>

            <div class="form-group form-group-lg col-md-4 col-sm-6">
                  <span id="msgAlertaMarca"></span>
                  <label for="marca">Marca</label> 
                  <select id="marca" class="form-control" required="required" onfocus="listarMarca()" name="marca">
                  <option value="" selected>SELECIONE</option></select>
            </div>

            <div class="form-group form-group-lg col-md-4 col-sm-6">
                  <span id="msgAlertaModelo"></span>
                  <label for="modelo">Modelo</label> 
                  <select id="modelo" class="form-control" required="required" onfocus="listarModelo()" name="modelo">
                  <option value="" selected>SELECIONE</option></select>
            </div>
                  
            <div class="form-group form-group-lg col-md-4 col-sm-6">
                  <span id="msgAlertaCor"></span>
                  <label for="cor">Cor</label> 
                  <select id="cor" class="form-control" required="required" onfocus="listarCor()" name="cor">
                  <option value="" selected>SELECIONE</option></select>
            </div>
            
            <input name="cliente" hidden="" type="text" id="cliente" value="<?php echo $idcliente ?>" />

            <div class="form-group  col-md-4 col-sm-6"><label for="ano">Ano</label>
              <input class="form-control input-lg" name="ano" type="number" id="ano" value="<?php echo $row->NUM_ANO_FR ?>" title="INFORME O ANO DA FROTA" />
            </div>

            <input name="cliente" hidden="" type="text" id="cliente" value="<?php echo $idcliente ?>" />

            <div class="form-group  col-md-4 col-sm-6"><label for="ano">Placa</label>
              <input class="form-control input-lg" name="placa" type="text" value="<?php echo $row->TXT_PLACA_FR ?>" id="placa" title="INFORME A PLACA DA FROTA" />
            </div>

            <div class="form-group  col-md-4 col-sm-6"><label for="chassi">Chassi*</label>
              <input class="form-control input-lg" name="chassi" type="text" id="chassi" value="<?php echo $row->TXT_CHASSI_FR ?>" required="required" title="INFORME O CHASSI DA FROTA" />
            </div>

            <div class="form-group form-group-lg col-md-4 col-sm-6"><label for="combustivel">Combustivel</label>
                  <select name="combustivel" id="combustivel" class="form-control" required="required">
                  <option value="E">Selecione..</option>
                  <option value="GASOLINA">GASOLINA</option>
                  <option value="DIESEL">DIESEL</option>
                  <option value="FLEX">FLEX</option>
                  <option value="ALCOOL">ALCOOL</option>
              </select>
            </div>

            <div class="form-group form-group-lg col-md-4 col-sm-6"><label for="motorizacao">Motorizacao</label>
                  <select name="motorizacao" id="motorizacao" class="form-control" value="<?php echo $row->TXT_MOTORIZACAO_FR ?>" required="required">
                  <option value="E">Selecione..</option>
                  <option value="1.0">1.0</option>
                  <option value="1.5">1.5</option>
                  <option value="1.8">1.8</option>
                  <option value="2.0">2.0</option>
              </select>
            </div>

            <div class="form-group  col-md-4 col-sm-6"><label for="ano">Registro</label>
              <input class="form-control input-lg"  type="text" value="<?php echo $row->DTH_REGISTRO_FR ?>"  readonly title="DATA E HORA DE CADASTRO DA FROTA" />
            </div>

            <div class="form-group  col-md-4 col-sm-6"><label for="ano">Ultima Alteracao</label>
              <input class="form-control input-lg"  type="text" value="<?php echo $row->DTH_ALTERACAO_FR ?>" readonly title="DATA E HORA DA ALTERACAO DO REGISTRO" />
            </div>

            <div class="form-group form-group-lg col-md-4 col-sm-6"><label for="combustivel">Ativo</label>
                  <select  id="ativo" name="ativo" class="form-control" required="required">
                  <option value="SIM">SIM</option>
                  <option value="NAO">NAO</option>
              </select>
            </div>
              
            <div class="form-group col-md-2 col-sm-12">
                <input type="submit" name="Alterar Dados"  value="Salvar Dados" class="btn btn-outline-danger"  />
            </div>

            <?php } ?>
          </td>
    </tr>
</table>
</form>
  <script type="text/javascript" src="javascript/cadastro_frota.js"></script>
</body>
</html>
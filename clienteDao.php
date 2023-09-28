<?php

include "conexao.php";
require_once 'contratoManutencao.php';

class ClienteDao{

    public function buscarCliente($id){
        try{
            include "conexao.php";
            require_once 'contratoManutencao.php';

            $sql = $con->prepare("SELECT * FROM TBL_CLIENTE_CLI WHERE NUM_ID_CLI = ?");
            $sql->bindValue(1,$id);

            if($sql->execute()){
                if($sql->rowCount()>0){
                    return "OK";
                }else{
                    echo "Cliente nao cadastrado!"; 
                }               
            }
        }catch(PDOexception $e){
            return 'error'.$e->getMessage();
        }
    }
}

?>
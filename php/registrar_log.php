<?php
    require 'banco.php';

    if (!isset($_GET['num_registros'])){
        echo 'Erro! Informações faltando.';
        exit();
    }
    
    $num_registros = $_GET['num_registros'];

    $sql = "INSERT INTO logs (numeroregistros)
            VALUES (:num_registros)";

    $qry = $con->prepare($sql);
    $qry->bindParam(':num_registros', $num_registros, PDO::PARAM_STR);
    $qry->execute();

    $num = $qry->rowCount();
    echo $num;

?>
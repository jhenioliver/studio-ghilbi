<?php
    require 'banco.php';

    if (!isset($_GET['id_filme'])){
        echo 'Erro! Dados faltando';
        exit();
    }
    
    $id_filme = $_GET['id_filme'];

    $sql = "DELETE FROM filmes
            WHERE id_filme = :id_filme";

    $qry = $con->prepare($sql);
    $qry->bindParam(':id_filme', $id_filme, PDO::PARAM_INT);

    $qry->execute();

    $num = $qry->rowCount();
    echo $num;

?>
<?php
    require 'banco.php';

    $sql = "SELECT * FROM filmes
            ORDER BY id_filme";
    $qry = $con->prepare($sql);
    $qry->execute();

    $registros = $qry->fetchAll(PDO::FETCH_OBJ);
    echo json_encode($registros); //transforma no formato json

?>
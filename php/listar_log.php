<?php
    require 'banco.php';

    $sql = "SELECT * FROM logs
            ORDER BY idlog";
    $qry = $con->prepare($sql);
    $qry->execute();

    $registros = $qry->fetchAll(PDO::FETCH_OBJ);
    echo json_encode($registros);

?>
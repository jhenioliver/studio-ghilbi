<?php
    require 'banco.php';

    $sql = "DELETE FROM filmes";
    $qry = $con->prepare($sql);
    $qry->execute();

    $registros = $qry->fetchAll(PDO::FETCH_OBJ);
    echo json_encode($registros);

?>
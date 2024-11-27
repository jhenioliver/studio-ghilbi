<?php
    require 'banco.php';

    if (!isset($_GET['titulo']) || !isset($_GET['titulo_original']) || !isset($_GET['descricao']) || !isset($_GET['diretor']) || !isset($_GET['lancamento'])){
        echo 'Erro! Informações faltando.';
        exit();
    }
    
    $titulo = $_GET['titulo'];
    $titulo_original = $_GET['titulo_original'];
    $descricao = $_GET['descricao'];
    $diretor = $_GET['diretor'];
    $lancamento = $_GET['lancamento'];

    $sql = "INSERT INTO filmes (titulo, titulo_original, descricao, diretor, ano_lancamento)
            VALUES (:titulo, :titulo_original, :descricao, :diretor, :lancamento)";

    $qry = $con->prepare($sql);
    $qry->bindParam(':titulo', $titulo, PDO::PARAM_STR);
    $qry->bindParam(':titulo_original', $titulo_original, PDO::PARAM_STR);
    $qry->bindParam(':descricao', $descricao, PDO::PARAM_STR);
    $qry->bindParam(':diretor', $diretor, PDO::PARAM_STR);
    $qry->bindParam(':lancamento', $lancamento, PDO::PARAM_INT);
    $qry->execute();

    $num = $qry->rowCount();
    echo $num;

?>
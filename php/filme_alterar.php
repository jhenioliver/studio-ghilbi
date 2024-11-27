<?php
    require 'banco.php';

    if (!isset($_GET['id_filme']) || !isset($_GET['titulo']) || !isset($_GET['titulo_original']) || !isset($_GET['descricao']) || !isset($_GET['diretor']) || !isset($_GET['lancamento'])){
        echo 'Erro! Informações faltando.';
        exit();
    }
    
    $id_filme = $_GET['id_filme'];
    $titulo = $_GET['titulo'];
    $titulo_original = $_GET['titulo_original'];
    $descricao = $_GET['descricao'];
    $diretor = $_GET['diretor'];
    $lancamento = $_GET['lancamento'];

    $sql = "UPDATE filmes
            SET titulo = :titulo, titulo_original = :titulo_original, descricao = :descricao, diretor = :diretor, ano_lancamento = :lancamento
            WHERE id_filme = :id_filme";

    $qry = $con->prepare($sql);
    $qry->bindParam(':id_filme', $id_filme, PDO::PARAM_INT);
    $qry->bindParam(':titulo', $titulo, PDO::PARAM_STR);
    $qry->bindParam(':titulo_original', $titulo_original, PDO::PARAM_STR);
    $qry->bindParam(':descricao', $descricao, PDO::PARAM_STR);
    $qry->bindParam(':diretor', $diretor, PDO::PARAM_STR);
    $qry->bindParam(':lancamento', $lancamento, PDO::PARAM_INT);
    $qry->execute();

    $num = $qry->rowCount();
    echo $num;

?>
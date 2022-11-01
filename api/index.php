<?php 
//Inclui o arquivo de conexão com o banco de dados
include_once "./conexao.php";

//Buscar no banco de dados os produtos
$query_produtos = "SELECT id, nome FROM produtos";
//$query_produtos = "SELECT id, nome FROM produtos WHERE id = 100";

//Preparar a QUERY
$result_produtos = $conn->prepare($query_produtos);


//Executar a QUERY com PDO
$result_produtos->execute();

if(($result_produtos) and ($result_produtos->rowCount() != 0)){
    $produtos = $result_produtos->fetchAll();

    var_dump($produtos);
}else{
    echo "Erro: nenhum produto encontrado!";
}







?>
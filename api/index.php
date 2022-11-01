<?php 
//Inclui o arquivo de conexão com o banco de dados
include_once "./conexao.php";

//Criar o cabeçalho para retornar JSON
header("Content-type: application/json; charset=utf-8");


//Buscar no banco de dados os produtos
$query_produtos = "SELECT id, nome FROM produtos";
//$query_produtos = "SELECT id, nome FROM produtos WHERE id = 100";

//Preparar a QUERY
$result_produtos = $conn->prepare($query_produtos);


//Executar a QUERY com PDO
$result_produtos->execute();

if(($result_produtos) and ($result_produtos->rowCount() != 0)){
    //Ler os registros retornado do banco de dados
    $produtos = $result_produtos->fetchAll();

    //retornar os dados em formato JSON
    echo json_encode(['status' => 200, 'dados' => $produtos]);
}else{
    //retornar os dados em formato JSON
    echo json_encode(['status' => 404, 'msg' => "Erro: nenhum produto encontrado!"]);
}







?>
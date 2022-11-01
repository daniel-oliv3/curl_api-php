<?php 
/*Conexão com o banco de dados*/
$host = "localhost";
$user = "root";
$pass = "";
$dbname = "base_dados_clk";
$port = "3306";

try {
    //Conexão com a porta
    //$conn = new PDO("mysql:host=$host;port=$port;dbname=" . $dbname, $user, $pass);

    //Conexão sem a porta
    $conn = new PDO("mysql:host=$host;dbname=" . $dbname, $user, $pass);

    //echo "Conexão com o bando de dados realizada com sucesso!";
}catch(PDOException $err){
    die("Erro: conexão com o bando de dados não foi realizada! Erro gerado " . $getMessage());
}



// http://localhost/curl_api-php/api/conexao.php
// http://localhost/curl_api-php/api/index.php















?>
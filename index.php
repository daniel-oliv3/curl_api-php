<?php 


// URL da API
$url = "http://localhost/curl_api-php/api/index.php";

// A função curl_init() inicializa uma nova sessão 
$ch = curl_init();

// Utilizado CURLOPT_RETURNTRANSFER para esperar a resposta da URL
curl_setopt($ch, CURLOPT_RETURNTRANSFER, $url);

// Enviar a requisição
curl_setopt($ch, CURLOPT_URL, $url);

// Executar solicitação de curl
$dados = curl_exec($ch);

// Fecha uma sessão cURL e libera todos os recursos
curl_close($ch);

// Imprimir o XML
//echo $dados;

// Transformar o conteúdo XML em Objeto
$xml = simplexml_load_string($dados);

// Acessa o IF quando encontrar produto
if (isset($xml->produto)) {

    // Percorre todos os registros de vendas
    foreach ($xml->produto as $produto) :

        // Imprimir as informações do XML
        echo "Id do produto: " . $produto->id . "<br>";
        echo "Nome do produto: " . $produto->nome . "<br>";

        echo "<hr>";
    endforeach;
}

// Acessa o IF quando encontrar erro
if (isset($xml->erro)) {

    // Imprimir a mensagem de erro
    echo $xml->erro;
}




//http://localhost/curl_api-php/api/index.php
//http://localhost/curl_api-php/index.php


?>
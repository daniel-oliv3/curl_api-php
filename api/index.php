<?php 

// Incluir o arquivo com a conexao com banco de dados
include_once './conexao.php';

// Criar o cabeçalho para retornar XML
header("Content-type: text/xml; charset=utf-8");

// SimpleXMLElement função do PHP que retorna string XML
$produtosXML = new SimpleXMLElement("<produtos></produtos>");

// Buscar no banco de dados os produtos
//$query_produtos = "SELECT id, nome FROM produtos WHERE id = 1000";
$query_produtos = "SELECT id, nome FROM produtos";

// Preparar a QUERY
$result_produtos = $conn->prepare($query_produtos);

// Executar a QUERY com PDO
$result_produtos->execute();

// Acessa o IF quando encontrou produto no banco de dados
if (($result_produtos) and ($result_produtos->rowCount() != 0)) {

    // Ler os registros retornado do banco de dados
    while ($row_produto = $result_produtos->fetch(PDO::FETCH_ASSOC)) {
        //var_dump($row_produto);
        extract($row_produto);

        // Acrescentar TAG filha <produto> no XML para colocar os dados do produto
        $produtoXML = $produtosXML->addChild('produto');

        // Acrescentar as tag no XML com os dados do produto
        $produtoXML->addChild('id', $id);
        $produtoXML->addChild('nome', $nome);
    }

    // Imprimir o XML
    echo $produtosXML->asXML();

    // Pausar o processamento
    exit();
} else {
    // Criar a TAG filha <erro></erro> com a mensagem de erro
    $produtosXML->addChild('erro', "Erro: Nenhum produto encontrado!");

    // Imprimir o XML
    echo $produtosXML->asXML();

    // Pausar o processamento
    exit();
}





?>
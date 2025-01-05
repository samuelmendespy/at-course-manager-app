<?php
header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    echo json_encode(["message" => "API está funcionando!"]);
} else {
    http_response_code(405);
    echo json_encode(["error" => "Método não permitido"]);
}

?>
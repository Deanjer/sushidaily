<?php

declare(strict_types=1);
header("Access-Control-Allow-Origin: *");
spl_autoload_register(function ($class){
    require __DIR__ . "/src/$class.php";
});
set_error_handler("ErrorHandler::handleError");
set_exception_handler("ErrorHandler::handleException");

// header('Content-Type: application/json; charset=utf-8');




$parts = explode("/", $_SERVER['REQUEST_URI']);

if ($parts[4] != 'products'){
    http_response_code(404);
    echo "Error 404 Not Found";
    exit;
}

$name= $parts[5] ?? null;

$database = new Database('localhost', 'sushi_daily', 'root', '');

$gateway = new ProductGateway($database);

$database->getConnection();

$controller = new ProductController($gateway);

$controller->processRequest($_SERVER['REQUEST_METHOD'], $name);



?>
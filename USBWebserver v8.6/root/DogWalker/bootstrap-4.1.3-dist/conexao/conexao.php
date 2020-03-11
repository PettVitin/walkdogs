<?php

ini_set('display_erros', true);
error_reporting(E_ALL);

$servidor = 'localhost';
$usuario = 'root';
$senha = 'usbw';
$db = 'walkdos';

if($conecta = mysqli_connect($servidor, $usuario, $senha, $db)){
    // echo "Banco de dados conectado....";
}else{
    echo "Erro: " .mysqli_error();
}

?>
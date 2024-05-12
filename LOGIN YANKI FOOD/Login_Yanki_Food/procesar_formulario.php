<?php

$servername = "localhost:3308";
$username = "root";
$password = "perroo";
$database = "tp2";

$scon = new mysqli($servername, $username, $password, $database);

if ($scon->connect_error) {
    die("Error en la conexión a la base de datos: " . $scon->connect_error);
}

$nombre_usuario = $_POST['nombre_usuario'];
$contrasena = $_POST['contrasena'];

$sql = "INSERT INTO usu (nombre_usuario, contrasena) 
VALUES ('$nombre_usuario','$contrasena')";

if (mysqli_query($scon, $sql)) {
    
    if ($scon->affected_rows > 0) {
        echo "Registro EXITOSO. Gracias por registrarte!!!.";
    } else {
        echo "ERROR AL REGISTRAR - Por favor, intenta de nuevo.";
    }
} else {
    echo "Error en la preparación de la consulta SQL.";
}

$scon->close();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
</head>
<body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></>
    <link rel="stylesheet" href="index.css">
<center><button onclick="window.location.href='index.html'">Volver al INICIO</button></center>
</body>
</html>
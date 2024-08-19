<?php
// Conexión a la base de datos
$host = 'localhost';
$user = 'tu_usuario';
$pass = 'tu_contraseña';
$dbname = 'juegos_olimpicos';

$conn = new mysqli($host, $user, $pass, $dbname);

if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

// Consultar los datos de la tabla
$sql = "SELECT pais, oro, plata, bronce FROM medallas";
$result = $conn->query($sql);

$medallas = [];

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $medallas[] = $row;
    }
}

$conn->close();

// Devolver datos en formato JSON
header('Content-Type: application/json');
echo json_encode($medallas);
?>


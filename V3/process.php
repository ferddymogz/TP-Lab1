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

// Recibir los datos del formulario
$pais = $_POST['country'];
$oro = intval($_POST['gold']);
$plata = intval($_POST['silver']);
$bronce = intval($_POST['bronze']);

// Insertar los datos en la base de datos
$sql = "INSERT INTO medallas (pais, oro, plata, bronce) VALUES ('$pais', $oro, $plata, $bronce)";

$response = [];

if ($conn->query($sql) === TRUE) {
    $response['success'] = true;
} else {
    $response['success'] = false;
    $response['error'] = $conn->error;
}

$conn->close();

// Devolver respuesta en formato JSON
header('Content-Type: application/json');
echo json_encode($response);
?>


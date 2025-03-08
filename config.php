<?php
$servername = "localhost";
$username = "yourusername";
$password = "yourpassword";
$database = "yourdatabasename";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>

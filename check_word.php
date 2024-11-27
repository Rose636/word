<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "word_db";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
}

$german = $_POST['german'];
$chinese = $_POST['chinese'];

$sql = "SELECT * FROM words WHERE chinese='$chinese' AND (german_singular='$german' OR german_plural='$german')";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "正确";
} else {
    echo "错误";
}
$conn->close();
?>

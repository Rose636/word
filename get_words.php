<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "word_db";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
}

$sql = "SELECT * FROM words";
$result = $conn->query($sql);

$words = array();
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $words[] = $row;
    }
}
$conn->close();

echo json_encode($words);
?>

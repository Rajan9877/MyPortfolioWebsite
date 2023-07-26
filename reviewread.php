<?php
// Assuming you have a database connection established already
// Replace 'your_db_host', 'your_db_username', 'your_db_password', and 'your_db_name' with your actual database credentials

$host = 'localhost';
$username = 'root';
$password = '';
$dbname = 'portfolio';

// Create a database connection
$conn = new mysqli($host, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// $blogid = $_GET['blogid'];
// Fetch data from the database
$sql = "SELECT * FROM `review` ORDER BY `id` DESC LIMIT 3";
$result = $conn->query($sql);

// Prepare the data in an associative array
$data = array();
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}

// Close the database connection
$conn->close();

// Send the data as JSON
header('Content-Type: application/json');
echo json_encode($data);
?>

<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "portfolio";

$conn = mysqli_connect($servername, $username, $password, $database);

if(!$conn){
    die("Connection failed: ".mysqli_connect_error());
}

$name = $_POST['name'];
$email = $_POST['email'];
$comment = $_POST['comment'];
$date = date("Y-m-d H:i:s");

$sql = "INSERT INTO `comment` (`name`, `email`, `comment`, `date`) VALUES ('$name', '$email', '$comment', '$date')";
$result = mysqli_query($conn, $sql);
if($result){
    echo('<span class="text-dark">Comment Posted Successfully!</span>');
}else{
    echo('<span class="text-danger">
    Comment Posted Failure!
  </span>');
}

?>
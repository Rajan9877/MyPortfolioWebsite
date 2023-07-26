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
$blogid = $_POST['blogid'];

if($name == '' || $email == '' || $comment == ''){
    echo'<span class="text-danger">
    All fields are required!
  </span>';
    return;
}

$sql = "INSERT INTO `comments` (`name`, `email`, `comment`, `date`, `blogid`) VALUES ('$name', '$email', '$comment', '$date', '$blogid')";
$result = mysqli_query($conn, $sql);
if($result){
    echo('<span class="text-dark">Comment Posted Successfully!</span>');
}else{
    echo('<span class="text-danger">
    Comment Posted Failure!
  </span>');
}

?>
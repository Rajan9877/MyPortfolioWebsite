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
$subject = $_POST['subject'];
$message = $_POST['message'];

// if($name === '' || $email === '' || $subject ==='' || $message === ''){
//     echo'<span class="text-danger">
//     All fields are required!
//   </span>';
//     return;
// }

$sql = "INSERT INTO `message` (`name`, `email`, `subject`, `message`) VALUES ('$name', '$email', '$subject', '$message')";
$result = mysqli_query($conn, $sql);
if($result){
    echo('<span class="text-dark">Message Sent Successfully!</span>');
}else{
    echo('<span class="text-danger">
    Message Sent Failed!
  </span>');
}

?>
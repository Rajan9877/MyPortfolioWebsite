<?php

$valid_extensions = array('jpeg', 'jpg', 'png', 'gif', 'bmp' , 'pdf' , 'doc' , 'ppt'); // valid extensions
$path = 'img/'; // upload directory

if(!empty($_POST['name']) || !empty($_POST['profession']) || !empty($_POST['review']) || $_FILES['image'])
{
$img = $_FILES['image']['name'];
$tmp = $_FILES['image']['tmp_name'];

// get uploaded file's extension
$ext = strtolower(pathinfo($img, PATHINFO_EXTENSION));

// can upload same image using rand function
$final_image = rand(1000,1000000).$img;

// check's valid format
if(in_array($ext, $valid_extensions)) 
{ 
$path = $path.strtolower($final_image); 

if(move_uploaded_file($tmp,$path)) 
{
echo "<img src='$path' />";
$name = $_POST['name'];
$profession = $_POST['profession'];
$review = $_POST['review'];


//include database configuration file
$dbHost = 'localhost';
$dbUsername = 'root';
$dbPassword = '';
$dbName = 'portfolio';
//Create connection and select DB
$db = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);
if($db->connect_error){
   die("Unable to connect database: " . $db->connect_error);
}

//insert form data in the database
$insert = $db->query("INSERT review (name,profession,review,image) VALUES ('".$name."','".$profession."','".$review."','".$path."')");

//echo $insert?'ok':'err';
}
} 
else 
{
echo 'invalid';
}
}
?>
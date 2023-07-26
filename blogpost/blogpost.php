<?php
session_start();
// error_reporting(0);
if(!isset($_SESSION["email"])){
    header("Location: index.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <title>Post Blog - Rajan Joriya</title>
    <style>
        *{
            margin: 0px;
            padding: 0px;
        }
        .container{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container h1{
            margin-bottom: 15px;
            color: #0BCEAF;
        }
        .container form{
            display: flex;
            flex-direction: column;
        }
        .container form input{
            margin-top: 5px;
            padding: 15px 35px;
            border-radius: 50px;
            outline-color: #0BCEAF;
            color: #0BCEAF;
            border: 2px solid #0BCEAF;
        }
        .container form input::-webkit-file-upload-button{
            color: white;
            border: 2px solid #0BCEAF;
            background-color: #0BCEAF;
            cursor: pointer;
            transition: all 0.5s;
            padding: 0px 15px;
            border-radius: 50px;
        }
        .container form input::-webkit-file-upload-button:hover{
            color: #0BCEAF;
            background-color: transparent;
        }
        .container form textarea{
            margin-top: 5px;
            padding: 15px 35px;
            border-radius: 50px;
            outline-color: #0BCEAF;
            color: #0BCEAF;
            border: 2px solid #0BCEAF;
        }
        .container form button{
            margin-top: 15px;
            padding: 7px 35px;
            border-radius: 50px;
            cursor: pointer;
            background-color: #0BCEAF;
            border: 2px solid #0BCEAF;
            color: white;
            transition: all 0.5s;
        }
        .container form button:hover{
            background-color: transparent;
            color: #0BCEAF;
        }
        .container a{
            color: #0BCEAF;
            text-decoration: none;
        }
        .container a:hover{
            color: black;
        }
    </style>
</head>
<body>
    <div class="container">
        <a href="logout.php">Logout</a>
        <h1>Post Blog</h1>
        <?php
        include('config.php');

        if(isset($_POST["submit"])){
        $folder = "img/";
        $filename = $_FILES["img"]["name"];
        $tempname = $_FILES["img"]["tmp_name"];
        $destination = $folder . $filename;
        $title = mysqli_real_escape_string($conn, $_POST["title"]); // Sanitize user input
        $description = mysqli_real_escape_string($conn, $_POST["description"]); // Sanitize user input
        
        if($title == '' || $description == '' || $filename == ''){
            echo'<p class="text-danger">
            All fields are required!
          </p>';
            return;
        }
        // Verify the uploaded file is an image (you may add additional checks like file size and type)
        if (getimagesize($tempname) === false) {
        echo("<p style='color: red;'>Invalid file format. Only images are allowed.</p>");
        } else {
        $sql = "INSERT INTO `blogpost` (`title`, `description`, `img`) VALUES ('$title', '$description', '$filename')";
        $result = mysqli_query($conn, $sql);
        if($result){
            move_uploaded_file($tempname, $destination);
            echo("<p style='color: green;'>Your blog has been posted successfully!</p>");
        } else {
            echo("<p style='color: red;'>Error: " . mysqli_error($conn) . "</p>"); // Handle database query errors
        }
        }
        }
        ?>

        <form action="" method="post" enctype="multipart/form-data">
            <input type="text" placeholder="Title" name="title" id="title">
            <textarea name="description" placeholder="Description" id="description" cols="30" rows="10"></textarea>
            <input type="file" name="img">
            <button name="submit">Submit</button>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>
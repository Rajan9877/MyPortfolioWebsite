<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "portfolio";

$conn = mysqli_connect($servername, $username, $password, $database);

if(!$conn){
    die("Connection failed: ".mysqli_connect_error());
}

$id = intval($_GET["id"]);

$sql = "SELECT * FROM `blogpost` WHERE id = $id";
$result = mysqli_query($conn, $sql);
if(mysqli_num_rows($result)>0){
    while($row = mysqli_fetch_assoc($result)) {
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
       <!-- Font Awesome -->
       <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <title><?php echo $row["title"] ?> - Rajan Joriya</title>
    <style>
        .btn:hover{
            color: black !important;
        }
        
        .left{
            width: 20%;
            height: 20vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .right{
            width: 80%;
            height: 20vh;
        }
        .comment-box{
            display: flex;
        }
    </style>
</head>
<body>
    <!-- Navbar Start -->
    <nav class="navbar fixed-top shadow-sm navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-lg-5">
        <a href="" class="navbar-brand ml-lg-3">
            <h1 class="m-0 display-5" style="font-weight: bold;"><span style = "color: #0BCEAF;font-weight: bold;">Rajan </span>Joriya</h1>
        </a>
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
    </nav>
    <!-- Navbar End -->
    <div class="container" style="margin-top: 90px;">
<div class="card">
  <div class="card-header text-center" style="font-weight: bold;">
    Blog - Written By Rajan Joriya
  </div>
  <div class="card-body text-center">
    <h1 style="color: #0BCEAF;" class="card-title"><?php echo $row["title"];  ?></h1>
    <img class="my-2" src="blogpost/img/<?php echo $row["img"]; ?>" alt="Image" width="300px">
    <p class="card-text my-2"><?php echo $row["description"]; ?></p>
  </div>
</div>
</div>


<?php

}
}

?>

<div class="container my-3">
    <h3 style="color: #0BCEAF;">Comment : </h3>
<form id="contactForm" method="post">
    <div class="form-group">
      <label for="name" class="my-1">Name :</label>
      <input style="border-radius: 50px;" type="text" class="form-control" id="name" name="name" placeholder="Enter Your Name">
    </div>
  <div class="form-group">
    <label for="exampleInputEmail1" class="my-1">Email : </label>
    <input style="border-radius: 50px;" type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp" placeholder="Enter Your Email">
</div>
  <div class="form-group">
    <label for="comment" class="my-1">Comment : </label>
    <textarea style="border-radius: 50px; padding-top: 87px;" name="comment" rows="5" class="form-control" id="comment" placeholder="Enter Your Comment"></textarea>
</div>
  <button type="submit" style="background-color: #0BCEAF !important; border: 2px solid #0BCEAF; cursor: pointer; border-radius: 50px;" class="btn btn-primary my-2">Post Comment</button>
</form>
</div>

<div class="container">
    <h3>Comments()</h3>
    <hr>
    <div class="comment-box">
    <div class="left">
        <img src="img/user.png" alt="User" width="50px">
    </div>
    <div class="right">
    <div class="card text-center">
  <div class="card-header">
    <div><h5>Username</h5> Date</div>
    
  </div>
  <div class="card-body">
    <p class="card-text">Comment</p>
  </div>
</div>
    </div>
    </div>
</div>
    <!-- Footer Start -->
    <div class="container-fluid text-white mt-5 py-5 px-sm-3 px-md-5" style="background-color: #0BCEAF;">
        <div class="container text-center py-5">
            <div class="d-flex justify-content-center mb-4">
                <a style="border-radius: 50%;" class="btn btn-light btn-social mx-2" href="#"><i class="fab fa-twitter"></i></a>
                <a style="border-radius: 50%;" class="btn btn-light btn-social" href="#"><i class="fab fa-facebook-f"></i></a>
                <a style="border-radius: 50%;" class="btn btn-light btn-social mx-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                <a style="border-radius: 50%;" class="btn btn-light btn-social" href="#"><i class="fab fa-instagram"></i></a>
            </div>
            <div class="d-flex justify-content-center mb-3">
            &#128540; Follow Me &#128540;
            </div>
            <p class="m-0">&copy; <a class="text-white font-weight-bold" href="#">rajanjoriya.great-site.net</a>. All Rights Reserved. Designed by Rajan Joriya
            </p>
        </div>
    </div>
    <!-- Footer End -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
    <script>
         $(document).ready(function () {
  $("#contactForm").submit(function (event) {
    var formData = {
      name: $("#name").val(),
      email: $("#email").val(),
      subject: $("#comment").val(),
    };

    $.ajax({
      type: "POST",
      url: "comment.php",
      data: formData,
    }).done(function (data) {
        $("#contactForm").trigger("reset");
        $("#formMessage").html(data)
        $("#formMessage").fadeIn();
        setTimeout(function () {
            $("#formMessage").fadeOut();
        }, 3000);
    });

    event.preventDefault();
  });
});
    </script>
</body>
</html>
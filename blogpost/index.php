<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <title>Login Admin</title>
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
        .container h2{
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
    </style>
</head>
<body>
    <div class="container">
        <h2>Admin Login</h2>
        <?php
        include('config.php');

        if(isset($_POST['submit'])){
            $email = $_POST["email"];
            $password = $_POST["password"];
            $sql = "SELECT * FROM `admin`";
            $result = mysqli_query($conn,$sql);
            if (mysqli_num_rows($result) > 0) {
                while($row = mysqli_fetch_assoc($result)) {
                    if($row["email"] == $email && $row["password"] == $password){
                        $_SESSION["email"] = $email;
                        header("Location: blogpost.php");
                    }
                    else{
                        echo "<p style='color: red; margin-bottom: 15px; text-align: center;'>Invalid Credentials!</p>";
                    }
                }
              }
        }

        ?>
        <form action="" method="post">
            <input type="email" placeholder="Email" name="email" id="email">
            <input type="password" placeholder="Password" name="password" id="password">
            <button name="submit">Submit</button>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>
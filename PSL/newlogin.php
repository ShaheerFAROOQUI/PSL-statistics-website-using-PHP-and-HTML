<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-image: url('index.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }

        .login {
            margin: auto;

            max-width: 500px;
        }

        .header {
            color: #454545;
            text-align: center;
            font-size: 200%;
        }

        .form {
            border: 10px solid #fff;
            background: #c1e010;
            box-shadow: 10px 10px 10px rgb(192, 201, 151);
            opacity: 90%;
        }

        .form h3 {
            text-align: left;
            margin-left: 40px;
            color: #fff;
            
        }

        .form {
            box-sizing:border-box;
            padding-top: 15px;
            padding-bottom: 5%;            
            text-align: center;
            
        }

        input[type="text"], input[type="password"] {
            max-width: 400px;
            width: 70%;
            height: 30px;
            border-radius: 5px;
            padding-left: 10px;
        }

        .form input[type="button"] {
            margin-top: 20px;
            height: 30px;
            width: 100px;
            background: #fff;
            color: slategrey;
            text-transform: uppercase;
            cursor: pointer;
        }

        .sign-up {
            color: #f2f2f2;
           font-weight: bolder;
            margin-left: 70%;
            cursor: pointer;            
            text-transform: uppercase;
            
        }
      
        
    </style>
</head>

<body>

    <div class="login">
        <div class="header">
          <h1>User Login</h1>
        </div>
        <form method="post" class="form">
          <h3>Username:</h3>
          <input type="text" name="uname" placeholder="Username"/><br>
          <h3>Password:</h3>
          <input type="password" name="psw" placeholder="Password"/>
          <br>
          <button id="back" name="submit1" style="alignment=center" >LOG IN</button>
          <br>
          <button id="back" style="alignment=center" ><a href="create.php">SIGN UP</a></button>
          <br>
       
        </form>
      </div>

<?php

if(isset($_POST["submit1"])){

    session_start();

    $con = mysqli_connect("localhost", "vk", "123", "cricket") or die(mysqli_error($con));

    $username = $_POST['uname'];
    $password = $_POST['psw'];
    $_SESSION['user'] = $username;


    $check_u = "select * from login where username ='$username'";
    $res_u = mysqli_query($con,$check_u) or die(mysqli_error($con));
    $check_p = "select * from login where username = '$username' and password = '$password'";
    $res_p = mysqli_query($con,$check_p) or die(mysqli_error($con));

    if(mysqli_num_rows($res_u)==0)
    {
      echo "<script type='text/javascript'>alert('Incorrect username!!');</script>";
      header("refresh: 0.01; url=newlogin.php");
    }

    if(mysqli_num_rows($res_p)==0)
    {
      echo "<script type='text/javascript'>alert('Incorrect password!!');</script>";
      header("refresh: 0.01; url=newlogin.php");
    }

    else
    {
     // echo "<script type='text/javascript'>alert('Logged in successfully!!');</script>";
      header("refresh: 0.01; url=user1st.html");
    }
}
?>


      
</body>
</html>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;background-repeat: no repeat;
  background-size: 100%;
}
form {border: 0px solid #f1f1f1;}
h2{font-size: 50px;
text-align:center; }
input[type=text], input[type=password],  input[type=EMAIL] {
    width: 20%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 10%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
</head>
<body background="1.jpg">
<h1 style="text-align:center;"><b>CREATE AN ACCOUNT</b></h1>
  <form method="post">
  <div class="imgcontainer">
   
  </div>

  <div class="container">
    <label for="uname" ><b> NEW USER:    </b></label>
    <input type="text" placeholder="Enter name" name="uname" required style="text-align:center;"><br><br>
    <label for="uname" ><b> ENTER EMAIL:</b></label>
    <input type="EMAIL" placeholder="Enter email" name="email" required style="text-align:center; width: 300px;height: 25px;"><br><br>
    <label for="uname" ><b> PASSWORD:    </b></label>
    <input type="password" placeholder="Enter password" name="psw" required style="text-align:center;"><br><br>
    <label for="uname" ><b>CONFIRM PASSWORD:</b></label>
    <input type="password" placeholder="Enter password" name="conpsw" required style="text-align:center;"><br><br>


   
    <button type="submit" name="submit" style="text-align:center;background-color:green;color:white;">SUBMIT</button><br><button1 style="float:center;" >Already have an Acoount<a href="create.php">login</a></button1>
   
  </div>


<?php

if(isset($_POST["submit"])){

  

    $con = mysqli_connect("localhost", "vk", "123", "cricket") or die(mysqli_error($con));

    $username = $_POST['uname'];
    $password = $_POST['psw'];
    $rp=$_POST['conpsw'];
      if($password==$rp){
    $check_u = "insert into login values('$username','$password')";
    
    //$check_p = "select * from admin where username = '$username' and password = '$password'";
    //$res_p = mysqli_query($con,$check_p) or die(mysqli_error($con));
      if(mysqli_query($con,$check_u)){
    //if(mysqli_num_rows($res_u)==0)
   // {
     // echo "<script type='text/javascript'>alert('Incorrect username!!');</script>";
     // header("refresh: 0.01; url=admin.html");
    

    //if(mysqli_num_rows($res_p)==0)
   // {
      echo "<script type='text/javascript'>alert('ACCOUNT CREATED!!');</script>";
      header("refresh: 0.01; url=newlogin.php");
    }

    else
    {
      echo "<script type='text/javascript'>alert(' ACCOUNT NOT CRETAED!!');</script>";
     header("refresh: 0.01; url=create.html");
    }
  }
  else
  {
     echo "<script type='text/javascript'>alert('PASSWORDS DIDN'T MATCH!!');</script>";
      header("refresh: 0.01; url=create.html");
  }

}
?>



</body>
</html>
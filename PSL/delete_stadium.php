<?php

    session_start();

    $con = mysqli_connect("localhost", "vk", "123", "cricket") or die(mysqli_error($con));

    $stadium_name=$_POST['stadium_name'];
    $query="Select * from stadiums where stadium_name='$stadium_name'";
    $res=mysqli_query($con,$query);
  
    $row=mysqli_fetch_assoc($res);
    $boardname=$row['board_name'];


    $q="DELETE from cricket_boards where board_name='$boardname'";
    $res=mysqli_query($con,$q);    


    $sql="DELETE from stadiums where stadium_name='$stadium_name'";
    if(mysqli_query($con,$sql))
    {
      $q="DELETE from cricket_boards where board_name='$boardname'";
    $res=mysqli_query($con,$q);    

       
        echo "<script type='text/javascript'>alert('Stadium deleted successfully!!');</script>";
      header("refresh: 0.01; url=deletestadium.html");
    
}
else{
    echo "error";
    header("refresh: 0.01; url=deletestadium.html");
    
}
?>    




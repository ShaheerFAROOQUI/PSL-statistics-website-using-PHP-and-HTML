<?php

    session_start();

    $con = mysqli_connect("localhost", "vk", "123", "cricket") or die(mysqli_error($con));

    $stadium_name=$_POST['stadium_name'];
    $board_name=$_POST['board_name'];
    $team=$_POST['team'];
    $capacity=$_POST['capacity'];
    $doi=$_POST['doi'];

   $query1="insert into cricket_boards(board_name,team) VALUES ('$board_name','$team')";
   $res1= mysqli_query($con,$query1);

    $query="insert into stadiums(stadium_name,board_name,team,capacity) values('$stadium_name','$board_name','$team','$capacity')";
    if(mysqli_query($con,$query))
    {
    	
      echo "<script type='text/javascript'>alert('STADIUM ADDED, NEW RECORD CREATED SUCCESSFULLY!!');</script>";
      header("refresh: 0.01; url=addstadium.html");
    }
    else
    {
        echo "<script type='text/javascript'>alert('ERROR');</script>";
        header("refresh: 0.01; url=addstadium.html");
        mysqli_error($con);
    }
    ?>
    
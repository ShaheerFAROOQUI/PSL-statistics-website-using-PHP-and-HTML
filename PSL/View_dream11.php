<?php
session_start();
                $servername = "localhost";
		$user = "vk"; // Mysql username
		$password = "123";	// Mysql Password

		$dbname = "cricket";	// database name
		 
		
		$con = new mysqli($servername, $user, $password, $dbname);


		 
		// Check connection
		if ($con->connect_error) {
		    die("onnection failed: " . $con->connect_error ."<br>");
		} 
		

?>



<html>
<body>
	<button style="background-color: "><a href="dream_11.php" style="color:">Back</a></button><div style="margin-top:10px; style : center" >
<style >
	table{
		border: 1px solid black;
	}
        
p {
align="center";
}

	tr{
		border: 1px solid black;
	}

h1{
color:red;
}
	th{
		border: 1px solid black;
	}
</style>




<?php
  
	
                 $ab = "select * from dream11";
                 $result = mysqli_query($con,$ab);
                 
                  while ($row1 = mysqli_fetch_row($result)) {
?>




<?php
                  $teamname = $row1[0];
                    
                  $que="select * from dream11";
                  $res=mysqli_query($con,$que);


                   while ($row=mysqli_fetch_assoc($res)) {

$p1 = $row['player1'];
$p2 = $row['player2'];
$p3 = $row['player3'];
$p4 = $row['player4'];
$p5 = $row['player5'];
$p6 = $row['player6'];
$p7 = $row['player7'];
$p8 = $row['player8'];
$p9 = $row['player9'];
$p10 = $row['player10'];
$p11 = $row['player11'];

?>
<table width="40%"; align="center"><tr><th>
<?php
                           
                         $b="select * from player where player_id in ('$p1','$p2','$p3','$p4','$p5','$p6','$p7','$p8','$p9','$p10','$p11') ";
                         $result = mysqli_query($con,$b);

                         
                       
			?>
<h1> <?php echo $row["username"].'\'s DREAM 11' ?> </h1>

<?php

                    while ($row1=mysqli_fetch_assoc($result)) {
                    echo "<tr><th>".$row1["playername"]."</th></tr>";
                     }
                        
			}
?>
</th></tr></table>
<br>
<br>

<?php

                  }

              
	
		?>

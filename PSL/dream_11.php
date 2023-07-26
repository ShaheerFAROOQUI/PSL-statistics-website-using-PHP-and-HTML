<?php
session_start();
                $servername = "localhost";
		$user = "vk"; // Mysql username
		$password = "123";	// Mysql Password

		$dbname = "cricket";	// database name
		 
		
		$con = new mysqli($servername, $user, $password, $dbname);

               $usern = $_SESSION['user'];
		 
		// Check connection
		if ($con->connect_error) {
		    die("onnection failed: " . $con->connect_error ."<br>");
		} 
		

?>


<!DOCTYPE html>
<html lang="en">
	<button id="back" style="background-color: "><a href="user1st.html" style="color:">Back</a></button><div style="margin-top:10px; style : center" >

<button id="view" style="background-color: "><a href="view_dream11.php" style="color:">VIEW ALL</a></button><div style="margin-top:10px; style : center" >

<style >
	table{
		border: 1px solid black;
	}
	td{
		border: 1px solid black;
	}
	th{
		border: 1px solid black;
	}
         tr{
		border: 1px solid black;
	}
</style>

<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=2.0">

 
<link rel="stylesheet" href="style.css">

</head>

<form method="post"><table style="background-image: "1.jpg";"><tr align="center">
            <div class="container" style="text-align:center; font-family:Times New Roman;">
            <p style="text-align: center;font-size: 30;  color: white;"; > <input type="text" placeholder="Enter player 1"  name="playername1" style="width: 300;height:30;">
  <p style="text-align: center;font-size: 30;  color: white;"; > <input type="text" placeholder="Enter player 2"  name="playername2" style="width: 300;height:30;">
 <p style="text-align: center;font-size: 30;  color: white;"; >  <input type="text" placeholder="Enter player 3"  name="playername3" style="width: 300;height:30;">
 <p style="text-align: center;font-size: 30;  color: white;"; >  <input type="text" placeholder="Enter player 4"  name="playername4" style="width: 300;height:30;">
 <p style="text-align: center;font-size: 30;  color: white;"; >  <input type="text" placeholder="Enter player 5"  name="playername5" style="width: 300;height:30;">
 <p style="text-align: center;font-size: 30;  color: white;"; >  <input type="text" placeholder="Enter player 6"  name="playername6" style="width: 300;height:30;">
 <p style="text-align: center;font-size: 30;  color: white;"; >  <input type="text" placeholder="Enter player 7"  name="playername7" style="width: 300;height:30;">
 <p style="text-align: center;font-size: 30;  color: white;"; >  <input type="text" placeholder="Enter player 8"  name="playername8" style="width: 300;height:30;">
 <p style="text-align: center;font-size: 30;  color: white;"; >  <input type="text" placeholder="Enter player 9"  name="playername9" style="width: 300;height:30;">
 <p style="text-align: center;font-size: 30;  color: white;"; >  <input type="text" placeholder="Enter player 10"  name="playername10" style="width: 300;height:30;">
 <p style="text-align: center;font-size: 30;  color: white;"; >  <input type="text" placeholder="Enter player 11"  name="playername11" style="width: 300;height:30;">

                <br><br><input type="submit" name="submit"></p></tr></table>
        </div>
    </tr>
</table>
</form>



<body>






</table></tr>

<?php





if(isset($_POST["submit"])){

$player1 = $_POST['playername1'];
$player2 = $_POST['playername2'];
$player3 = $_POST['playername3'];
$player4 = $_POST['playername4'];
$player5 = $_POST['playername5'];

$player6 = $_POST['playername6'];
$player7 = $_POST['playername7'];
$player8 = $_POST['playername8'];
$player9 = $_POST['playername9'];
$player10 = $_POST['playername10'];
$player11 = $_POST['playername11'];




if(empty($player1) && empty($player2) && empty($player3) && empty($player4) && empty($player5) && empty($player6) && empty($player7) && empty($player8) && empty($player9) && empty($player10) && empty($player11) ){
echo "<script>alert('ERROR! Please fill all the playernames first')</script>";
}
else{

$var = 1;
$var1 = 2;
$error_check = 1;

while($var < 12  && ($error_check==1)){
$var1 = $var + 1;
while($var1 < 12 && ($error_check==1)){

if(${'player'.$var1} == ${'player'.$var}){
echo "<script>alert('ERROR! Same Players cannot be inserted twice!')</script>";
$error_check=0;
}

$var1++;
}


$var++;
}

if($error_check==1){

$a1 = "insert into dream11 (username,player1,player2,player3,player4,player5,player6,player7,player8,player9,player10,player11) VALUES ('$usern','$player1','$player2','$player3','$player4','$player5','$player6','$player7','$player8','$player9','$player10','$player11')";
$res = mysqli_query($con,$a1);

if($res){
echo "<script>alert('DREAM 11 CREATED!')</script>";
}
else{

echo "<script>alert('ERROR!')</script>";

}
}
}

 


$query="select * from player where playername='$player'";
$res = mysqli_query($con,$query);



			$row=mysqli_fetch_assoc($res); 
                        $playern = $row["player_id"];

     

                     $check = "select * from dream11 where username='$usern'";
                     $res1 = mysqli_query($con,$check);
                        
			






}

?>



</table></tr></th>
<br>
<br>
<br>
<br>
<br>
<p style="font-size:70px; text-align:center;"><b>LIST OF PLAYERS</b></p>
  
 <div style="margin-top:115px; style : center" >
<table width="40%"; align="center"><tr>
	
			
<th>Player ID</th>
<th>Player Name</th>
                        <th>Matches Played</th>
			<th>Runs</th>
			<th>Wickets</th>
		
		</tr>

<?php
$con=mysqli_connect("localhost","vk","123","cricket");
$query="select * from player";
$result=mysqli_query($con,$query);

if(mysqli_num_rows($result)>0)
{
			while ($row=mysqli_fetch_assoc($result)) {
			echo "<tr><th>".$row["player_id"]."</th><th>".$row["playername"]."</th><th>".
                        $row["no_of_matches"]."</th><th>".
			$row["runs"]."</th><th>".
			$row["wickets"]."</th>";
			}
		}


?>

</table></tr>



</body>

</html>
<html>
<body>
	<button id="back" style="background-color: "><a href="delete_schedule.php" style="color:">Back</a></button><div style="margin-top:10px; style : center" >
<style >
	table{
		border: 1px solid black;
	}
	tr{
		border: 1px solid black;
	}
	th{
		border: 1px solid black;
	}
</style>
<table width="100%"; align="center"><tr><th>


	<?php
    
	$con=mysqli_connect("localhost","vk","123","cricket");
		
                 $match_no=$_GET['match_no'];
                 
		 $que="select team1 from schedules where match_no='$match_no'";
				
		echo "Squad for match number $match_no ";
	
		?></th></tr></table>



<table width="100%"><tr><th>
 	<table align="center">





		
		<?php
		$con=mysqli_connect("localhost","vk","123","cricket");
               
		$query1="SELECT p.playername FROM schedules s,player p WHERE s.team1=p.name AND s.match_no='$match_no'";
		$result1=mysqli_query($con,$query1);

		$query="select sc.team1 from schedules sc where  sc.match_no='$match_no' limit 0,1";
	    $res=mysqli_query($con,$query);
	    if(mysqli_num_rows($res)>0){
        while ($row=mysqli_fetch_assoc($res)) {
            echo "<tr><th><b>".$row["team1"]."</b></th></tr>";
                    }
    	}


		if(mysqli_num_rows($result1)>0)
		{
			while ($row=mysqli_fetch_assoc($result1)) {
                       
                        
			 echo "<tr><th><b>".$row["playername"]."</b></th></tr>";
                         

                     


			}
		}
		mysqli_close($con);
		?></table></th><th>


		<table align="center">
		

 		<?php
 		$match_no=$_GET['match_no'];
 		$con=mysqli_connect("localhost","vk","123","cricket");
		$query1="SELECT p.playername FROM schedules s,player p WHERE s.team2=p.name AND s.match_no='$match_no'";
		$result1=mysqli_query($con,$query1);
		

		$query="select sc.team2 from schedules sc where  sc.match_no='$match_no' limit 0,1";
	    $res=mysqli_query($con,$query);
	    if(mysqli_num_rows($res)>0){
        while ($row=mysqli_fetch_assoc($res)) {
            echo "<tr><th><b>".$row["team2"]."</b></th></tr>";
                    }
    	}

		if(mysqli_num_rows($result1)>0)
		{
			while ($row=mysqli_fetch_assoc($result1)) {
			echo "<tr><th>".$row["playername"]."</th></tr>";
			
			}
		}
		
		?>



</table></th></tr></table>
		<br><br>


<table width="100%"; align="center">
</table>
<br>
<br>

<form method="post">
    <input type="text" class="input" name="search_player" placeholder="Name of player." required>
<br>
<br>
<br>

    <input type="number" class="input" name="runs_scored" placeholder="Enter the runs scored." required>

<br>

    <input type="number" class="input" name="wickets_taken" placeholder="Enter the wickets taken" required> 
<br>
   


 <button type="submit" name="search">Search</button> 
</form>

<?php

$match_no=$_GET['match_no'];
if(isset($_POST["search"])) {
$con=mysqli_connect("localhost","vk","123","cricket");

$getPlayer=$_POST['search_player'];

$query1="select team1 from schedules where match_no='$match_no'";
$query2="select team2 from schedules where match_no='$match_no'";

$res1=mysqli_query($con,$query1);
$res2=mysqli_query($con,$query2);

$row1 = mysqli_fetch_row($res1);
$row2 = mysqli_fetch_row($res2);

$loc1 = $row1[0];
$loc2 = $row2[0];




$query3 = "SELECT * FROM player where (playername = '$getPlayer') AND (name = '$loc1' OR name = '$loc2')";
$res4=mysqli_query($con,$query3);

$row_runs=$res4->fetch_assoc();

$runs1 = (int) $row_runs['runs'];
$wickets1 = (int) $row_runs['wickets'];




$getRuns=$_POST['runs_scored'];
$getWickets=$_POST['wickets_taken'];


$sumRuns=$getRuns + $runs1;
$sumWickets=$getWickets + $wickets1;



$update_query="update player set runs = '$sumRuns', wickets = '$sumWickets' where playername = '$getPlayer'";

$res2=mysqli_query($con,$update_query);

if($res2){
echo "<script>alert('RUNS/WICKETS UPDATED')</script>";
}
else{
echo "<script>alert('ERROR! Please try again $sumRuns')</script>";
}








}

?>










</body>
</html>


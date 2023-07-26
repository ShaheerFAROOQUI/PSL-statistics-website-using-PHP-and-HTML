<html>
<body>
	<button style="background-color: "><a href="admin1st.html" style="color:">Back</a></button><div style="margin-top:10px; style : center" >
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
  
	$con=mysqli_connect("localhost","vk","123","cricket");
		
                 $ab = "select name from team";
                 $result = mysqli_query($con,$ab);
                 
                  while ($row1 = mysqli_fetch_row($result)) {
?>

<table width="40%"; align="center"><tr><th>


<?php
                  $teamname = $row1[0];
                    if ($teamname == 'KK'){
?>
<img src="KK.png" alt="KK logo" width="250" height="200">
<br>
<br>
<?php
                   }

else if ($teamname == 'LQ'){
?>
<img src="LQ.png" alt="LQ" width="250" height="200">
<br>
<br>
<?php
                   }

 else if ($teamname == 'IU'){?>
<img src="IU.png" alt="KK logo" width="300" height="250">

<?php
                   }

 else if ($teamname == 'MS'){
?>
<img src="MS.png" alt="KK logo" width="250" height="200">
<br>
<br>
<?php
                   }

 else if ($teamname == 'PZ'){
?>
<img src="PZ.png" alt="KK logo" width="250" height="200">
<br>
<br>

<?php
                   }

 else if ($teamname == 'QG'){
?>
<img src="QG.png" alt="KK logo" width="250" height="200">
<br>
<br>

<?php
                   }
                    //echo "<h1>".$teamname."</h1>";
                    




//echo "<span style="color:#AFA;text-align:center;">".$teamname."</span>";
                 
                  //echo "<script>alert('ERROR! Please try again $teamname')</script>";
                  $que="select playername from player where name='$teamname'";
                  $res=mysqli_query($con,$que);

                         while ($row=mysqli_fetch_assoc($res)) {
                       
			 echo "<tr><th>".$row["playername"]."</th></tr>";
                        
			}
?>
</th></tr></table>
<br>
<br>

<?php

                  }

              
	
		?>
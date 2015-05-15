<!DOCTYPE html>
<html>
<head>
	<style>
		table {
			width: 100%;
			border-collapse: collapse;
		}

		table, td, th {
			border: 1px solid black;
			padding: 5px;
		}

		th {text-align: left;}
	</style>
</head>
<body>

	<?php
	$q = ($_GET['q']);

	$con = mysqli_connect('localhost','root','root','Campus');
	if (!$con) {
		die('Could not connect: ' . mysqli_error($con));
	}

	mysqli_select_db($con,"ajax_demo");
	$sql="SELECT * FROM Room WHERE RoomName like '".$q."%'";
	$result = mysqli_query($con,$sql);
	echo 	"<table>
				<tr>
					<th>RoomName</th>
					<th>Campus</th>
				</tr>";
	$i = 0;
	while($row = mysqli_fetch_array($result)) {
		//echo "<div class='room-container'>";
		echo "<tr>";
		echo "<td class='chosenRooms' id='chosenRoom". $i ."'>" . $row['RoomName'] . "</td>";
		echo "<td>" . $row['Campus'] . "</td>";
		echo "</tr>";
		//echo "</div>"
		$i = $i + 1;
	}
	echo "</table>";
	mysqli_close($con);
	?>
</body>
</html>
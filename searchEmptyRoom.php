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
	$sql="	SELECT DISTINCT RoomName, Campus 
			FROM Room 
			LEFT JOIN RoomTime
			ON Room.Room_ID = RoomTime.Room_ID
			WHERE Room.Room_ID 
			NOT IN (SELECT DISTINCT Room.Room_ID FROM Room, RoomTime WHERE Room.Room_ID = RoomTime.Room_ID);
			";
	$result = mysqli_query($con,$sql);
	echo 	"<table>
				<tr>
					<th>RoomName</th>
					<th>Campus</th>
				</tr>";
	//echo '<pre>';
	//print_r($result);
	//echo '</pre>';
	$i = 0;
	while($row = mysqli_fetch_array($result)) {
		//echo "<div class='room-container'>";
	//	echo '<pre>';
	//	print_r($row);
	//	echo '</pre>';
		echo "<tr>";
		echo "<td class='emptyRooms' id='freeRoom". $i ."'>" . $row['RoomName'] . "</td>";
		echo "<td>" . $row['Campus'] . "</td>";
		echo "</tr>";
		$i = $i + 1;
		//echo "</div>"
	}
	echo "</table>";
//	echo 	"<div>
//				<div>RoomName</div>
//				<div>Campus</div>";
//	while($row = mysqli_fetch_array($result)) {
//
//		echo "<div>";
//		echo "<div class='emptyRooms' value='". $row['RoomName'] ."'>" . $row['RoomName'] . "</div>";
//		echo "<div>" . $row['Campus'] . "</div>";
//		//echo "<span class='testsomfan' value='test'>" . $row['RoomName'] . "</span>";
//		echo "</div>";
//	}
//	echo "</div>";
	mysqli_close($con);
	?>
</body>
</html>
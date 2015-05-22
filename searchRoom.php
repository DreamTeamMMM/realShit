<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<?php
	$q = ($_GET['q']);
	$testvar = "jag gillar allt";
	$con = mysqli_connect('localhost','root','root','Campus');
	if (!$con) {
		die('Could not connect: ' . mysqli_error($con));
	}
	mysqli_select_db($con,"ajax_demo");
	$sql = "SELECT RoomName, Campus, Room.Room_ID, NumberOfPlaces 
			FROM Room 
			LEFT JOIN RoomAKA 
			ON RoomAKA.Room_ID = Room.Room_ID 
			WHERE RoomName like '".$q."%' OR AKA like '".$q."%'";
	//$sqlFloor = "SELECT Floor FROM Room WHERE RoomName like '".$q."%'";

	$result = mysqli_query($con,$sql);
	//$result_floor = mysqli_query($con,$sqlFloor);

// test
	$i = 0;
	echo 	"<div class='super-duper-mega-div'>";
	while($row = mysqli_fetch_array($result)) {
		//echo "<div class='room-container'>";
		//echo 	"<script>console.log('innan forloopar', " .$i .")</script>";

		$sqlStat = "SELECT RoomStat 
					FROM RoomStats 
					WHERE Room_ID =" . $row['Room_ID'];
		$result_stat = mysqli_query($con,$sqlStat);
		
		$sqlTime = "SELECT DISTINCT DATE_FORMAT(StartTime,'%H:%i') AS StartTime, DATE_FORMAT(EndTime,'%H:%i') AS EndTime, Room.Room_ID 
					FROM Room
        			LEFT JOIN RoomTime
        			ON Room.Room_ID = RoomTime.Room_ID
        			WHERE " . $row['Room_ID'] . " = RoomTime.Room_ID AND date(now()) = Datum";
		$result_time = mysqli_query($con,$sqlTime);

		echo 	"<div class='presented-room-row'>";
		echo		"<div class='roomname-icon'>";
		echo			"<p class='glyphicon glyphicon-triangle-right chosenRooms' id='chosenRoom". $i ."'>" . $row['RoomName'] . "</p>";
		echo		"</div>";
		echo		"<div class='room-description hidden'>";
		echo			"<p>Antal platser: " . $row['NumberOfPlaces'] . "</p>";
		echo 			"<p>Stats: ";
		while($row_a = mysqli_fetch_array($result_stat)) {
			echo 		$row_a['RoomStat'] . ", ";
			//echo 	"<script>console.log('i forloopar', " .$i .")</script>";
		};
		echo "<br>Bokade tider idag:";
		while($row_time = mysqli_fetch_array($result_time)) {
			echo 		"<br>" . $row_time['StartTime'] ." - " . $row_time['EndTime'];
			//echo 	"<script>console.log('i forloopar 2', " .$i .")</script>";
		};
		echo			"</p>";
		echo		"</div>";
		echo 	"</div>";

		//echo "</div>"
		$i = $i + 1;
	}
		echo 	"</div>";
	
	
// orginal 
//	echo 	"<table>
//				<tr>
//					<th>RoomName</th>
//					<th>Campus</th>
//				</tr>";
//	$i = 0;
//	while($row = mysqli_fetch_array($result)) {
//		//echo "<div class='room-container'>";
//		echo "<tr>";
//		echo "<td class='chosenRooms' id='chosenRoom". $i ."'>" . $row['RoomName'] . "</td>";
//		echo "<td>" . $row['Campus'] . "</td>";
//		echo "</tr>";
//		//echo "</div>"
//		$i = $i + 1;
//	}
//	echo "</table>";
//	echo "<div class='hidden'>";
//	while($row = mysqli_fetch_array($result_floor)) {
//		//echo "<div class='room-container'>";
//		echo "<p>" . $row['Floor'] . "</p>";
//		//echo "</div>"
//		$i = $i + 1;
//	}
//	echo "</div>";
	mysqli_close($con);
	?>
</body>
</html>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<?php
	$q = ($_GET['q']);
	$con = mysqli_connect('localhost','root','root','Campus');
	if (!$con) {
		die('Could not connect: ' . mysqli_error($con));
	}
	mysqli_select_db($con,"ajax_demo");
	$sql="	SELECT DISTINCT RoomName, Campus, Room.Room_ID, NumberOfPlaces
			FROM Room 
			LEFT JOIN RoomTime
			ON Room.Room_ID = RoomTime.Room_ID
			WHERE Room.Room_ID 
			NOT IN (SELECT DISTINCT Room.Room_ID 
					FROM Room, RoomTime 
					WHERE Room.Room_ID = RoomTime.Room_ID AND date(now()) = Datum);
			";
	$result = mysqli_query($con,$sql);
	$i = 0;
	echo 	"<div class='super-duper-mega-div'>";
	while($row = mysqli_fetch_array($result)) {
		$sqlStat = "SELECT RoomStat FROM RoomStats WHERE Room_ID =" . $row['Room_ID'];
		$result_stat = mysqli_query($con,$sqlStat);

		echo 	"<div class='presented-room-row'>";
		echo		"<div class='roomname-icon'>";
		echo			"<p class='glyphicon glyphicon-triangle-right emptyRooms' id='freeRoom". $i ."'>" . $row['RoomName'] . "</p>";
		echo		"</div>";
		echo		"<div class='room-description hidden'>";
		echo			"<p>Antal platser: " . $row['NumberOfPlaces'] . "</p>";
		echo 			"<p>Stats: ";
		while($row_a = mysqli_fetch_array($result_stat)) {
			echo 		$row_a['RoomStat'] . ", ";
		};
		echo			"</p>";
		echo		"</div>";
		echo 	"</div>";
		$i = $i + 1;
	}
	echo 	"</div>";
	mysqli_close($con);
	?>
</body>
</html>
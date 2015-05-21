<?php include "base.php"; ?>

<!-- kolla om inloggad -->

<?php 
function phpFunction(){
	if(!empty($_SESSION['LoggedIn']) && !empty($_SESSION['Username'])){	
		return "false";
	} else {
		return "false";
	};
	?> 
	<?php
}
?>

<!DOCTYPE html>
<html>
<head>
	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - -->
	<!-- För hemsidan-->
	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">	
	<link rel="stylesheet" href="reset.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<link rel="stylesheet" href="main.css">
	<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<!--script src="freeRoomBroom.js"></script-->
	<!--script src="fopen.js"></script-->
	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - -->
	<!-- För rendering-->
	<!-- - - - - - - - - - - - - - - - - - - - - - - - - - -->
	<script src="sources/hand.js"></script>
	<script src="http://cdn.babylonjs.com/2-0/babylon.js"></script>
	<script src="script/geoLoc.js"></script>
	<script src="script/pathFinder.js"></script>
	<!-- <link   href='style.css' rel='stylesheet'/-->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script>
		var loggedInSession = function() {
			var result = "<?php echo phpFunction() ?>";
			if (result === "true") {
				$('#memberarea-button').removeClass('hidden')
				$('#loggin-button').addClass('hidden')
				$('#signup-button').addClass('hidden')
			}
			//console.log(result);
		}
		$(document).ready(loggedInSession);
	</script>
	<script>
		function showRoom(str) {
			if (str == "") {
				document.getElementById("txtHint").innerHTML = "";
				return;
			} else { 
				if (window.XMLHttpRequest) {
						// code for IE7+, Firefox, Chrome, Opera, Safari
						xmlhttp = new XMLHttpRequest();
					} else {
						// code for IE6, IE5
						xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
					}
					xmlhttp.onreadystatechange = function() {
						if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
							document.getElementById("txtHint").innerHTML = xmlhttp.responseText;
						}
					}
					xmlhttp.open("POST","searchRoom.php?q="+str,true);
					xmlhttp.send();
					//var javaScriptVar = "<?php echo $testvar; ?>";
				}
			}
		</script>
	</head>
	<body>
		<script src="layout.js"></script>
		<!-- Single button -->
		<div class="menu">
			<!-- Menu icon -->
			<div class="icon-close">
				<img src="http://s3.amazonaws.com/codecademy-content/courses/ltp2/img/uber/close.png">
			</div>

			<!-- Menu -->
			<div class="menu-container pre-scrollable">
				<ul>
					<li>
						Search room:
						<div id="room-number">
							<form id="roomname-form">
								Room name:<br>
								<input id="Rname" type="text" name="roomname" oninput="showRoom(this.value)">
								<br>
							</form>
						</div>
					</li>
					Search beetween rooms:
					<li>
						<div id="room-to-room">
							<form>
								Start room:<br>
								<input type="text" name="start" id="txt-start" value="">
								<br>
								End room:<br>
								<input type="text" name="end" id="txt-end" onkeydown="if (event.keyCode == 13) document.getElementById('startNav').click()">
								<br>
							</form>
							<button type="button" class="btn btn-default" id="startNav">
								Search
							</button>
						</div>
					</li>
					Search for empty room or me:
					<li>
						<div id="room-free">
							<button type="button" onclick="showEmptyRoom()" id="freeRoomsButton" class="btn btn-default" value="0">
								Search Empty Room 
							</button>
							<button type="button" onclick="getLocation()" id="findMe" class="btn btn-default">
								Find Me
							</button>

							<!--input type="button" id="startNav" value="Submit"-->
						</div>
					</li>
					Room information
					<li>
						<div id="room-information">
							<!--?php include "db-search.php"; ?-->
							<!-- - - - - - - - - -Test shit here - - - - - - - - - - - -->
							<!--div class="presented-room-row">
								<div class="roomname-icon">
									<p class="glyphicon glyphicon-triangle-right">P1211</p>
								</div>
								<div class="room-description hidden">
									<p>Antal platser: 46</p>
									<p>Blablablabla: bla</p>
								</div>
							</div>
							<div class="presented-room-row">
								<div class="roomname-icon">
									<p class="glyphicon glyphicon-triangle-right">P1212</p>
								</div>
								<div class="room-description">
									<p>Antal platser: 1</p>
									<p>Blablablabla: bla</p>
								</div>
							</div-->
							<!-- - - - - - - - - -Test shit here - - - - - - - - - - - -->

							<div id="txtHint">

							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<div id="scene">
			<div class="canvas-container">
				<canvas id="canvas"></canvas>
				<!--</div>-->
				<div id="information" class="pull-left">
					<button type="button" class="btn btn-default dropdown-toggle glyphicon glyphicon-search">
					</button>
				</div>
				<div id="user" class="pull-right">
					<ul id="user-menu" class="btn-group dropdown pull-right">
						<button type="button" class="btn btn-default dropdown-toggle glyphicon glyphicon-user" data-toggle="dropdown" aria-expanded="false">
						</button>				
						<ul class="dropdown-menu" role="menu">
							<li><div id="signup-button" class="menu-item signup"><a href="#">Sign Up</a></div></li>
							<li><div id="loggin-button" class="menu-item login"><a href="#">Log In</a></div></li>
							<li><div id="memberarea-button" class="menu-item member hidden"><a href="#">Member</a></div></li>
						</ul>
					</ul>
				</div>
			</div>
		</div>
		<div class="formular hidden">
			<div id="" class="signup_box hidden">
				<?php include "test_register.php"; ?>
				<div class="signup_form">
					<form method="post" action="" name="registerform" id="registerform">
						<p>
							<input type="text" name="username" id="username" value="" placeholder="Username">
						</p>
						<p>
							<input type="text" name="email" id="email" value="" placeholder="Email">
						</p>
						<p>
							<input type="text" name="timeedit" id="timeedit" value="" placeholder="https://se.timeedit.net/web/uu/db1/schema/s.ics?i=yQ8652138Z05Q0655563XZ6007688XY80402YQ356Y5X665W">
						</p>
						<p>
							<input type="password" name="password" id="password" value="" placeholder="Password">
						</p>
						<button class="submit"><input type="submit" name="commit" value="Sign up"></button>
					</form>
				</div>
			</div>
			<div id="" class="login_box hidden">
				<?php include "test_login.php"; ?>
				<div class="login_form">
					<form method="post" action="index.php" name="loginform" id="loginform">
						<p>
							<input type="text" name="username" id="username" value="" placeholder="Username or Email">
						</p>
						<p>
							<input type="password" name="password" id="password" value="" placeholder="Password">
						</p>
						<p id="remember_me" class="remember_me">
							<label>
								<input type="checkbox" name="remember_me" id="remember_me">Remember me
							</label>
						</p>
						<p class="submit"><input type="submit" name="login" id="login" value="Login"></p>
					</form>
				</div> 
			</div>
		</div>
		<script type="text/javascript"> 
		//var allFreeRooms = [];
		//var allChosenRooms = [];
		var allRoomList = []
		$('#txtHint').on('DOMNodeRemoved',function(){
			allRoomList = [];
		//	hideFreeRooms();
		});
		
		$('#txtHint').on('DOMNodeInserted',function(){
			if(freeRoomList !== undefined){
			//	hideFreeRooms();
			};	
			console.log("- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
			//console.log("DOMNodeInserted length", $(".emptyRooms").length)
			if ($(".emptyRooms").length !== 0) {
				//allChosenRooms = [];
				//allFreeRooms = [];
				allRoomList = []
				for (var i = 0; i < $('.emptyRooms').length; i++) {
					var room = "#freeRoom"+i;
					//console.log("massa text hela tiden",(room), $(room).text())
					allRoomList[i] = $(room).text();
				};
			}
			if ($('.chosenRooms').length !== 0) {
				//allChosenRooms = [];
				//allFreeRooms = [];
				allRoomList = []
				for (var i = 0; i < $('.chosenRooms').length; i++) {
					var room = "#chosenRoom"+i;
					//console.log((room))
					allRoomList[i] = $(room).text();
				};

			}
			//console.log("Lediga rum", allFreeRooms)
			//console.log("Valda rum", allChosenRooms)
			displayFreeRooms(scene);
		})
	</script>
	<script>
		function showEmptyRoom() {
			if (window.XMLHttpRequest) {
		            // code for IE7+, Firefox, Chrome, Opera, Safari
		            xmlhttp = new XMLHttpRequest();
		        } else {
		            // code for IE6, IE5
		            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		        }
		        xmlhttp.onreadystatechange = function() {
		        	if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
		        		document.getElementById("txtHint").innerHTML = xmlhttp.responseText;
		        		//console.log(xmlhttp.responseText)
		        	}
		        }
		        xmlhttp.open("GET","searchEmptyRoom.php",true);
		      	xmlhttp.send();
		      //  console.log(xmlhttp.open("GET","searchEmptyRoom.php",true);)
		       // console.log(xmlhttp.send();)
		    //   	var ta = document.getElementsByClassName("testsomfan");
			//	console.log("---------------getElementBy----------------------")
		     //  	console.log(document.getElementsByClassName("testsomfan"))
		     //  	console.log(typeof document.getElementsByClassName("testsomfan"))
		     //  	console.log(document.getElementsByClassName("testsomfan").length)
		    //   	console.log(document.getElementsByClassName("testsomfan").firstChild)	
		      //	console.log("------------------variable-------------------")
		      	//console.log(ta)
		      	//console.log(typeof ta)
		      //	console.log(ta.length)
			//	console.log(ta.(1))

		    //   	for (var i = 0; i >= ta.length; i++) {
		    //   		var apa = ta[i];
		    //   		console.log(apa)
		    //   	};
		     //   console.log(testtest);
		     //   console.log("håkan")
		     //   console.log(allRoomList)
		    //displayFreeRooms(scene, allRoomList);
		}
	</script>
	<script src="script/bab1.js"></script>


</body>
</html>
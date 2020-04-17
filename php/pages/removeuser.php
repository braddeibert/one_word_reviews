<!DOCTYPE HTML>
<html>
<head>
	<link rel="stylesheet" href="./style.css">
	<title>ADMIN - REMOVE USER</title>
</head>
<body style="background-color: white; color: black;">

<h1>Remove User</h1>
<h3 style="color: red;">For administrator use only</h3>

<form action="./removeuser.php" method="post">
	<label for="uname">Username:</label>
	<input name="uname" type="text" placeholder="Username (e.g. 'BIGTIMETOMMIE1')">
	<label for="phrase">Authentication phrase:</label>
	<input name="phrase" type="password" placeholder="123456789">
	<button type="submit">REMOVE USER</button>
</form>

<?php
	// connect to database
	$link=mysqli_connect("localhost", "bd152220", "ahqu3UucieGhe9vixui4chaaph8AiH", "bd152220")
	   or die('Could not connect ');
	
	// get form submissions
	$username = $_POST['uname'];
	$auth = $_POST['phrase'];
	
	$username = trim($username);
	$auth = trim($auth);
	
	if ($auth == '') {
		exit();
	}
	elseif ($auth != 'supersecretphrase0908') {
		die("Incorrect phrase. Permission denied.");
	}
	
	// Delete user
	$query = "DELETE FROM USERS WHERE username = '$username';";
	$result = mysqli_query($link, $query)
			or die("Query failed: no user '{$username}' found. Must match existing username. ");
	
	// success message & display review
	echo "<p class='success'>User {$username} successfully removed.</p>";

	//Free result set
	mysqli_free_result($result);

	//close connection
	mysqli_close($link);
?>

</body>
</html>
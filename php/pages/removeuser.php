<!DOCTYPE HTML>
<html>
<head>
<title>ADMIN - REMOVE USER</title>
</head>
<body style="background-color: black; color: red;">

<h1>Remove User</h1>
<h3>For administrator use only</h3>

<form action="./removeuser.php" method="post">
	<input name="uname" type="text" placeholder="Enter user to delete">
	<input name="phrase" type="text" placeholder="Enter phrase">
	<button type="submit">REMOVE</button>
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
	
	if ($auth != 'supersecretphrase0908') {
		die("Incorrect phrase. Permission denied.");
	}
	
	// Delete user
	$query = "DELETE FROM USERS WHERE username = '$username';";
	$result = mysqli_query($link, $query)
			or die("Query failed: no user '{$username}' found ");
	
	// success message & display review
	echo "<p>User {$username} successfully removed.</p>";

	//Free result set
	mysqli_free_result($result);

	//close connection
	mysqli_close($link);
?>

</body>
</html>
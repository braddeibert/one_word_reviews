<!DOCTYPE HTML>
<html lang="en-us">
<head>
	<title>Word</title>
	<!-- Bootstrap 4 minified CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">	<!-- Bootstrap 4 minified JavaScript -->
	<link rel="stylesheet" href="./style.css">
	
	<!-- Bootstrap 4 JS, Popper.js, jQuery -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container-fluid" id="viewport" style="padding: 0px;">
		<div class="navbar navbar-expand-lg bg-light navbar-light">
			<a class="navbar-brand mb-0 h1" id="brand">word.</a>
			
			<ul class="navbar-nav ml-auto">
				<li class="nav-item">
					<a class="nav-link" href="../index.php">Home</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link" href="./review.php">Reviews</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./movies.php">Movies</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./shows.php">Shows</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./music.php">Music</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./contributors.php">Contributors</a>
				</li>
				<form class="form-inline" action="./result.php" method="post">
					<input class="form-control mr-sm-2" name="search" type="text" placeholder="Search all reviews">
					<button class="btn btn-success" type="submit">Go</button>
				</form>
			</ul>
		</div>

		<div class="container">
			
			<?php 
				$username = $_GET['user'];
				echo "<h1 class='display-4'>Edit info for $username</h1>\n";
			?>
			
			<!-- form for sumbitting review -->
			<form action="./updateuser.php?<?php $_GET['user']; ?>" method="post">
				<div class="form-group">
					<label for="location">Location:</label>
					<input type="text" name="loc" class="form-control" placeholder="Your location">
				</div>
				<div class="form-group">
					<label for="bio">Bio:</label>
					<input type="text" name="bio" class="form-control" placeholder="Write bio here...">
				</div>
				<button type="submit" class="btn btn-success">Update</button>
			</form>
			
			<?php
				// connect to database
				$link=mysqli_connect("localhost", "bd152220", "ahqu3UucieGhe9vixui4chaaph8AiH", "bd152220")
				   or die('Could not connect ');
				
				// get form submissions
				$username = $_GET['user'];
				$location = $_POST['loc'];
				$userbio = $_POST['bio'];
				
				$username = trim($username);
				$location = trim($location);
				$userbio = trim($userbio);
				
				if ($userbio == '' or $location == '') {
					exit();
				}

				//perform SQL query
				$query = "UPDATE USERS SET location = '$location', bio = '$userbio' WHERE username = '$username';";
				$result = mysqli_query($link, $query)
						or die("Query failed ");
				
				// success message & display review
				echo "<p>Info updated successfully.</p>";

				//Free result set
				mysqli_free_result($result);

				//close connection
				mysqli_close($link);
			?>
			
		</div>
	</div>
</body>
</html>
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
					<input class="form-control mr-sm-2" name="search" type="text" placeholder="Search database">
					<button class="btn btn-success" type="submit">Go</button>
				</form>
			</ul>
		</div>
		
		<div class="container">
			<div class="container">
				<h2>Latest Reviews</h2>
				<?php
					// connect to database
					$link=mysqli_connect("localhost", "bd152220", "ahqu3UucieGhe9vixui4chaaph8AiH", "bd152220")
					   or die('Could not connect ');

					// show most recent reviews
					$query = "SELECT title, word, username, time_submitted FROM CONTENT, USERS, REVIEWS WHERE CONTENT.contId = REVIEWS.contId AND USERS.username = REVIEWS.author ORDER BY time_submitted DESC;";
					$result = mysqli_query($link, $query)
							or die("Query failed - no content found");

					//print results in html
					echo " <table class='table'>\n";
					
					//headings
					echo "\t<thead>\n";
					echo "\t\t<th>Title</th>\n";
					echo "\t\t<th>Verdict</th>\n";
					echo "\t\t<th>Author</th>\n";
					echo "\t\t<th>Time Submitted</th>\n";
					echo "\t</thead>\n";
					
					//data
					while ($line = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
							echo "\t<tr>\n";
							foreach ($line as $col_value) {
									echo "\t\t<td>$col_value</td>\n";
							}
							echo "\t</tr>\n";
					}
					echo "</table>\n";

					//Free result set
					mysqli_free_result($result);

					//close connection
					mysqli_close($link);
				?>
					
			</div>

			<button class="btn btn-primary" data-toggle="collapse" data-target="#submitReview">Write a Review</button>
			<div class="container" id="submitReview" style="padding-top: 25px;">
				<!-- form for sumbitting review -->
				<form action="./submitted.php" class="was-validated" method="post">
					<div class="form-group">
						<label for="title">Title:</label>
						<input type="text" name="title" class="form-control" placeholder="Title (e.g. 'Shrek')" required>
						<div class="invalid-feedback">Enter an existing content title.</div>
					</div>
					<div class="form-group">
						<label for="review">Word:</label>
						<input type="text" name="word" class="form-control" placeholder="Review (e.g. 'Incredible')" required>
						<div class="invalid-feedback">Review must be one word.</div>
					</div>
					<div class="form-group">
						<label for="username">Username: <a href="./newuser.php">Create a new user</a></label>
						<input type="text" name="uname" class="form-control" placeholder="Author (e.g. 'GrandmaSue')" required>
						<div class="invalid-feedback">Enter an existing author.</div>
					</div>
					<button type="submit" class="btn btn-success">Submit</button>
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>
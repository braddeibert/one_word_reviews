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
				<li class="nav-item">
					<a class="nav-link" href="./review.php">Reviews</a>
				</li>
				<li class="nav-item active">
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
			
			<!-- php for pulling all movies from db -->
			<?php
				// connect to database
				$link=mysqli_connect("localhost", "bd152220", "ahqu3UucieGhe9vixui4chaaph8AiH", "bd152220")
				   or die('Could not connect ');
				   
				$search = $_POST['search'];
				$search = trim($search);
				
				echo "<h2>Search results for '{$search}'</h2>\n";

				// search CONTENT table for search term
				$query = "SELECT title, producer, year_released FROM CONTENT WHERE LOCATE('$search', title) > 0;";
				$contentresult = mysqli_query($link, $query)
						or die("Query failed - no content found");
				
				echo "<h2>Content matching '{$search}'</h2>\n";
				
				if ($contentresult->num_rows == 0) {
					echo "No results found.";
				} else {
					//print content search results in html
					echo " <table class='table'>\n";
					
					//headings
					echo "\t<thead>\n";
					echo "\t\t<th>Title</th>\n";
					echo "\t\t<th>Producer</th>\n";
					echo "\t\t<th>Year Released</th>\n";
					echo "\t</thead>\n";
					
					//data
					while ($line = mysqli_fetch_array($contentresult, MYSQLI_ASSOC)) {
							echo "\t<tr>\n";
							foreach ($line as $col_value) {
									echo "\t\t<td>$col_value</td>\n";
							}
							echo "\t</tr>\n";
					}
					echo "</table>\n";
				}
				
				// search REVIEWS table for search term
				$query = "SELECT title, word, username, time_submitted FROM CONTENT, USERS, REVIEWS WHERE CONTENT.contId = REVIEWS.contId AND USERS.username = REVIEWS.author AND LOCATE('$search', word) > 0 ORDER BY time_submitted DESC;";
				$reviewresult = mysqli_query($link, $query)
						or die("Query failed - no content found");
						
						
				echo "<h2>Reviews matching '{$search}'</h2>\n";
				
				if ($reviewresult->num_rows == 0) {
					echo "No results found.";
				} else {
					//print review search results in html
					echo " <table class='table'>\n";
					
					//headings
					echo "\t<thead>\n";
					echo "\t\t<th>Title</th>\n";
					echo "\t\t<th>Review</th>\n";
					echo "\t\t<th>Author</th>\n";
					echo "\t\t<th>Time Submitted</th>\n";
					echo "\t</thead>\n";
					
					//data
					while ($line = mysqli_fetch_array($reviewresult, MYSQLI_ASSOC)) {
							echo "\t<tr>\n";
							foreach ($line as $col_value) {
									echo "\t\t<td>$col_value</td>\n";
							}
							echo "\t</tr>\n";
					}
					echo "</table>\n";
				}

				//Free result set
				mysqli_free_result($contentresult);
				mysqli_free_result($reviewresult);

				//close connection
				mysqli_close($link);
			?>
			
		</div>
	</div>
</body>
</html>
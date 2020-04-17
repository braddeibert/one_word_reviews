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
				<li class="nav-item active">
					<a class="nav-link" href="index.php">Home</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./pages/admin.html">USER GUIDE</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./pages/review.php">Reviews</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./pages/movies.php">Movies</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./pages/shows.php">Shows</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./pages/music.php">Music</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./pages/contributors.php">Contributors</a>
				</li>
				<form class="form-inline" action="./pages/result.php" method="post">
					<input class="form-control mr-sm-2" name="search" type="text" placeholder="Search all reviews">
					<button class="btn btn-success" type="submit">Go</button>
				</form>
			</ul>
		</div>

		<div class="jumbotron-fluid text-center" id="landing" style="">
			<h1 id="land-title">Welcome to <strong>word.</strong></h1>
			<h3>Easy to digest reviews for the 21st century.</h3>
			<br>
			<button class="btn" style="border: 2px white solid; color: white; font-weight: 400;" data-toggle="collapse" data-target="#about">About</button>
			
			<div id="about" class="collapse container">
				<p>The database underneath this site contains information about site users, many types of content (movies, shows, albums), content contributors (actors, artists, directors, creators), and content awarding organizations. The relationships between these entities is stored, including user submitted reviews on content, contributor roles in content, and awards presented to content. We seek to provide information about content, but most importantly, to convey public opinion one <strong>word</strong> at a time. It is our personal mission to make sure you never have to read a 500-word review to get an opinion again. Get the gist easy, and fast.</p>
			</div>
		</div>

	</div>
</body>
</html>
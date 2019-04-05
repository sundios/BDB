<?php 
	include 'header.php'
?>

<?php include 'searchbar.php'
?>




<div class="artwork-container">
	<div class="container">
<h1>Search Page</h1>
<a href="/StreetartDB/">Go back home</a>
<?php

	if (isset($_POST['submit-search'])) {
		$search = mysqli_real_escape_string($link, $_POST['search']);
		$sql = "SELECT * from murals m INNER JOIN artist a  on a.a_id = m.a_id INNER JOIN location l on l.l_id = m.l_id WHERE title LIKE '%$search%' OR year LIKE '%$search%' OR about LIKE '%$search%' OR name LIKE '%$search%' OR city LIKE '%$search%' OR country LIKE '%$search%' ";	
		$started = microtime(true);
		$result = mysqli_query($link, $sql);
		$end = microtime(true);
		$difference = $end - $started;
		$queryTime = number_format($difference, 10);
		$queryResult = mysqli_num_rows($result);

		echo "<div class='results_txt'><h2>There are <span class='badge badge-secondary'>" .$queryResult." </span> results!</h2>";
		echo "<h6> SQL query took <span class='badge badge-secondary'>".$queryTime."</span> seconds.</h6>
</div>";

		if($queryResult > 0) {
			while ($row = mysqli_fetch_assoc($result)) {
				echo "
				<div class='card-deck'>
				<div class='card'>
				<img class='card-img-top'src=".$row['imageurl'].">
				<div class='card-body'>
				<h5 class='card-title'><strong>Title:</strong>".$row['title']."</h5>
				<p class='card-text'><strong>Artist:</strong>".$row['name']."<p>
				<p class='card-text'><strong>Location:</strong>".$row['city']."<p>
				<p class='card-text'><strong>About:</strong>".$row['about']."<p>
				<a href='artwork.php?title=".$row['title']."&location=".$row['city']."'>
				<button type='button' class='btn btn-info'>Info</button></a>
			</div>
			</div>
			</div>";
			}

		
		} else { 
			echo "<div class='alert alert-warning alert-dismissible fade show' role='alert'>
  <strong> There are no results matching your search! </strong> Please try again.
  <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
    <span aria-hidden='true'>&times;</span>
  </button>
</div>";
		}
		
	}

?>


	

</div>

</div>



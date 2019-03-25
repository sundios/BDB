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
		$sql = "SELECT * FROM artwork WHERE a_location LIKE '%$search%' OR a_artist LIKE '%$search%' OR a_title LIKE '%$search%' ";
		$started = microtime(true);
		$result = mysqli_query($link, $sql);
		$end = microtime(true);
		$difference = $end - $started;
		$queryTime = number_format($difference, 10);

		$queryResult = mysqli_num_rows($result);

		echo "<div class='results_txt'><h2>There are <span class='badge badge-secondary'>" .$queryResult." </span> results!</h2>";
		echo "<h6> SQL query took <span class='badge badge-secondary'>$queryTime</span> seconds.</h6>
</div>";

		if($queryResult > 0) {
			while ($row = mysqli_fetch_assoc($result)) {
				echo "
				<div class='card-deck'>
				<div class='card'>
				<img class='card-img-top'src=".$row['a_img'].">
				<div class='card-body'>
				<h5 class='card-title'>Title:".$row['a_title']."</h5>
				<p class='card-text'>Artist:".$row['a_artist']."<p>
				<p class='card-text'>Location:".$row['a_location']."<p>
				<a href='artwork.php?title=".$row['a_title']."&location=".$row['a_location']."'>
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



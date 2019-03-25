<?php 
	include 'header.php'
?>

<div class="row">
    <div class="col">
      1 of 3
    </div>
    <div class="col-6">
			      <form action="search.php" method="POST">
			  			<input type="text" name="search" placeholder="Search" id="searchbox">
			  			<button type="submit" name="submit-search" class="btn btn-primary"><i class="fas fa-search"></i></button>
					</form>

    </div>
    <div class="col">
      3 of 3
    </div>
  </div>

<h1>Search Page</h1>
<a href="/StreetartDB/">Go back home</a>
<div class="artwork-container">
	
<?php
	if (isset($_POST['submit-search'])) {
		$search = mysqli_real_escape_string($link, $_POST['search']);
		$sql = "SELECT * FROM artwork WHERE a_location LIKE '%$search%' OR a_artist LIKE '%$search%' OR a_title LIKE '%$search%' ";
		$result = mysqli_query($link, $sql);
		$queryResult = mysqli_num_rows($result);

		echo "<div class='results_txt'><h2>There are <span class='badge badge-secondary'>" .$queryResult." </span> results!</h2></div>";

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





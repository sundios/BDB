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

		echo "<h2>There are ".$queryResult." results!</h2>";

		if($queryResult > 0) {
			while ($row = mysqli_fetch_assoc($result)) {
				echo "<div class='artwork-box'>
				<h3>".$row['a_artist']."</h3>
				<p>".$row['a_title']."</p>
				<p>".$row['a_location']."</p>
				<img src=".$row['a_img'].">
				<a href='artwork.php?title=".$row['a_title']."&location=".$row['a_location']."'>
				<button type='button' class='btn btn-info'>Info</button></a>
			</div>";
			}
		} else { 
			echo "There are no results matching your search!";
		}
	}
?>

	
</div>
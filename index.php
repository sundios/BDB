<?php 
	include 'header.php'
?>

<div class="container">
	<div class="logo">
		<img src="images/logo2.svg">
	</div>
	<div class="typewriter">
  <h1>Search a location, artist or year////</h1>
</div>
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

  <!-- <h1> Front Page</h1>
					<h2> All Artist </h2>

  <div class="artwork-container">
	<?php
	$sql = "SELECT * FROM artwork";
	$result = mysqli_query($link, $sql);
	$queryResults = mysqli_num_rows($result);


	if($queryResults > 0){
		while($row = mysqli_fetch_assoc($result)){
			echo "<div class='artwork-box'>
				<h3>".$row['a_artist']."</h3>
				<p>".$row['a_title']."</p>
				<p>".$row['a_location']."</p>
				<img src=".$row['a_img'].">
			</div>";
		}
	}
						
	?>
</div> -->
</div>


</body>
</html>

<?php
include 'footer.php'
?>


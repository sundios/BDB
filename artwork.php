<?php 
	include 'header.php'
?>

<div class="container">
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

  <h1> Artwork Page</h1>


  <div class="artwork-container">
  	<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="..." class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
	<?php
		$title= mysqli_real_escape_string($link, $_GET['title']);
		$location = mysqli_real_escape_string($link, $_GET['location']);

	$sql = "SELECT * FROM artwork WHERE a_title='$title' AND a_location='$location'";
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
</div>
</div>


</body>
</html>


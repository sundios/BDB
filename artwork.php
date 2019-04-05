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


  <div class="artwork-container2">
  
	<?php
		$title= mysqli_real_escape_string($link, $_GET['title']);
		$location = mysqli_real_escape_string($link, $_GET['location']);

	$sql = "SELECT * FROM murals m INNER JOIN location l on l.l_id = m.l_id INNER JOIN artist a  on a.a_id = m.a_id WHERE m.title='$title'";
	$result = mysqli_query($link, $sql);
	$queryResults = mysqli_num_rows($result);

	if($queryResults > 0){
		while($row = mysqli_fetch_assoc($result)){
			echo "
      <div class='jumbotron jumbotron-fluid'>
        <div class='container'>
          <h1 class='display-4'>".$row['title']."</h1>
            <p class='lead'>".$row['about']."</p>
              <p>".$row['name']."</p>
              <h2> Where it is located? </h2>
                <p>".$row['city']. ', ' .$row['country']. "</p>
                <p>".$row['address']. ', ' .$row['a_number']. "</p>
        </div>
      </div>
      <div class='artwork-box'>		
				<img src=".$row['imageurl'].">
			</div>";
		}
	}
						
	?>
</div>
</div>


</body>
</html>






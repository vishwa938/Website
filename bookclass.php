<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Stepper</title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,600,700|Roboto:300,400,700&display=swap"
    rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Oswald:500,600" rel="stylesheet">
<style>
  .cardContainer {
	position: relative;
	width: 300px;
	height: 400px;
	min-width: 300px;
	min-height: 400px;
	margin: 4px;
	perspective: 1000px;
  }
  
  .active {
	transform: translateZ(0px) rotateY(180deg) !important;
  }
  .active:after {
	display: none;
  }
  
  .card {
	display: inline-block;
	width: 100%;
	height: 100%;
	cursor: pointer;
	-moz-backface-visibility: hidden;
	transform-style: preserve-3d;
	transform: translateZ(-100px);
	transition: all 0.4s cubic-bezier(0.165, 0.84, 0.44, 1);
  }
  .card:after {
	content: "";
	position: absolute;
	z-index: -1;
	width: 100%;
	height: 100%;
	border-radius: 5px;
	box-shadow: 0 14px 50px -4px rgba(0, 0, 0, 0.15);
	opacity: 0;
	transition: all 0.6s cubic-bezier(0.165, 0.84, 0.44, 1.4);
  }
  .card:hover {
	transform: translateZ(0px);
  }
  .card:hover:after {
	opacity: 1;
  }
  .card .side {
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	position: absolute;
	width: 100%;
	height: 100%;
	border-radius: 5px;
	background-color: white;
  }
  .card .front {
	z-index: 2;
  }
  .card .back {
	transform: rotateY(180deg);
  }
  .card .info {
	padding: 16px;
  }
  
  .front .img {
	background-color: #dadce2;
	background-position: center;
	background-size: cover;
	border-radius: 5px 5px 0 0;
	width: 100%;
	height: 250px;
  }
  .front .img1 {
	background-image: url(http://i.imgur.com/1aE1nMA.jpg);
  }
  .front .img2 {
	background-image: url(http://i.imgur.com/2p9VXAn.jpg);
  }
  .front .img3 {
	background-image: url(http://i.imgur.com/I5ABT2v.jpg);
  }
  
  .back {
	position: relative;
  }
  .back h2 {
	margin-top: 6px;
	margin-bottom: 18px;
  }
  .back .reviews {
	display: flex;
	align-items: center;
	margin-bottom: 12px;
	cursor: pointer;
  }
  .back .reviews p {
	color: #c4c4c4;
	font-weight: 300;
	margin: 1px 0 0 6px;
	transition: 0.3s ease-in-out;
  }
  .back .reviews:hover p {
	color: #555;
  }
  .back li {
	line-height: 22px;
	margin: 2px 0 6px 0;
  }
  .back .btn {
	position: absolute;
	bottom: 16px;
	width: calc(100% - 32px);
	height: 56px;
	display: flex;
	align-items: center;
	justify-content: center;
	background-color: #FFC324;
	background-image: linear-gradient(-90deg, #FFB714, #FFE579);
	border-radius: 5px;
	cursor: pointer;
  }
  .back .btn:hover h4 {
	transform: translateX(0px);
  }
  .back .btn:hover svg {
	transform: translateX(0px);
	opacity: 1;
  }
  .back .btn h4 {
	transform: translateX(12px);
	transition: transform 0.3s ease-out;
  }
  .back .btn svg {
	margin: 1px 0 0 4px;
	transform: translateX(-8px);
	opacity: 0;
	transition: all 0.3s ease-out;
  }
</style>
</head>

<body class="dance_page">

  <div class="hero_area">
    <!-- header section strats -->
    <?php include "navbar.php" ?>
    <!-- end header section -->

    <!-- master section -->
    <section class="master_section">
      <h2>
        Book Your Dance Batches
      </h2>
      <div class="master_custom-container">
        <div class="row">
        <?php
                    $i=1;
                    include 'connection.php';
                    $query = "SELECT * FROM batches";
                    $result = $conn->query($query);
                    if ($result->num_rows > 0 ){
                    while ($row = $result->fetch_object()){ 
                    ?>
   
          <div class="col-md-4">
          <div class="cardContainer inactive">
  <div class="card">
    <div class="side front">
      <div class="img" style="background-image: url(<?php echo 'Admin/batchesuploads/'.$row->image;?>)"></div>
      <div class="info">
        <h2 style="color:black !important"><?php echo $row->bname ?></h2>
       
      </div>
    </div>
    <div class="side back">
      <div class="info">
        <h2>At a glance</h2>
        <div class="reviews">
          <svg fill="#FFC324" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M0 0h24v24H0z" fill="none"/><path d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"/><path d="M0 0h24v24H0z" fill="none"/></svg>
          <svg fill="#FFC324" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M0 0h24v24H0z" fill="none"/><path d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"/><path d="M0 0h24v24H0z" fill="none"/></svg>
          <svg fill="#FFC324" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M0 0h24v24H0z" fill="none"/><path d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"/><path d="M0 0h24v24H0z" fill="none"/></svg>
          <svg fill="#FFC324" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M0 0h24v24H0z" fill="none"/><path d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"/><path d="M0 0h24v24H0z" fill="none"/></svg>
          <svg fill="#FFC324" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <defs><path d="M0 0h24v24H0V0z" id="a"/></defs><clipPath id="b"><use overflow="visible" xlink:href="#a"/></clipPath><path clip-path="url(#b)" d="M22 9.24l-7.19-.62L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21 12 17.27 18.18 21l-1.63-7.03L22 9.24zM12 15.4V6.1l1.71 4.04 4.38.38-3.32 2.88 1 4.28L12 15.4z"/>
          </svg>
         
        </div>
        <ul>
        
          <li> batch Time:  <?php echo $row->btime ?></li>
          <li> <?php echo $row->btype ?></li>
        </ul>
        <div class="btn">
          <a href="bookdance.php?id=<?php echo $row->id ?>">Book</a>
          <svg fill="#333" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M8.59 16.34l4.58-4.59-4.58-4.59L10 5.75l6 6-6 6z"/><path d="M0-.25h24v24H0z" fill="none"/></svg>
        </div>
      </div>
    </div>
  </div>
</div>
           
          </div>
          <?php
                      $i++;
                    }
                }
                      ?>

         
          </div>
        </div>
       
      </div>

    </section>
   

    <!-- end master section -->


    <!-- info section -->
    <?php include "footer.php" ?>
    <!-- footer section -->

    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
                <script>
                  
const cards = document.querySelectorAll('.card');

function transition() {
  if (this.classList.contains('active')) {
    this.classList.remove('active')
  } else {
    this.classList.add('active');
  }
}

cards.forEach(card => card.addEventListener('click', transition));
 </script>




</body>

</html>
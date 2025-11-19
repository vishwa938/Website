<?php

include "connection.php";
if(isset($_POST["submit"]))
{
    $bookid =$_POST["id"];
    $name= $_POST["name"];
    $email= $_POST["email"];
    $phone= $_POST["phone"];
    $address= $_POST["address"];
    $status="pending";
    $imagename= $_FILES['image'] ['name'];
    $imageTemname= $_FILES['image'] ['tmp_name'];
    $tarpath= "bookuploads/";
           
            $query="INSERT INTO bookdance(bookid,name,email,phone,address,image,status)VALUES('$bookid','$name','$email','$phone','$address','$imagename','$status')";
            $run=$conn->query($query)or die("Error in saving data".$conn->error);
if($run)
{
    move_uploaded_file($imageTemname, $tarpath.$imagename);
    echo '<script>alert("Successfully inserted")</script>';
    echo '<script>window.location.href="bookclass.php";</script>';
}
  }
?>
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
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
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
      <h2>Personal details</h2>
      <form action="bookdance.php" method="POST" enctype="multipart/form-data" >
      <?php
            $i=0;
            include "connection.php";
            $id= (isset($_GET['id']) ? $_GET['id'] : '');
            $query = "SELECT * FROM batches WHERE id='$id' ";
                $result = $conn->query($query);
                if ($result->num_rows > 0 ){
                     while ($row = $result->fetch_object()){ 
                     
                    
        ?>  
        <div class="row">
      
       <div class="mb-3 mt-3">
       <input type="hidden" class="form-control" name="id" value="<?php echo $row->id ?>" >
     <span><label style="color:white">Name</label> <input type="text" name="name" class="form-control" placeholder="Enter your Name" required></span>
</div>
 <div class="mb-3 mt-3">
<span><label style="color:white">Email</label>  <input type="text" name="email" class="form-control" placeholder="Enter your Name" required></span>
</div>
 <div class="mb-3 mt-3">
<span><label style="color:white">Phone</label>  <input type="text" name="phone" class="form-control" placeholder="Enter your Name" required></span>
</div>
 <div class="mb-3 mt-3">
<span><label style="color:white">Address</label> <textarea name="address" placeholder="Enter your Name" class="form-control" required></textarea></span>
</div>
 <div class="mb-3 mt-3">
<span><label style="color:white">Image</label>  <input type="file" class="form-control" name="image" required></span>
</div>
<div class="mb-3 mt-3">
    <input type="submit" name="submit" value="Book" />
</div>
       
    </div>
         
          </div>
          <?php }} ?>
</form>
        </div>
       

    </section>
    <!-- end master section -->


    <!-- info section -->
    <?php include "footer.php" ?>
    <!-- footer section -->

    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>





</body>

</html>
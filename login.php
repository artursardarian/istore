<?php
  if(!empty($_POST['paswd'])){
     $pass = "arturweb";
    if($_POST['paswd']==$pass){
      session_start();
	  $_SESSION['auth']=true; 
      header("Location: admin.php") ;
    }
    else {
       header("Location: 404.php") ;
    }
  }
  else
  {
    ?>
    
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
	<link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
    <title>Âõ³ä</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Scada" rel="stylesheet">
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet">

  </head>

  <body>

    <!-- Header -->
	<?php include("include/block-header.php");?>

    <!-- Page Content -->
    <div class="container">

      <div class="row">
        <!-- /.col-lg-3 -->

        <div class="col-lg-12">

		<form method="POST">
		  <input type="text" name="paswd" required />
		  <input type="submit" value="Âõ³ä" />
		</form>

        </div>
        <!-- /.col-lg-12 -->

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <?php include("include/block-footer.php"); ?>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/shop-script.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>
</html>
	
	<?php
  }
?>
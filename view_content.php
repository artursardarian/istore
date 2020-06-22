<?php 
	include("include/dbconnect.php");
	include("functions/functions.php");
		
	$id = clear_string($_GET["id"]);
		
	class Exchanger{
		private static $result = null;
		
		public static function getCurrency(){
			if (self::$result == null){
				$xml = simplexml_load_file("https://api.privatbank.ua/p24api/pubinfo?exchange&coursid=5");
				$result = bcadd(($xml->row[0]->exchangerate['sale']),0,2);
				return $result;
			}
			else 
				return $result;
		}
	}

	$USD = Exchanger::getCurrency();
	//echo("Курс долара: ".$USD);	
		
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
    <title>Інтернет-магазин комп'ютерної техніки</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Scada" rel="stylesheet">
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet">
  </head>
  <body>
	<?php include("include/block-header.php");?>
    <div class="container">
      <div class="row">
        <div class="col-lg-3">
		<?php include("include/block-category.php"); ?>
        </div>
        <div class="col-lg-9">
          <div class="row">
			<?php 
			$result1 = mysqli_query($link,"SELECT * FROM table_products WHERE products_id='$id' AND visible='1'");
			if (mysqli_num_rows($result1) > 0)
			{
			$row1 = mysqli_fetch_array($result1);
			do
			{
			$img_path = $row1["image"];
				/* Виводимо декілька зображень
				for ($i = 1; $i <= 10; $i++) {
					$plus += $plus + 1;
				}
				*/
				include("include/modal-order.php");
			echo '
			<div class="my-4 col-md-12">
			<div id="block-breadcrumbs-and-rating">
			<p id="nav-breadcrumbs"><a href="index.php">Головна сторінка</a> \ <span>'.$row1["brand"].'</span></p>
			</div>
			
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-5">
					<img style="border:1px solid #dfdfdf;" src="'.$img_path.'" width="100%" />
					</div>
					<div class="col-md-7">
						<div class="row">
							<div class="col-md-12">
							<h1>'.$row1["title"].'</h1>
							<hr />
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
							<h2>Ціна: '.$row1["price"].'грн ($'.bcadd(($row1["price"])/$USD,0,2).')</h2>
							<hr />
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
							<a href="#" data-toggle="modal" data-target="#exampleModal"><div id="order-button"><i class="fas fa-shopping-cart"></i> Замовити</button></div></a>
							<hr />
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
							<div id="block-information">
								<p><i class="fa fa-truck fa-lg" aria-hidden="true"></i> Доставка по всій Україні</p>
								<hr />
								<p><i class="fa fa-check-square fa-lg" aria-hidden="true"></i> Гарантія 12 місяців офіційної гарантії від виробника (детальніше)</p>
								<hr />
								<p><i class="fa fa-undo fa-lg" aria-hidden="true"></i> Обмін/повернення товару впродовж 14 днів</p>
								<hr />
								<p><i class="far fa-money-bill-alt fa-lg"></i> Оплата Готівкою під час отримання (умови доставки)</p>
							</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div id="tabs">
						<nav>
						  <div class="nav nav-tabs" id="nav-tab" role="tablist">
							<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Опис</a>
							<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Характеристики</a>
						  </div>
						</nav>
							<div class="tab-content" id="nav-tabContent">
							  <div class="tab-pane fade show active" style="padding:10px;" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">'.$row1["description"].'</div>
							  <div class="tab-pane fade" style="padding:10px;" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">'.$row1["features"].'</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			</div>

			';
			}
				while ($row1 = mysqli_fetch_array($result1));
			}
			?>
          </div>
        </div>
      </div>
    </div>
	
    <?php include("include/block-footer.php"); ?>

    <script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/shop-script.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
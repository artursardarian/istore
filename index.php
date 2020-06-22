<?php 
	include("include/dbconnect.php");
	include("functions/functions.php");

	$sorting = $_GET["sort"];
	switch ($sorting)
	{
		case 'price-asc';
		$sorting = 'price ASC';
		$sort_name = 'Від дешевих до дорогих';
		break;
		
		case 'price-desc';
		$sorting = 'price DESC';
		$sort_name = 'Від дорогих до дешевих';
		break;
		
		case 'news';
		$sorting = 'datetime DESC';
		$sort_name = 'Новинки';
		break;
		
		case 'brand';
		$sorting = 'brand ASC';
		$sort_name = 'Від А до Я';
		break;
		
		default:
		$sorting = 'products_id DESC';
		$sort_name = 'Без сортування';
		break;
	}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="shop">
    <meta name="author" content="arturweb">
	<link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
    <title>Інтернет-магазин комп'ютерної техніки</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Scada" rel="stylesheet">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
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
			<?php include("include/slider.php"); ?>
			<div class="row">
			<div class="col-md-12" id="block-sorting">
			<p id="nav-breadcrumbs"><a href="index.php">Головна сторінка</a> > <span>Всі товари</span></p>
			<ul id="options-list">
			<li>Сортування: </li>
			<li><a id="select-sort"><?php echo $sort_name; ?></a>
			<ul id="sorting-list">
			<li><a href="?sort=price-asc">Від дешевих до дорогих</a></li>
			<li><a href="?sort=price-desc">Від дорогих до дешевих</a></li>
			<li><a href="?sort=news">Новинки</a></li>
			<li><a href="?sort=brand">Від А до Я</a></li>
			</ul>
			</li>
			</ul>
			</div>
			<?php
			$num = 6; // Скільки товарів виводиться на сторінці
			$page = (int)$_GET['page'];
			
			$count = mysqli_query($link,"SELECT COUNT(*) FROM table_products WHERE visible='1'");
			$temp = mysqli_fetch_array($count);
			if ($temp[0] > 0){
				$tempcount = $temp[0];
				// Шукаєм загальну к-сть сторінок
				$total = (($tempcount - 1) / $num) + 1;
				$total = intval($total);
				
				$page = intval($page);
				
				if(empty($page) or $page < 0) $page = 1;
				if($page > $total) $page  = $total;
				
				// Рахуємо починаючи з якого номера варто виводити товари
				$start = $page * $num - $num;
				$qury_start_num = " LIMIT $start, $num";
			}
			
				$result = mysqli_query($link,"SELECT * FROM table_products WHERE visible='1' ORDER BY $sorting $qury_start_num");
				if (mysqli_num_rows($result) > 0){
					$row = mysqli_fetch_array($result);	
					do{
						$img_path = $row["image"];
						for ($i = 1; $i <= 10; $i++) {
							$plus += $plus + 1;
						}

						echo '
						<div class="col-lg-4 col-md-6 mb-4">
						  <div class="card h-100">
							<a href="view_content.php?id='.$row["products_id"].'"><img class="card-img-top" src="'.$img_path.'"></a>
							<div class="card-body">
							  <h5 class="card-title">
								<a href="view_content.php?id='.$row["products_id"].'">'.$row["title"].'</a>
							  </h5>
							  <p class="card-text">'.$row["mini_description"].'</p>
							</div>
							<div class="card-footer">
							  <strong class="text-muted">'.$row["price"].'грн</strong>
							  <div class="add-cart-block"><a href="" data-toggle="modal" data-target="#exampleModal'.$plus.'"><button id="add-cart"><i class="fas fa-shopping-cart fa-lg"></i></button></a></div>
							  <div class="review-block"><a href="view_content.php?id='.$row["products_id"].'"><button id="review"><i class="fas fa-info-circle fa-lg"></i></button></a></div>
							</div>
						  </div>
						</div>
						
						
						<div class="modal fade" id="exampleModal'.$plus.'" tabindex="-1" role="dialog" aria-labelledby="exampleModal" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h3>Оформити замовлення</h3>
										<button class="close" type="button" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
										<div class="col-md-12 py-3">
											<div class="col-md-5" style="float:left;">
												<img src="'.$img_path.'" width="100%" />
											</div>
											<div class="row col-md-7">
												<div class="col-md-12">
													<p id="content-title">Назва товару: <b>'.$row["title"].'</b></p>
													<hr />
												</div>
												<div class="col-md-12">
														<p id="style-price">Загальная ціна: <b>'.$row["price"].'грн</b></p>
												</div>
												<form class="order_form" action="send.php" method="POST">
												<div class="col-md-12">
														<input name="count" placeholder="Кількість" type="number"/> 
												</div>
											</div>
										</div>
									<hr width="100%" style="margin-top:4px;" />
									
										<div class="row">
											<div class="col-md-12">
												<div class="row text-center order-form">
													<input type="hidden" name="ordername" value="'.$row["title"].'"/>
													<div class="col-md-12">
													<input class="col-md-5 col-10" type="text" name="firstname" placeholder="Ім&#039;я *" required/>
													<input class="col-md-5 col-10" type="text" name="lastname" placeholder="Прізвище *" required/>
													<input class="col-md-5 col-10" type="text" name="city" placeholder="Місто *" required/>
													<input class="col-md-5 col-10" type="text" name="post" placeholder="Відділення пошти *" required/>
													<input class="col-md-5 col-10" type="text" name="phone" placeholder="Номер телефону *" required/>
													<input class="submit_button col-md-5 col-10" type="submit" value="Замовити" />
													</div>
												</div>
											</div>
										</div>
									</form>
									<br />
								</div>
							</div>
						</div>
						';
					}
					while($row = mysqli_fetch_array($result));
				}
				
				if ($page != 1) {$pstr_prev = '<li><a class="pstr-prev" href="?page="'.($page - 1).'">&laquo;</a></li>';}
				if ($page != $total) $pstr_next = '<li><a class="pstr-next" href="?page='.($page + 1).'">&raquo;</a></li>';
				
				// Формуємо силки зі сторінками
				if($page - 5 > 0) $page5left = '<li><a href="?page='.($page - 5).'">'.($page - 5).'</a></li>';
				if($page - 4 > 0) $page4left = '<li><a href="?page='.($page - 4).'">'.($page - 4).'</a></li>';
				if($page - 3 > 0) $page3left = '<li><a href="?page='.($page - 3).'">'.($page - 3).'</a></li>';
				if($page - 2 > 0) $page2left = '<li><a href="?page='.($page - 2).'">'.($page - 2).'</a></li>';
				if($page - 1 > 0) $page1left = '<li><a href="?page='.($page - 1).'">'.($page - 1).'</a></li>';
				
				if($page + 5 <= $total) $page5right = '<li><a href="?page='.($page + 5).'">'.($page + 5).'</a></li>';
				if($page + 4 <= $total) $page4right = '<li><a href="?page='.($page + 4).'">'.($page + 4).'</a></li>';
				if($page + 3 <= $total) $page3right = '<li><a href="?page='.($page + 3).'">'.($page + 3).'</a></li>';
				if($page + 2 <= $total) $page2right = '<li><a href="?page='.($page + 2).'">'.($page + 2).'</a></li>';
				if($page + 1 <= $total) $page1right = '<li><a href="?page='.($page + 1).'">'.($page + 1).'</a></li>';
				
				if ($page+5 < $total){
					$strtotal = '<li><p class="nav-point">...</p></li><li><a href="?page='.$total.'">'.$total.'</a></li>';
				}else{
					$strtotal = "";
				}
				
				if ($total > 1){
					echo '
					<div class="pstrnav">
					<ul>
					';
					echo $pstr_prev.$page5left.$page4left.$page3left.$page2left.$page1left."<li><a class='pstr-active' href='?page=".$page."'>".$page."</a></li>".$page1right.$page2right.$page3right.$page4right.$page5right.$strtotal.$pstr_next;
					echo '
					</ul>
					</div>
					';
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
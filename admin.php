<?php
include "include/dbconnect.php";
	session_start();
	if ($_SESSION['auth'] == true) {
		$role = $_SESSION['role'];
	}
    else {
       header("Location: 404.php") ;
    }
	
class Role{
	public function checkPermission($action)
	{
		if(isset ($this->$action))
		{
			return $this->$action;
		}
		return false;
	}
}

  class admin extends Role{
    protected $addItem = true;
    protected $editItem = true;
    protected $deleteItem = true;
  }
  class moderator extends Role{
    protected $addItem = true;
    protected $editItem = true;
    protected $deleteItem = false;
  }
  class publicator extends Role{
    protected $addItem = true;
    protected $editItem = false;
    protected $deleteItem = false;
  }

  class Factory{
    public static function createUsers($role) : Role{
      if(class_exists($role))
        return new $role;
      else
        echo ("Роль ".$role." відсутня");
    }
  }

  $login = Factory::createUsers($role);
  //var_dump($login);
   
  if ($login->checkPermission('editItem')){
     echo 'працює';
  };

?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous" />
	<link href="https://fonts.googleapis.com/css?family=Scada" rel="stylesheet" />
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/shop-homepage.css" rel="stylesheet" />
	<title>Панель управління адміністратора</title>
</head>
<body>
	<!--Меню-->
	<?php include "include/block-header.php";?>

	<div class="container">
		<div class="row my-5">
			<div class="col-12 col-lg-12"><center><h1>Панель управління (<?echo $role;?>)</h1><hr /></center></div>
			<div class="col-lg-4">
				<form action="" method="POST">
					<? if($login->checkPermission('addItem')){echo '<input type="submit" class="btn btn-outline-dark form-control" name="product_add" value="Додати товар" active>';}?>
					<? if($login->checkPermission('editItem')){echo '<input type="submit" class="btn btn-outline-dark form-control my-1" name="product_change" value="Редагувати товар">';}?>
					<? if($login->checkPermission('deleteItem')){echo '<input type="submit" class="btn btn-outline-dark form-control" name="product_delete" value="Видалити товар">';}?>
				</form>
			</div>
			<div class="col-lg-8">
				<script>
					document.addEventListener('DOMContentLoaded', function(){
						var d = new Date();
						var day = d.getDate();
						var month = d.getMonth() + 1;
						var year = d.getFullYear();
						var hour = d.getHours();
						var minute = d.getMinutes();
						var second = d.getSeconds();
						var name_input = document.getElementById('datetime')
						name_input.value = year+"."+month+"."+day+" "+hour+":"+minute+":"+second;
					});
				</script>
				<form action="" method="POST" role="form">
					<?php
					if(isset($_POST['product_add']) or isset($_POST['add']))
					{
						?>
						<div class="form-group">
							<?php
							if (isset($_POST["title"])) {
							$title = htmlspecialchars($_POST['title']);
							$query = "SELECT * FROM table_products WHERE title='$title';";
							$res = mysqli_query ($link,$query);
							$alluser = mysqli_fetch_array ($res);
							if($title != $alluser['title'])
							{
							$sql = mysqli_query($link,"INSERT INTO table_products (title,price,brand,mini_description,description,image,features,type_category,datetime) VALUES
							('".$_POST["title"]."','".$_POST['price']."','".$_POST['brand']."','".$_POST['mini_description']."','".$_POST['description']."','".$_POST['image']."','".$_POST['features']."','".$_POST['type_category']."','".$_POST['datetime']."')");
							echo "<h4>Товар успішно додано!</h4>";
							}
							else
							{
							echo "<h4>Такий товар вже є!</h4>";
							}
							}
							?>
							<input type="text" name="title" class="form-control" placeholder="Назва товару" required />
						</div>
						<div class="form-group">
							<input type="text" name="price" class="form-control" placeholder="Ціна товару" required />
						</div>
						<div class="form-group">
							<input type="text" name="brand" class="form-control" placeholder="Назва бренду" required />
						</div>
						<div class="form-group">
							<textarea rows="4" class="form-control" name="mini_description" placeholder="Короткий опис"></textarea>
						</div>
						<div class="form-group">
							<textarea rows="6" class="form-control" name="description" placeholder="Повний опис" required ></textarea>
						</div>
						<div class="form-group">
							<input type="text" name="image" class="form-control" placeholder="Адреса зображення" />
						</div>
						<div class="form-group">
							<textarea rows="4" class="form-control" name="features" placeholder="Характеристики"></textarea>
						</div>
						<div class="form-group">
							<label>Дата добавлення </label>
							<input type="text" name="datetime" id="datetime" readonly />
						</div>
						<div class="form-group">
							<label for="">Категорія</label>
							<select name="type_category" multiple="3" class="form-control" required>
								<option value="notebook">Ноутбуки</option>
								<option value="phone">Смартфони</option>
								<option value="monitor">Монітори</option>
								<option value="processor">Процесори</option>
								<option value="videocard">Відеокарти</option>
								<option value="keyboard">Клавіатури</option>
								<option value="earphone">Навушники</option>
								<option value="webcam">Веб-камери</option>
							</select>
						</div>
						<input type="submit" class="btn btn-primary" name="add" value="Додати" />
					</form>
					<?php
				}
				?>
				<?php
				if(isset($_POST['product_change']) or isset($_POST['change-btn']) or isset($_POST['change']))
					{?>
						<form method="POST" role="form">	
							<?php
							if(isset($_POST['change']))
							{
								$id=$_SESSION['products_id'];
								$price=$_POST['price'];
								$brand=$_POST['brand'];
								$description=$_POST['description'];
								$image=$_POST['image'];
								$features=$_POST['features'];
								$type_category=$_POST['type_category'];
								mysqli_query($link,"UPDATE table_products SET price='$price',brand='$brand',description='$description',image='$image',features='$features',type_category='$type_category' WHERE products_id='$id'");
								echo "<h4 class='text-center text-success'>Товар оновлено</h4>";
							}
							/*Cкрипт вводу данних у таблицю*/
							$result_set=mysqli_query($link,"SELECT products_id,title FROM table_products");
							echo"
							<div class='form-group'>
							<p>Виберіть товар для редагування</p>
							<select name='product_number' class='form-control'><option value=''></option>";
							while ($row = $result_set->fetch_assoc())
							{
								echo "<option value='".$row['products_id']."'>".$row['title']."</option>";
							}
							echo "</select><input type='submit' class='btn btn-primary my-2' name='change-btn' value='Обрати' /></div>";
							if(isset($_POST['change-btn']))
							{
								$id=$_POST['product_number'];
								$_SESSION['products_id']=$id;
								$update=mysqli_query($link,"SELECT * FROM table_products WHERE products_id='$id'");
								$row=$update->fetch_assoc();
								echo '
								<div class="form-group">
									<label for="">Назва товару</label>
									<input type="text" name="title" class="form-control" placeholder="Назва товару" value="'.$row['title'].'" disabled>
								</div>
								<div class="form-group">
									<label for="">Ціна товару</label>
									<input type="text" name="price" class="form-control" placeholder="Ціна товару" value="'.$row['price'].'">
								</div>
								<div class="form-group">
									<label for="">Бренд</label>
									<input type="text" name="brand" class="form-control" placeholder="Бренд" value="'.$row['brand'].'">
								</div>
								<div class="form-group">
									<label for="">Короткий опис</label>
									<textarea class="form-control" name="mini_description" placeholder="Опис">'.$row['mini_description'].'</textarea>
								</div>
								<div class="form-group">
									<label for="">Опис</label>
									<textarea class="form-control" name="description" placeholder="Опис">'.$row['description'].'</textarea>
								</div>
								<div class="form-group">
									<label for="">Адреса зображення</label>
									<input type="text" name="image" class="form-control" placeholder="Адреса зображення" value="'.$row['image'].'">
								</div>
								<div class="form-group">
									<label for="">Характеристики</label>
									<textarea class="form-control" name="features" placeholder="Характеристики">'.$row['features'].'</textarea>
								</div>
								<div class="form-group">
									<label for="">Категорія</label>
									<select name="type_category" multiple="3" class="form-control" value="'.$row['type_category'].'">
									<option value="notebook">Ноутбуки</option>
									<option value="phone">Смартфони</option>
									<option value="monitor">Монітори</option>
									<option value="processor">Процесори</option>
									<option value="videocard">Відеокарти</option>
									<option value="keyboard">Клавіатури</option>
									<option value="earphone">Навушники</option>
									<option value="webcam">Веб-камери</option>
									</select>
								</div>
								<input type="submit" class="btn btn-primary" name="change" value="Оновити" />
								';
							}
							?>
						</form>
						<?php
					}

					if(isset($_POST['product_delete']) or isset($_POST['delete-btn']) or isset($_POST['delete']))
						{?>

							<?php
							mysqli_error($link);
							if(isset($_POST['delete']))
							{
								$id=$_SESSION['products_id'];
								mysqli_query($link,"DELETE FROM table_products WHERE products_id='$id'");	
								echo "<h4 class='text-center text-success'>Товар було видалено</h4>";
							}
							/*Cкрипт вводу данних у таблицю*/
							$result_set=mysqli_query($link,"SELECT products_id,title FROM table_products");
							echo"
							<div class='form-group'>
							<p>Виберіть товар для видалення</p>
							<select name='product_number' class='form-control' >";
							while ($row = $result_set->fetch_assoc())
							{
								echo "<option value='".$row['products_id']."'>".$row['title']."</option>";
							}
							echo"
							</select>
							<input type='submit' class='btn btn-primary my-2' name='delete-btn' value='Обрати'>
							</div>
							";
							if(isset($_POST['delete-btn']))
							{
								$id=$_POST['product_number'];
								$_SESSION['products_id']=$id;
								$update=mysqli_query($link,"SELECT * FROM table_products WHERE products_id='$id'");
								$row=$update->fetch_assoc();
							}
							?>	
							<form method="POST" role="form">	
								<div class="form-group">
									<label for="">Назва товару</label>
									<input type="text" name="title" class="form-control" placeholder="Назва товару" value="<?php echo $row['title'];?>" disabled>
								</div>
								<div class="form-group">
									<label for="">Ціна товару</label>
									<input type="text" name="price" class="form-control" placeholder="Ціна товару" value="<?php echo $row['price'];?>" disabled>
								</div>
								<div class="form-group">
									<label for="">Бренд</label>
									<input type="text" name="brand" class="form-control" placeholder="Бренд" value="<?php echo $row['brand'];?>"  disabled>
								</div>
								<div class="form-group">
									<label for="">Опис</label>
									<textarea class="form-control" name="description" placeholder="Опис" disabled><?php echo $row['description'];?></textarea>
								</div>
								<div class="form-group">
									<label for="">Адреса зображення</label>
									<input type="text" name="image" class="form-control" placeholder="Адреса зображення" value="<?php echo $row['image'];?>" disabled>
								</div>
								<div class="form-group">
									<label for="">Характеристики</label>
									<textarea class="form-control" name="features" placeholder="Характеристики" disabled><?php echo $row['features'];?></textarea>
								</div>
								<div class="form-group">
									<label for="">Категорія</label>
									<input type="text" class="form-control" name="type" placeholder="Категорія" disabled value='<?php echo $row['type_category'];?>'>
								</div>
								<input type="submit" class="btn btn-danger" name="delete" value="Видалити">
							</form>
							<?php
						}
						?>
					</div>
				</div>
			</div>

    <!-- Footer -->
    <?php include("include/block-footer.php"); ?>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/shop-script.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	</body>
</html>
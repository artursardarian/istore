 <?php
session_start();
	if(!empty($_POST['paswd'])){
		if($_POST['paswd']=='admin'){
			$_SESSION['auth'] = true;
			$_SESSION['role'] = 'admin';
			header("Location: admin.php") ;
		}
		elseif($_POST['paswd']=='moderator'){
			$_SESSION['auth'] = true;
			$_SESSION['role'] = 'moderator';
			header("Location: admin.php") ;
		}
		elseif($_POST['paswd']=='publicator'){
			$_SESSION['auth'] = true;
			$_SESSION['role'] = 'publicator';
			header("Location: admin.php") ;
		}
		else {
			
		}
	}
	else
	{
    ?>
				<div class="modal fade" id="exampleModallogin" tabindex="-1" role="dialog" aria-labelledby="exampleModallogin" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h3>Панель управління</h3>
								<button class="close" type="button" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<br />
							<div class="row">
								<div class="col-md-12 px-5 py-2 text-center">
									<?
									if ($_SESSION['auth'] != false) {
										echo '
										<form action="admin.php">
											<input style="padding:5px 20px;" type="submit" value="Панель управління" />
										</form>';
										}
									else {
										echo '<div class="text-center">Введіть пароль адміністратора</div><br />
										<form method="POST">
											<input type="text" placeholder="Пароль" name="paswd" style="-webkit-text-security: disc;" required />
											<input style="padding:5px 20px;" type="submit" value="Вхід"/>
										</form>
									';
									}
									?>
								</div>
							</div>
							<br />
						</div>
					</div>
				</div>
	
    <?php
  }
?>

 <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="/"><b>iStore</b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="/">Головна</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="./guarantee.php">Гарантія</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="./delivery.php">Доставка</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="./contacts.php">Контакти</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="" data-toggle="modal" data-target="#exampleModallogin"><i class="fas fa-key"></i> Адмінпанель</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
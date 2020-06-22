<div class="list-group">
	<h2 class="my-4 menu-1 text-center">Категорії</h2>
	<ul id="categories">
	
	<li class="list-group-item"><span class="categories-name"><img src="/images/notebook-icon.png" class="categories-icon" />Ноутбуки</span>
		<ul class="category-section">
		<?php 
			$result = mysqli_query($link,"SELECT * FROM category WHERE type='notebook'");
			if (mysqli_num_rows($result) > 0){
				$row = mysqli_fetch_array($result);
				do{
					echo '<li><a href="view_cat.php?cat='.strtolower($row["brand"]).'&type='.$row["type"].'"><strong>'.$row["brand"].'</strong></a></li>';
				}
				while ($row = mysqli_fetch_array($result));
			}
		?>
		<li><a href="view_cat.php?type=notebook"><strong>Всі товари</strong></a></li>
		</ul>
	</li>
	
	<li class="list-group-item"><span class="categories-name"><img src="/images/phone-icon.png" class="categories-icon" />Смартфони</span>
		<ul class="category-section">
		<?php 
			$result = mysqli_query($link,"SELECT * FROM category WHERE type='phone'");
			if (mysqli_num_rows($result) > 0){
				$row = mysqli_fetch_array($result);
				do{
					echo '<li><a href="view_cat.php?cat='.strtolower($row["brand"]).'&type='.$row["type"].'"><strong>'.$row["brand"].'</strong></a></li>';
				}
				while ($row = mysqli_fetch_array($result));
			}
		?>
		<li><a href="view_cat.php?type=phone"><strong>Всі товари</strong></a></li>
		</ul>
	</li>
	
	<li class="list-group-item"><span class="categories-name"><img src="/images/monitor-icon.png" class="categories-icon" />Монітори</span>
		<ul class="category-section">
		<?php 
			$result = mysqli_query($link,"SELECT * FROM category WHERE type='monitor'");
			if (mysqli_num_rows($result) > 0){
				$row = mysqli_fetch_array($result);
				do{
					echo '<li><a href="view_cat.php?cat='.strtolower($row["brand"]).'&type='.$row["type"].'"><strong>'.$row["brand"].'</strong></a></li>';
				}
				while ($row = mysqli_fetch_array($result));
			}
		?>
		<li><a href="view_cat.php?type=monitor"><strong>Всі товари</strong></a></li>
		</ul>
	</li>
	
	<li class="list-group-item"><span class="categories-name"><img src="/images/processor-icon.png" class="categories-icon" />Процесори</span>
		<ul class="category-section">
		<?php 
			$result = mysqli_query($link,"SELECT * FROM category WHERE type='processor'");
			if (mysqli_num_rows($result) > 0){
				$row = mysqli_fetch_array($result);
				do{
					echo '<li><a href="view_cat.php?cat='.strtolower($row["brand"]).'&type='.$row["type"].'"><strong>'.$row["brand"].'</strong></a></li>';
				}
				while ($row = mysqli_fetch_array($result));
			}
		?>
		<li><a href="view_cat.php?type=processor"><strong>Всі товари</strong></a></li>
		</ul>
	</li>
	
	<li class="list-group-item"><span class="categories-name"><img src="/images/videocard-icon.png" class="categories-icon" />Відеокарти</span>
		<ul class="category-section">
		<?php 
			$result = mysqli_query($link,"SELECT * FROM category WHERE type='videocard'");
			if (mysqli_num_rows($result) > 0){
				$row = mysqli_fetch_array($result);
				do{
					echo '<li><a href="view_cat.php?cat='.strtolower($row["brand"]).'&type='.$row["type"].'"><strong>'.$row["brand"].'</strong></a></li>';
				}
				while ($row = mysqli_fetch_array($result));
			}
		?>
		<li><a href="view_cat.php?type=videocard"><strong>Всі товари</strong></a></li>
		</ul>
	</li>
	
	<li class="list-group-item"><span class="categories-name"><img src="/images/keyboard-icon.png" class="categories-icon" />Клавіатури</span>
		<ul class="category-section">
		<?php 
			$result = mysqli_query($link,"SELECT * FROM category WHERE type='keyboard'");
			if (mysqli_num_rows($result) > 0){
				$row = mysqli_fetch_array($result);
				do{
					echo '<li><a href="view_cat.php?cat='.strtolower($row["brand"]).'&type='.$row["type"].'"><strong>'.$row["brand"].'</strong></a></li>';
				}
				while ($row = mysqli_fetch_array($result));
			}
		?>
		<li><a href="view_cat.php?type=keyboard"><strong>Всі товари</strong></a></li>
		</ul>
	</li>
	
	<li class="list-group-item"><span class="categories-name"><img src="/images/earphone-icon.png" class="categories-icon" />Навушники</span>
		<ul class="category-section">
		<?php 
			$result = mysqli_query($link,"SELECT * FROM category WHERE type='earphone'");
			if (mysqli_num_rows($result) > 0){
				$row = mysqli_fetch_array($result);
				do{
					echo '<li><a href="view_cat.php?cat='.strtolower($row["brand"]).'&type='.$row["type"].'"><strong>'.$row["brand"].'</strong></a></li>';
				}
				while ($row = mysqli_fetch_array($result));
			}
		?>
		<li><a href="view_cat.php?type=earphone"><strong>Всі товари</strong></a></li>
		</ul>
	</li>
	
	<li class="list-group-item"><span class="categories-name"><img src="/images/webcam-icon.png" class="categories-icon" />Веб-камери</span>
		<ul class="category-section">
		<?php 
			$result = mysqli_query($link,"SELECT * FROM category WHERE type='webcam'");
			if (mysqli_num_rows($result) > 0){
				$row = mysqli_fetch_array($result);
				do{
					echo '<li><a href="view_cat.php?cat='.strtolower($row["brand"]).'&type='.$row["type"].'"><strong>'.$row["brand"].'</strong></a></li>';
				}
				while ($row = mysqli_fetch_array($result));
			}
		?>
		<li><a href="view_cat.php?type=webcam"><strong>Всі товари</strong></a></li>
		</ul>
	</li>
	</ul>
</div>

<div class="list-group">
	<h2 class="menu-2 text-center">Популярні товари</h2>

	<div class="row popular">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-6 col-6">
				<a href="http://technoshop.ml/view_content.php?id=4"><img src="/uploads_images/img3.jpg" width="100%" />
				<p align="center">Acer Aspire 3 A315-21</p></a>
				</div>
				<div class="col-md-6 col-6">
				<a href="http://technoshop.ml/view_content.php?id=1"><img src="/uploads_images/img1.jpg" width="100%" />
				<p align="center">AMD FX-6300 sAM3+ BOX</p></a>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-6">
				<a href="http://technoshop.ml/view_content.php?id=2"><img src="/uploads_images/img2.jpg" width="100%" />
				<p align="center">Asus Radeon R9 270X</p></a>
				</div>
				<div class="col-md-6 col-6">
				<a href="http://technoshop.ml/view_content.php?id=8"><img src="/uploads_images/img7.jpg" width="100%" />
				<p align="center">Apple iPhone X</p></a>
				</div>
			</div>
		</div>
	</div>
</div>
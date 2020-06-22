<?php echo		'
				<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModal" aria-hidden="true">
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
												<p id="style-price">Ціна товару: <b>'.$row["price"].'грн</b></p>
										</div>
										<form class="order_form" action="send.php" method="POST">
										<div class="col-md-12">
												<label>Кількість: </label>
												<input style="width:50%;" name="count" value="1" min="1" step="1" type="number"/> 
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
				'
?>
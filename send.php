<?php
	//Получаем данные из глобальной переменной $_POST, так как мы передаем данные методом POST
	$count = $_POST['count']; // Вытаскиваем имя в переменную
	$firstname = $_POST['firstname']; // Вытаскиваем имя в переменную
	$lastname = $_POST['lastname']; // Вытаскиваем почту в переменную
	$city = $_POST['city']; // Вытаскиваем почту в переменную
	$post = $_POST['post']; // Вытаскиваем почту в переменную
	$phone = $_POST['phone']; // Вытаскиваем почту в переменную
	$ordername = $_POST['ordername']; // Вытаскиваем почту в переменную
	$message = "Назва товару: $ordername<br />Ім'я: $firstname <br />Прізвище: $lastname <br />Телефон: $phone<br />Місто: $city<br />Відділення пошти: $post<br />Кількість товару: $count"; // Формируем сообщение, отправляемое на почту
	$to = "artur_sardaryan@mail.ru"; // Задаем получателя письма
	$from = "zamovlennya@technoshop.ml"; // От кого пришло письмо
	$subject = "Замовлення із сайту technoshop.ml"; // Задаем тему письма
	$headers = "From: $from\r\nReply-To: $to\r\nContent-type: text/html; charset=utf-8\r\n"; // Формируем заголовок письма (при неправильном формировании может ломаться кодировка и т.д.)
	if (mail($to, $subject, $message, $headers)) { // При помощи функции mail, отправляем сообщение, проверяя отправилось оно или нет
		echo '<center><br /><br /><br /><h1 style="font-size: 25pt;color:#fff;font-family:Tahoma;"><b>Ваше замовлення успішно відправлено!</b></h1></center>'; // Отправка успешна
	}
	else {
		echo "<p>Что-то пошло не так, как планировалось</p>"; // Письмо не отправилось
	}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="3; url=index.php">
<title>З вами зв'яжуться!</title>
<meta name="generator">
<style type="text/css">
body
{background:#343A40;}
</style>
<script type="text/javascript">
setTimeout('location.replace("/index.php")', 3000);

</script> 
</head>
<body>
</body>
</html>
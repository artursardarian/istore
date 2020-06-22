<?php
$db_host		= 'localhost';
$db_user		= 'istore';
$db_pass		= 'istorepass';
$db_database	= 'user973336_istore';

$link = mysqli_connect($db_host,$db_user,$db_pass,$db_database);

mysqli_query($link, "SET NAMES utf8");
?>
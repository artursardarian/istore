<?php
session_start();
if ($_SESSION['likeid'] = (int)$_POST["id"])
{
	include("db_connect.php");
	
	$id = (int)$_POST["id"];

$result = mysql_query("SELECT * FROM table_products WHERE products_id = '$id'",$link);
if (mysql_num_rows($result) > 0)
{
$row = mysql_fetch_array($result);

$new_count = $row["likes"] + 1;
$update = mysql_query ("UPDATE table_products SET likes='$new_count' WHERE products_id = '$id'",$link);
echo $new_count;

}
$_SESSION['likeid'] = (int)$_POST["id"];
}
else
{
	echo 'no';
}
?>
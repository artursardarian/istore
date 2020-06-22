<?
$xml = simplexml_load_file("https://api.privatbank.ua/p24api/pubinfo?exchange&coursid=5");

$buyUSD = bcadd(($xml->row[0]->exchangerate['buy']),0,2);
$saleUSD = bcadd(($xml->row[0]->exchangerate['sale']),0,2);
?>
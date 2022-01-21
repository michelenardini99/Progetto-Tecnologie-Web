<?php 
    require_once('handler/bootstrap.php');

//Base Template
$templateParams["titolo"] = "Pokemon List";
//$templateParams["nome"] = "lista-articoli.php";
// $templateParams["categorie"] = $dbh->getCategories();
// $templateParams["articolicasuali"] = $dbh->getRandomPosts(2);

require 'template/tablePage.php';
?>

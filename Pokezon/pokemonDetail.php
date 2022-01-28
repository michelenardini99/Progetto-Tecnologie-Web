<?php 
    require_once('handler/bootstrap.php');

//Base Template
$templateParams["titolo"] = $_GET["id"];
if(isset($dbh -> getActiveUser()[0]['username'])){
    $templateParams["nome"] = ($dbh -> getActiveUser()[0]['username']);
}


// $templateParams["categorie"] = $dbh->getCategories();
// $templateParams["articolicasuali"] = $dbh->getRandomPosts(2);

require 'template/headerTemplate.php';
require 'template/pokemonTemplate.php';
?>


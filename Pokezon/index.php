<?php 
    require_once('handler/bootstrap.php');

//Base Template
$templateParams["titolo"] = "PokeZone";
//$templateParams["nome"] = "lista-articoli.php";
// $templateParams["categorie"] = $dbh->getCategories();
// $templateParams["articolicasuali"] = $dbh->getRandomPosts(2);
            
require 'template/headerTemplate.php';
require 'template/indexTemplate.php';
?>

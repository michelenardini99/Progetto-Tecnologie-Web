<?php 
    require_once('handler/bootstrap.php');

//Base Template
$templateParams["titolo"] = "Add Article";
if(isset($dbh -> getActiveUser()[0]['username'])){
    $templateParams["name"] = ($dbh -> getActiveUser()[0]['username']);
} 
require 'template/headerTemplate.php';

// $templateParams["categorie"] = $dbh->getCategories();
// $templateParams["articolicasuali"] = $dbh->getRandomPosts(2);


require 'template/newArticleTemplate.php';



?>
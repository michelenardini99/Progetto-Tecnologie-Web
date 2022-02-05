<?php 
    require_once('handler/bootstrap.php');

//Base Template
$templateParams["titolo"] = "New Article";
if(isset($dbh -> getActiveUser()[0]['username'])){
    $templateParams["name"] = ($dbh -> getActiveUser()[0]['username']);
}
//$templateParams["name"] = "lista-articoli.php";
// $templateParams["categorie"] = $dbh->getCategories();
// $templateParams["articolicasuali"] = $dbh->getRandomPosts(2);
require 'template/headerTemplate.php';
require 'template/newArticleTemplate.php';
?>



?>
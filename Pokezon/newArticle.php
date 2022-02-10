<?php 
    require_once('handler/bootstrap.php');
$templateParams["titolo"] = "New Article";
if(isset($dbh -> getActiveUser()[0]['username'])){
    $templateParams["name"] = ($dbh -> getActiveUser()[0]['username']);
}
require 'template/headerTemplate.php';
require 'template/newArticleTemplate.php';
?>



?>
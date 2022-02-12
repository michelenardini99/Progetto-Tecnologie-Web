<?php 
    require_once('handler/bootstrap.php');
$templateParams["titolo"] = "Pokemon List";
if(isset($dbh -> getActiveUser()[0]['username'])){
    $templateParams["name"] = ($dbh -> getActiveUser()[0]['username']);
}
require 'template/headerTemplate.php';
require 'template/tablePage.php';
?>

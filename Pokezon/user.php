<?php 
    require_once('handler/bootstrap.php');
$templateParams["titolo"] = "Personal Area";

if(!isset($_GET["name"])){

if(isset($dbh -> getActiveUser()[0]['username'])){
    $templateParams["name"] = ($dbh -> getActiveUser()[0]['username']);
}
if(isset($dbh -> getActiveUser()[0]['username'])){
    $templateParams["name"] = ($dbh -> getActiveUser()[0]['username']);
    switch ($dbh -> getUserID($templateParams['name'])[0]['role']) {
        case 'Druid':
            require 'template/druidHeaderTemplate.php';
            require 'template/userTemplate.php';
            break;
        case 'Merchant':
            require 'template/headerTemplate.php';
            require 'template/merchantTemplate.php';
            break;
        default:
            require 'template/headerTemplate.php';
            require 'template/userTemplate.php';
            break;
    }
} else {
    require 'template/headerTemplate.php'; /* not registered or logged yet */
}
} else {
    require 'template/headerTemplate.php';
    require 'template/merchantTemplate.php';
}
?>


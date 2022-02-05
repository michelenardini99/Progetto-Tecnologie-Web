<?php 
    require_once('handler/bootstrap.php');


$templateParams["titolo"] = "Shop";
if(isset($dbh -> getActiveUser()[0]['username'])){
    $templateParams["nome"] = ($dbh -> getActiveUser()[0]['username']);
}

// $templateParams["categorie"] = $dbh->getCategories();
// $templateParams["articolicasuali"] = $dbh->getRandomPosts(2);
            if(isset($dbh -> getActiveUser()[0]['username'])){
    $templateParams["name"] = ($dbh -> getActiveUser()[0]['username']);
    switch ($dbh -> getUserID($templateParams['name'])[0]['role']) {
        case 'Druid':
            require 'template/druidHeaderTemplate.php';
            break;
        case 'Trader':
            require 'template/druidHeaderTemplate.php';
            break;
        default:
            require 'template/headerTemplate.php';
            break;
    }
} else {
    require 'template/headerTemplate.php'; /* not registered or logged yet */
}

require 'template/shopTemplate.php';

?>


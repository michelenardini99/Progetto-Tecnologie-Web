<?php 
    require_once('handler/bootstrap.php');

//Base Template
$templateParams["titolo"] = strval($_GET["name"][0]); /* TODO non funziona il nome della pagina */
if(isset($dbh -> getActiveUser()[0]['username'])){
    $templateParams["name"] = ($dbh -> getActiveUser()[0]['username']);
}
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



// $templateParams["categorie"] = $dbh->getCategories();
// $templateParams["articolicasuali"] = $dbh->getRandomPosts(2);

require 'template/pokemonTemplate.php';
?>


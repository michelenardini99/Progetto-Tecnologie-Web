<?php
    require_once('handler/bootstrap.php');
    var_dump($_GET["pokemon"]);
    var_dump($dbh->getID($_GET["pokemon"]));
    $pokeId = $dbh->getID($_GET["pokemon"]);
    $user = $dbh -> getActiveUser()[0]['username'];
    $user=$dbh ->getIdMerchant($user);
    if($dbh->insertUsedPokemon($user[0]['codV'],$pokeId[0]['id'],(int)$_GET["quantity"],(int)$_GET["price"],$_GET["description"])){
        header("Location: https://localhost/Progetto-Tecnologie-Web/Pokezon/user.php");
    }
    header("Location: https://localhost/Progetto-Tecnologie-Web/Pokezon/user.php");
    
?>
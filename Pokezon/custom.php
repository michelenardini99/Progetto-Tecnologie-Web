<?php
    require_once('handler/bootstrap.php');

    if (isset($_POST['merchant']) && isset($_POST['pokeid'])) {
         // $_POST['selectData'] is the selected value
        // query here
        // and you can return the result if you want to do some things cool ;)
        $id = $dbh->getIdMerchant($_POST['merchant']);
        $price = $dbh-> getSinglePokemonFromMerchant($id[0]['codV'], $_POST['pokeid']);
        echo $price[0]['price'];
    }
?>
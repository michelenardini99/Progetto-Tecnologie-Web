<?php
    require_once('handler/bootstrap.php');

    if (isset($_POST['order']) && isset($_POST['pokeid']) && isset($_POST['merchant']) && isset($_POST['quantity'])) {
        $merchantid = $dbh->getIdMerchant($_POST['merchant']);
        $dbh-> addPokemon($_POST['order'], $_POST['pokeid'], $merchantid[0]['codV'], $_POST['quantity']);
    }

    echo "fatto";

?>
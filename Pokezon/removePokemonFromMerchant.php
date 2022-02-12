<?php
    require_once('handler/bootstrap.php');
    if (isset($_POST['codV']) && isset($_POST['pokeId']) && isset($_POST['quantity']) && isset($_POST['price'])) {
        $dbh-> removePokemonFromMerchant($_POST['codV'], $_POST['pokeId'], $_POST['quantity'], $_POST['price']);
    }
?>
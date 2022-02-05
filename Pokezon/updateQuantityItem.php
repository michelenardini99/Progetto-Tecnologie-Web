<?php
    require_once('handler/bootstrap.php');
    if (isset($_POST['order']) && isset($_POST['itemid']) && isset($_POST['quantity']) && isset($_POST['codV'])) {
        $dbh-> updateQuantityItem($_POST['order'], $_POST['quantity'], $_POST['itemid'], $_POST['codV']);
    }
    header("Location: https://localhost/Progetto-Tecnologie-Web/Pokezon/shop.php");
?>
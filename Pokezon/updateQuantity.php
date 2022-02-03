<?php
    require_once('handler/bootstrap.php');
    if (isset($_POST['order']) && isset($_POST['pokeid']) && isset($_POST['quantity']) && isset($_POST['codV'])) {
        $dbh-> updateQuantity($_POST['order'], $_POST['quantity'], $_POST['pokeid'], $_POST['codV']);
    }
    header("Location: https://localhost/Progetto-Tecnologie-Web/Pokezon/shop.php");
?>
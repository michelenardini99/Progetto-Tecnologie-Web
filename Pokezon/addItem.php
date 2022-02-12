<?php 
    require_once('handler/bootstrap.php');

    if (isset($_POST['order']) && isset($_POST['itemId']) && isset($_POST['merch']) && isset($_POST['quantity'])) {
        $dbh -> addItem($_POST['order'], $_POST['itemId'], $_POST['merch'], $_POST['quantity']);

    }

?>
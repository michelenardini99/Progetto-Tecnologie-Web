<?php
    require_once('handler/bootstrap.php');
    if (isset($_POST['id']) && isset($_POST['codV']) && isset($_POST['quantity']) && isset($_POST['orderId'])) {
        $dbh-> removeQuantity($_POST['id'], $_POST['quantity'], $_POST['codV']);
    }

    
?>
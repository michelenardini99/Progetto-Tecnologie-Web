<?php
    require_once('handler/bootstrap.php');
    if (isset($_POST['orderId'])) {
        $id = $dbh->getIdFromOrder($_POST['orderId']);
        $dbh->disableOrder($_POST['orderId']);
        $dbh->newOrder($id[0]['userId']);
    }

    
?>
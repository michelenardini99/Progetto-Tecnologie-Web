<?php 

    var_dump($_POST);
    require_once('handler/bootstrap.php');

    if (isset($_POST['order']) && isset($_POST['itemId']) && isset($_POST['merch'])) {
        $dbh -> addItem($_POST['order'], $_POST['itemId'], $_POST['merch']);

    }


?>
<?php
    require_once('handler/bootstrap.php');
    if (isset($_POST['order']) && isset($_POST['item'])) {
        $dbh-> removeItem($_POST['item'], $_POST['order']);
    }
    echo "fatto";
?>
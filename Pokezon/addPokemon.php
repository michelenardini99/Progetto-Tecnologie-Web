<?php
    require_once('handler/bootstrap.php');
    if (isset($_POST['order']) && isset($_POST['pokeid']) && isset($_POST['merchant'])) {
        $dbh-> addPokemon($_POST['order'], $_POST['pokeid'], $_POST['merchant']);
        
    }
    echo "fatto";

    $dbh->saveNotif("POPO IN MESSAGGIO", date('Y-m-d H:i:s'),"2", "2", "mercante");
?>
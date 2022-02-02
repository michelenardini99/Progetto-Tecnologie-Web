<?php
    require_once('handler/bootstrap.php');
    if (isset($_POST['order']) && isset($_POST['pokemon'])) {
        echo "<script>console.log('Debug Objects: " . $_POST['order'] . "' );</script>";
        var_dump($_POST['order']);
        $dbh-> addPokemon($_POST['order'], $_POST['pokemon']);
        
    }
    echo "fatto";

    $dbh->saveNotif("POPO IN MESSAGGIO", date('Y-m-d H:i:s'),"2", "2", "mercante");
?>
<?php
    require_once('handler/bootstrap.php');

    if (isset($_POST['order']) && isset($_POST['pokeid']) && isset($_POST['merchant'])) {
        $dbh-> addPokemon($_POST['order'], $_POST['pokeid'], $_POST['merchant']);
        
    }

    echo "fatto";

?>
<?php
    require_once('handler/bootstrap.php');
    if (isset($_POST['order']) && isset($_POST['pokemon'])) {
        echo "<script>console.log('Debug Objects: " . $output . "' );</script>";
        $dbh-> removePokemon($_POST['pokemon']);
        
    }
    echo "fatto";
?>
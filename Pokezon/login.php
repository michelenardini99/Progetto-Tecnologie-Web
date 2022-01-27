<?php 
    require_once('handler/bootstrap.php');

//Base Template
$templateParams["titolo"] = "PokeZone Login";
//$templateParams["nome"] = "lista-articoli.php";
// $templateParams["categorie"] = $dbh->getCategories();
// $templateParams["articolicasuali"] = $dbh->getRandomPosts(2);

require 'template/headerTemplate.php';
require 'template/loginTemplate.php';



include 'handler/session.php';

sec_session_start(); // usiamo la nostra funzione per avviare una sessione php sicura
if(isset($_POST['username'], $_POST['p'])) { 
   $username= $_POST['username'];
   $password = $_POST['p']; // Recupero la password criptata.
   if(login($username, $password, $dbh) == true) {
      // Login eseguito
      echo 'Success: You have been logged in!';
   } else {
      // Login fallito
      header('Location: ./login.php?error=1');
   }
} else { 
   // Le variabili corrette non sono state inviate a questa pagina dal metodo POST.
   echo 'Invalid Request';
}

?>


<?php 
include 'session.php';
sec_session_start(); // usiamo la nostra funzione per avviare una sessione php sicura

if(isset($_POST['userName'], $_POST['p'])) { 
   $username= $_POST['userName'];
   $password = $_POST['p']; // Recupero la password criptata.
    $dbh = new mysqli("localhost", "root", "", "pokedb", 3360); 
                if($dbh->connect_error){
                    die("Connesione fallita al db");
                }
   if(login($username, $password, $dbh) == true) {
    // Login eseguito
      echo 'Success: You have been logged in!';

      header("Location: https://localhost/Progetto-Tecnologie-Web/Pokezon/index.php?utente=".$username); // TODO usare template params
      exit();
   } else {
      // Login fallito
      header('Location: ./login.php?error=1');
   }
} else { 
   // Le variabili corrette non sono state inviate a questa pagina dal metodo POST.
   echo 'Invalid Request';
}
?>
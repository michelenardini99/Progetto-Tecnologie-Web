<?php 
include 'session.php';
sec_session_start(); 

if(isset($_POST['userName'], $_POST['p'])) { 
   $username= $_POST['userName'];
   $password = $_POST['p']; 
    $dbh = new mysqli("localhost", "root", "", "pokedb", 3360); 
                if($dbh->connect_error){
                    die("Connesione fallita al db");
                }

      if(userLogged($dbh, $username)){
         header('Location: https://localhost/Progetto-Tecnologie-Web/Pokezon/login.php?error=You\'re already logged ( ͡° ͜ʖ ͡°)');
         exit();
      }

   if(login($username, $password, $dbh) == true) {
    // Login success 
      echo 'Success: You have been logged in!';
      header("Location: https://localhost/Progetto-Tecnologie-Web/Pokezon/index.php?utente=".$username); // TODO usare template params
     exit();
   } else {
      // Login fail 
     header('Location: https://localhost/Progetto-Tecnologie-Web/Pokezon/login.php?error=You\'re not logged, Identify yourself ! ( ͡° ͜ʖ ͡°)');
     exit();
   }
} else { 
   // Post now working
   echo 'Invalid Request';
}
?>

<?php 


include 'session.php';

sec_session_start(); // usiamo la nostra funzione per avviare una sessione php sicura


echo "gonna log you bastard";

if(isset($_POST['userName'], $_POST['p'], $_POST['email']) &&
!(strlen($_POST['p']) == 0 || !(preg_match_all('/[a-z_]/i',$_POST['userName']) == strlen($_POST['userName'])) 
 || !preg_match("/^([a-zA-Z0-9\.]+@+[a-zA-Z]+(\.)+[a-zA-Z]{2,3})$/", $_POST['email']))) { 
   $username = $_POST['userName'];
   $password = $_POST['p']; // Recupero la password criptata.
   $email =$_POST['email']; 

    $dbh = new mysqli("localhost", "root", "", "pokedb", 3360); 
                if($dbh->connect_error){
                    die("Connesione fallita al db");
                }
 
$password = $_POST['p']; 
// Crea una chiave casuale
$random_salt = hash('sha512', uniqid(mt_rand(1, mt_getrandmax()), true));
// Crea una password usando la chiave appena creata.
$password = hash('sha512', $password.$random_salt);
// Inserisci a questo punto il codice SQL per eseguire la INSERT nel tuo database
// Assicurati di usare statement SQL 'prepared'.

if ($insert_stmt = $dbh->prepare("INSERT INTO members (username, email, password, salt) VALUES (?, ?, ?, ?)")) {    
   $insert_stmt->bind_param('ssss', $username, $email, $password, $random_salt); 
   // Esegui la query ottenuta.
   $insert_stmt->execute();
} 
} else {
   header("Location: https://localhost/Progetto-Tecnologie-Web/Pokezon/register.php?error=Wrong data (￣︿￣) Use an email or insert a password or simply drink less poke-beer next time... ( ಠ_ಠ )");
}
?>
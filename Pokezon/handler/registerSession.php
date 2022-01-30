<?php 

include 'session.php';

sec_session_start(); 

if(isset($_POST['userName'], $_POST['p'], $_POST['email'], $_POST['role']) &&
!(strlen($_POST['p']) == 0 || !(preg_match_all('/[a-z_]/i',$_POST['userName']) == strlen($_POST['userName'])) 
 || !preg_match("/^([a-zA-Z0-9\.]+@+[a-zA-Z]+(\.)+[a-zA-Z]{2,3})$/", $_POST['email']))) { 
   $username = $_POST['userName'];
   $password = $_POST['p']; 
   $email =$_POST['email']; 
   $role = $_POST['role'];

    $dbh = new mysqli("localhost", "root", "", "pokedb", 3306); 
                if($dbh->connect_error){
                    die("Connesione fallita al db");
                }
$password = $_POST['p']; 
// random key
$random_salt = hash('sha512', uniqid(mt_rand(1, mt_getrandmax()), true));
// password using random key
$password = hash('sha512', $password.$random_salt);

if ($insert_stmt = $dbh->prepare("INSERT INTO members (username, email, password, salt, role) VALUES (?, ?, ?, ?, ?)")) {    
   $insert_stmt->bind_param('sssss', $username, $email, $password, $random_salt, $role); 
   $insert_stmt->execute();
}
  header("Location: https://localhost/Progetto-Tecnologie-Web/Pokezon/index.php");
} else {
   header("Location: https://localhost/Progetto-Tecnologie-Web/Pokezon/register.php?error=Wrong data (￣︿￣) Use an email or insert a password or simply drink less poke-beer next time... ( ಠ_ಠ )");
}
?>
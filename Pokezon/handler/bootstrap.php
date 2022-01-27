<?php
session_start();
require_once("db/database.php");
$dbh = new DatabaseHelper("localhost", "root", "", "pokedb", 3306);
?>

<link rel="shortcut icon" type="image/x-icon" href="./../resources/favicon.png"/>
<?php
session_start();
require_once("db/database.php");
$dbh = new DatabaseHelper("localhost", "root", "", "pokedb", 3360);
?>
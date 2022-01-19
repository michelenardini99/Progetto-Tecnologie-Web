<?php
class DatabaseHelper{
            private $db;
        
            public function __construct($servername, $username, $password, $dbname, $port){
                $this->db = new mysqli($servername, $username, $password, $dbname, $port);
                if($this->db->connect_error){
                    die("Connesione fallita al db");
                }
            }

            public function pokeGetter(){
                $stmt = $this->db->prepare("SELECT identifier FROM pokemon;");
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }
            
            public function pokeItemGetter(){
                $stmt = $this->db->prepare("SELECT identifier FROM items;");
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }
        }
?>
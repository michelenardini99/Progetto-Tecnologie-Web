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
                /*$stmt = $this->db->prepare("SELECT * FROM pokemon;");*/
                $stmt = $this->db->prepare("SELECT * FROM pokemon LIMIT 100;");
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }
            
            public function pokeItemGetter(){
                // $stmt = $this->db->prepare("SELECT identifier FROM items;");
                $stmt = $this->db->prepare("SELECT identifier FROM items LIMIT 100;");
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }
            
            public function pokeItemCategoriesGet(){
                $stmt = $this->db->prepare("
                    SELECT id, identifier FROM `item_categories`
                    where  identifier = 'standard-balls'
                    or identifier = 'special-balls'
                    or identifier = 'all-machines'
                    or identifier = 'evolution'
                    or identifier = 'medicine';
                ");
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }

            public function getRegionNames(){
                $stmt = $this->db->prepare("
                SELECT identifier FROM `pokedexes`
                where identifier not like 'original%'
                LIMIT 10;
                ");
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }


            public function getPokemonFromRegionIdentifier($regionName){
                $stmt = $this->db->prepare("
                    SELECT p.id, p.identifier, px.identifier
                    FROM pokemon p, pokemon_dex_numbers pn, pokedexes px  
                    where pn.pokedex_id = px.id
                    and px.identifier = ?
                    and p.species_id = pn.species_id; 
                ");
                $stmt->bind_param('s',$regionName);
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }



        }
?>
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
                $stmt = $this->db->prepare("SELECT * FROM pokemon LIMIT 898;");
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }

            public function getRandomItem(){
                $stmt = $this->db->prepare("SELECT id FROM items order by rand() limit 1");
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }

            public function getUserID($username){
                $stmt = $this->db->prepare("select id from members where username = ?");
                $stmt->bind_param('s',$username);
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }

            public function getRandomPokemon(){
                $stmt = $this->db->prepare("
                SELECT p.id, p.identifier, px.identifier as region
                    FROM pokemon p, pokemon_dex_numbers pn, pokedexes px  
                    where pn.pokedex_id = px.id
                    and px.identifier = 'national'
                    and p.species_id = pn.species_id
                    and p.identifier not like '%-alola'
                    and p.identifier not like '%-galar'
                    and p.identifier not like 'minior%'
                    and p.identifier not like 'mimikyu%'
                    and p.identifier not like '%-mega'
                    and p.identifier not like '%-mega-%'
                    and p.identifier not like 'pikachu-%'
                    and p.identifier not like 'eevee-starter'
                    and p.identifier not like 'marowak-totem'
                    ORDER BY RAND()
                    LIMIT 1" 
                    );
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }

            public function getPokemonInShop($userId){
                $stmt = $this->db->prepare("select pokemon.identifier, pokemon.id from pokemon INNER join orders_pokemon on pokemon.id = orders_pokemon.pokemonId 
                                            INNER JOIN orders on orders_pokemon.orderId = orders.idOrder
                                            WHERE orders.userId = ? AND orders.is_active = 1;");
                $stmt->bind_param('s',$userId);
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }

            public function getItemInfo($id){
                $stmt = $this->db->prepare("select items.id, items.identifier itemId, items.cost, item_categories.identifier
                                            from items inner join item_categories on items.category_id = item_categories.id
                                            where items.id=?;");
                $stmt->bind_param('s',$id);
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }

            public function getColor($id){
                $stmt = $this->db->prepare("
                    select color from types_color where types_color.name = ?
                ");
                $stmt->bind_param('s',$id);
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }

            public function getTypes($id){
                $stmt = $this->db->prepare("
                    select distinct identifier from types
                    inner join pokemon_types on types.id = pokemon_types.type_id
                    where pokemon_types.pokemon_id = ?;
                ");
                $stmt->bind_param('s',$id);
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }

            public function getName($id){
                $stmt = $this->db->prepare("
                    select identifier from pokemon
                    where id = ?
                ");
                $stmt->bind_param('s',$id);
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

            public function getInfoAbout($id){
                $stmt = $this->db->prepare("
                SELECT *,p.identifier as name FROM `pokemon` p 
                join pokemon_species ps on p.id = ps.id 
                where p.id = ?;
                ");
                $stmt->bind_param('s',$id);
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }

            public function getAbilitiesFromID($id){
                $stmt = $this->db->prepare("
                SELECT * FROM `pokemon_abilities` pa 
                join abilities a on pa.ability_id= a.id
               	join `ability_prose` ap on a.id = ap.ability_id
                where pokemon_id = ?
                and ap.local_language_id = 9;
                ");
                $stmt->bind_param('s',$id);
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }
            
            public function getMovesFromID($id){
                $stmt = $this->db->prepare("
                SELECT *
                FROM `pokemon_moves` pm, moves m
                where m.id in(SELECT DISTINCT	id
                FROM `pokemon_moves` pm, moves m
                where pm.move_id = m.id 
                and pokemon_id = ?)
                LIMIT 4;
                ");
                $stmt->bind_param('s',$id);
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }

            public function getPokemonFromRegionIdentifier($regionName){
                $stmt = $this->db->prepare("
                    SELECT p.id, p.identifier, px.identifier as region
                    FROM pokemon p, pokemon_dex_numbers pn, pokedexes px  
                    where pn.pokedex_id = px.id
                    and px.identifier = ?
                    and p.species_id = pn.species_id
                    and p.identifier not like '%-alola'
                    and p.identifier not like '%-galar'
                    and p.identifier not like 'minior%'
                    and p.identifier not like 'mimikyu%'
                    and p.identifier not like '%-mega'
                    and p.identifier not like '%-mega-%'
                    and p.identifier not like 'pikachu-%'
                    and p.identifier not like 'eevee-starter'
                    and p.identifier not like 'marowak-totem'
                    limit 500; 
                ");
                $stmt->bind_param('s',$regionName);
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }

        }
?>
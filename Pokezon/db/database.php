<?php
class DatabaseHelper{
            private $db;
        
            public function __construct($servername, $username, $password, $dbname, $port){
                $this->db = new mysqli($servername, $username, $password, $dbname, $port);
                if($this->db->connect_error){
                    die("Connesione fallita al db");
                }
            }
            
            public function getActiveUser(){
            $stmt = $this->db->prepare("SELECT * FROM `members` where logged = 1;");
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }
            public function logOut($username){
               $stmt = $this-> db ->prepare(" UPDATE `members` SET `logged` = '0' WHERE `members`.`username` = ?;");
               $stmt->bind_param('s', $username); 
               $stmt -> execute();
            }

            public function getUserIdNotLogged($username){
                $stmt = $this->db->prepare("SELECT * FROM `members` where username = ?;");
                $stmt->bind_param('s', $username); 
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }

            public function getUserId($username){
                $stmt = $this->db->prepare("SELECT * FROM `members` where logged = 1;");
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }
                
            public function updateAvatar($id, $filename){
                $avatarPrefix = '../resources/Trainers/';
                $avatarPrefix = $avatarPrefix.$filename;
                $stmt = $this -> db->prepare("UPDATE `members` SET `avatar` = ?  WHERE `members`.`id` = ?;");
                $stmt->bind_param('ss', $avatarPrefix, $id);
                $stmt->execute();
            }
 

            public function updateQuantity($order, $quantity, $pokeId, $codV){
                $stmt = $this->db->prepare("UPDATE orders_pokemon
                                            SET quantity = ?
                                            WHERE orderId = ? AND pokemonId = ? AND codV = ?");
                $stmt->bind_param('ssss', $quantity, $order, $pokeId, $codV); 
                $stmt->execute();
            }

            public function updateQuantityItem($order, $quantity, $itemId, $codV){
                $stmt = $this->db->prepare("UPDATE orders_item
                                            SET quantity = ?
                                            WHERE orderId = ? AND itemId = ? AND codV = ?");
                $stmt->bind_param('ssss', $quantity, $order, $itemId, $codV); 
                $stmt->execute();
            }

            public function getPokemonInShop($id){
                $stmt = $this->db->prepare("SELECT orders_pokemon.orderId,orders_pokemon.codV,orders_pokemon.quantity, pokemon.id, pokemon.identifier,pokemon_value.value FROM orders
                                            INNER JOIN orders_pokemon ON orders.idOrder = orders_pokemon.orderId
                                            INNER JOIN pokemon ON orders_pokemon.pokemonId = pokemon.id
                                            INNER JOIN pokemon_value ON pokemon.identifier = pokemon_value.name
                                            where orders.userId = ? AND orders.is_Active = 1
                                            group by orders_pokemon.orderId,orders_pokemon.codV, pokemon.id, pokemon.identifier,pokemon_value.value;
                ");
                $stmt->bind_param('s',$id);
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }

            public function getItemInShop($id){
                $stmt = $this->db->prepare("SELECT orders_item.orderId, orders_item.itemId, i.identifier, i.cost,orders_item.quantity 
                    FROM items i, orders   JOIN orders_item ON orders.idOrder = orders_item.orderId
                    where orders.userId = ? AND orders.is_Active = 1
                    and i.id = orders_item.itemId
                    GROUP BY orders_item.orderId, orders_item.itemId, i.identifier, i.cost;;
                ");
                $stmt->bind_param('s',$id);
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }
        public function getOrderFromId($id){
                $stmt = $this->db->prepare("SELECT o.idOrder, op.pokemonId, p.identifier ,count(*) as quantity FROM `orders` o 
join orders_pokemon op on (o.idOrder = op.orderId)
join pokemon p on (op.pokemonId = p.id)
where o.userId = ?
group by o.idOrder, op.pokemonId;");
                $stmt->bind_param('s', $id); 
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }
            public function getCurrentOrder($userId){
                $stmt = $this->db->prepare("SELECT orders.idOrder from orders where orders.userId = ? AND is_active = 1;
                ");
                $stmt->bind_param('s',$userId);
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
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

            public function removePokemon($pokemon, $order){
                $stmt = $this->db->prepare("DELETE FROM orders_pokemon where orders_pokemon.pokemonID = ? AND orders_pokemon.orderId = ?
                ");
                $stmt->bind_param('ss',$pokemon,$order);
                $stmt->execute();
            }

            public function removeItem($itemId, $order){
                $stmt = $this->db->prepare("DELETE FROM orders_item where orders_item.itemId = ? AND orders_item.orderId = ?
                ");
                $stmt->bind_param('ss',$itemId,$order);
                $stmt->execute();
            }

            public function addPokemon($order, $pokemon, $merchant){
                $stmt = $this->db->prepare("INSERT INTO orders_pokemon(orderId, pokemonId, quantity, codV) VALUES (?,?,1,?)
                ");
                $stmt->bind_param('iii',$order,$pokemon,$merchant);
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }


            public function addItem($order, $item, $codV ){
                $stmt = $this->db->prepare("INSERT INTO orders_item(orderId, itemId , quantity, codV) VALUES (?,?,1, ?)
                ");
                $stmt->bind_param('iii',$order,$item, $codV);
                $stmt->execute();
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
                    and p.id < 899
                    ORDER BY RAND()
                    LIMIT 1" 
                    );
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

            public function removeQuantity($pokemonId, $quantity, $codV){
                $stmt = $this->db->prepare("
                    update used_pokemon
                    set quantity = quantity - ?
                    where codV = ? AND pokemonId = ?
                ");
                $stmt->bind_param('sss',$quantity, $codV, $pokemonId);
                $stmt->execute();
            }

            public function disableOrder($orderId){
                $stmt = $this->db->prepare("
                    UPDATE orders
                    SET orders.is_active = 0
                    where orders.idOrder = ?;
                ");
                $stmt->bind_param('s',$orderId);
                $stmt->execute();
            }

            public function newOrder($userId){
                $stmt = $this->db->prepare("
                    INSERT INTO orders(userId,is_active) VALUES(?,1)
                ");
                $stmt->bind_param('s',$userId);
                $stmt->execute();
            }

            public function getIdFromOrder($orderId){
                $stmt = $this->db->prepare("
                    select userId from orders where idOrder = ?
                ");
                $stmt->bind_param('s',$orderId);
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }

            public function getID($name){
                $stmt = $this->db->prepare("
                    select id from pokemon
                    where identifier = ?;
                ");
                $stmt->bind_param('s',$name);
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

            public function pokemonOutOfStock($id){
                $stmt = $this->db->prepare("
                    SELECT COUNT(*) as total FROM used_pokemon
                    where pokemonId = ?
                ");
                $stmt->bind_param('s',$id);
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }

            
            public function pokeItemGetter(){
                // $stmt = $this->db->prepare("SELECT identifier FROM items;");
                $stmt = $this->db->prepare("SELECT identifier FROM items 
                    where identifier not like '%-mail' 
                    and identifier not like 'data-card%' 
                    and identifier not like '%-mail' 
                    and identifier not like 'data-card'
                    and identifier not like '%-sweet'
                    and identifier not like '%-apple'
                    and identifier not like '%-pot'
                    and identifier not like 'throat-spray'
                    and identifier not like 'eject-pack'                  
                    and identifier not like 'heavy-duty-boots'
                    and identifier not like 'blunder-policy'
                    and identifier not like 'room-service'
                    and identifier not like 'utility-umbrella'
                    and identifier not like 'tr%'
                    and identifier not like 'max-mushorooms'
                    and identifier not like 'bicycle'
                    LIMIT 475;
                    ");
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }

            public function getInfoAboutItem($name){
                $stmt = $this->db->prepare("
                SELECT * 
                from  item_prose ip, items i
                left join orders_item oi on (i.id = oi.orderId)
                where i.id = ip.item_id
                and ip.local_language_id = 9
                and i.identifier = ?;
                ");
                $stmt->bind_param('s',$name);
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }

            public function getItemFromCategory($category){
                $stmt = $this->db->prepare("
                SELECT  i.identifier, ic.identifier as category FROM items i join item_categories ic on (i.category_id = ic.id)
                    where i.identifier not like '%-mail' 
                    and i.identifier not like 'data-card%'
                    and i.identifier not like '%-sweet'
                    and i.identifier not like '%-apple'
                    and i.identifier not like '%-pot'
                    and i.identifier not like 'throat-spray'
                    and i.identifier not like 'eject-pack'                  
                    and i.identifier not like 'heavy-duty-boots'
                    and i.identifier not like 'blunder-policy'
                    and i.identifier not like 'room-service'
                    and i.identifier not like 'utility-umbrella'
                    and i.identifier not like 'tr%'
                    and i.identifier not like 'max-mushrooms'
                    and i.identifier not like 'bicycle'
                    and ic.identifier = ?
                    LIMIT 600;
                ");
                $stmt->bind_param('s',$category);
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
                    or identifier = 'medicine'
                    or identifier = 'held-items'
                    or identifier = 'healing'
                    or identifier = 'stat-boosts'
                ;");
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
              SELECT m.*, mep.* 
                FROM `pokemon_moves` pm, moves m, `move_effect_prose` mep
                where mep.move_effect_id = m.effect_id
                and mep.local_language_id = 9
                and m.id in(SELECT DISTINCT	id
                FROM `pokemon_moves` pm, moves m
                where pm.move_id = m.id 
                and pokemon_id = ?)
                LIMIT 8;
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
                    and p.id < 10008
                    limit 500; 
                ");
                $stmt->bind_param('s',$regionName);
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }

            public function getValueFromName($name){
                $stmt = $this->db->prepare("
                SELECT * from `pokemon_value`
                    where name = ?;
                ");
                $stmt->bind_param('s',$name);
                $stmt->execute();
                $result = $stmt->get_result();
                 return $result->fetch_all(MYSQLI_ASSOC);
             }


                public function insertMerchant($name, $IBAN, $imageName){
              $stmt = $this->db->prepare("INSERT INTO merchant(name, IBAN, avatar) values (?, ?, ?)");
               $stmt->bind_param('sss', $name, $IBAN, $imageName); 
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
                }

              public function getIdMerchant($name){
                $stmt = $this->db->prepare("SELECT codV FROM merchant where name = ?");
                $stmt->bind_param('s', $name); 
                 $stmt->execute();
                 $result = $stmt->get_result();
                 return $result->fetch_all(MYSQLI_ASSOC);
              }

            public function insertUsedPokemon($merchantid, $id, $quantity, $price, $descr){
              $stmt = $this->db->prepare("INSERT INTO used_pokemon(codV, pokemonId, quantity, price, description) VALUES (?, ?, ?, ?, ?)");
               $stmt->bind_param('iiiis', $merchantid, $id, $quantity, $price, $descr); 
                $stmt->execute();
              }
              
            public function getMerchantsFromItem($id){
              $stmt = $this->db->prepare("SELECT m.name,m.codV FROM used_pokemon up
                join merchant m on(up.codV = m.codV)
               where up.pokemonId = ?");
               $stmt->bind_param('s', $id); 
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
              }
            public function getMerchantsFromPokemon($id){
              $stmt = $this->db->prepare("SELECT m.name,m.codV FROM used_pokemon up
                join merchant m on(up.codV = m.codV)
               where up.pokemonId = ?");
               $stmt->bind_param('s', $id); 
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
              }

              public function getSinglePokemonFromMerchant($codV, $id){
                $stmt = $this->db->prepare("SELECT * FROM used_pokemon               
                 where  codV = ? AND pokemonId = ?");
                 $stmt->bind_param('ii', $codV, $id); 
                  $stmt->execute();
                  $result = $stmt->get_result();
                  return $result->fetch_all(MYSQLI_ASSOC);
              }


            public function getPokemonFromMerchant($codV){
              $stmt = $this->db->prepare("SELECT * FROM used_pokemon up               
               where codV = ? ");
               $stmt->bind_param('s', $codV); 
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }


            public function saveNotif($msg,$notifTime, $loop,$loop_every,$user){
                $stmt = $this->db->prepare("insert into notif(notif_msg, notif_time, notif_repeat, notif_loop,username) values(?, ?,  ?, ?, ?);");
                $stmt->bind_param('sssss', $msg, $notifTime, $loop, $loop_every, $user);
                $stmt->execute();
            }


                
            public function updateNotif($id,$nextime){
            $stmt = $this -> db->prepare("update notif set notif_time = ?, publish_date=CURRENT_TIMESTAMP(), notif_loop = notif_loop-1 where id=?");
            $stmt->bind_param('ss', $nextime, $id);
            $stmt->execute();
            }
            

            public function listNotifUser($user){
            $stmt = $this -> db->prepare("SELECT * FROM notif
            WHERE username= ? 
            AND notif_loop > 0
            AND notif_time <= CURRENT_TIMESTAMP()"); 
            $stmt->bind_param('s', $user);
            $stmt->execute();
            $result = $stmt->get_result();
            return $result->fetch_all(MYSQLI_ASSOC);
            } 

            public function listNotif(){
            $db = $this->dblocal;
            $stmt = $this -> db->prepare("SELECT * FROM notif");
            $stmt->execute();
            $result = $stmt->get_result();
            return $result->fetch_all(MYSQLI_ASSOC);
            }
            
            public function getNotifAbout($username){
                $stmt = $this->db->prepare("
                SELECT n.notif_msg, n.notif_time FROM `notif` n 
                WHERE n.username = ?;
                ");
                $stmt->bind_param('s',$username);
                $stmt->execute();
                $result = $stmt->get_result();
                return $result->fetch_all(MYSQLI_ASSOC);
            }
        }
?>
<head>
    <link rel="stylesheet" type="text/css" href="./css/detailTest.css" />
    <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js" type="text/javascript">
	</script>

</head>
<body>
<?php
            $pokemonID = $dbh->getID($_GET['name'])[0]['id'];
            $pokemon = ($dbh->getInfoAbout($pokemonID))[0];
            $abilities = $dbh->getAbilitiesFromID($pokemonID);
            $moves = $dbh->getMovesFromID($pokemonID);
            $types = $dbh->getTypes($pokemonID);
            $color = $dbh->getColor($types[0]['identifier']);
            $result = $dbh->getActiveUser();
            if($result){
                $userId = $dbh->getUserId($templateParams['name']);
                $orderId = $dbh->getCurrentOrder($userId[0]['id']);
                $pokeId = $dbh->getID($_GET['name'])[0]['id'];
            }
            $len = strlen($pokemonID);
            if ($len == "1") {
                $pokemonID = "00" . $pokemonID;
            } elseif ($len == "2") {
                $pokemonID = "0" . $pokemonID;
            }

            function toFloatDecim($value)           /* utilies to height and weight for pokemon */
            {
                $num = floatval($value);
                $num /= 10;
                return number_format($num, 2, '.', '');
            }

            function betterProse($str)              /* prose on db sucks so need to be improved removing {} macro */
            {
                $str = preg_replace("/\{[^}]+\}/", "", $str);
                $str = str_replace(']', '', $str);
                $str = str_replace('[', '', $str);
                $str = str_replace('-', '', $str);
                return $str;
            }
            ?>
    <div class="small-container single-pokemon">
        <div class="row">
            <div class="col-1">
                <img class="pokeimg" src=<?php echo "https://assets.pokemon.com/assets/cms2/img/pokedex/full/" . $pokemonID . ".png" ?> alt="image of " <?php echo $pokemon['name']?> style=<?php echo "background-color:".$color[0]['color']?>>
            </div>
            <div class="col-2">
                <p>Home / Pokemon</p>
                <h1 class="name"><?php echo $pokemon['name']?></h1>
                <h4 id="price"></h4>
                <?php
                        $id = $dbh->getID($pokemon['name'])[0]['id'];
                        $merchant=$dbh->getMerchantsFromPokemon($id);
                        $pokeId = $dbh->getID($_GET['name'])[0]['id'];
                ?>
                <select name="merchant" id="merchant-select" onchange="myFunction(this.value,<?php echo $pokeId ?>)">
                    <option value="null">Select merchant</option>
                    <?php 
                     foreach ($merchant as $m):
                        $info = $dbh->getSinglePokemonFromMerchant($m['codV'],$id);
                    ?>
                    <option value="<?php echo $m['name']?>"><?php echo $m['name'] ?></option>
                    <?php
                        endforeach;
                        $var = $_POST['merchant'];
                        var_dump($var);
                    ?>
                </select>
                <input id="quantity" type="number" value="1">
                <button id="add" type="button" style="background: none, border:none">
                    <a class="btn"  onClick="addPokemon(<?php echo $pokeId ?>, <?php echo $orderId[0]['idOrder'] ?>, <?php echo $m['codV'] ?>);">Add To Cart</a>
                </button>
                <h3>Pokemon Details</h3>
                <p><strong>Types:</strong></p>
                <ul class="types">      
                    <?php
                    foreach ($types as $type) {
                        $color = $dbh->getColor($type['identifier'])[0];
                    ?>
                    <li class="types-name" style="list-style-type: none; background-color: <?php  echo $color['color'] ?>"><p><big><?php echo $type['identifier'] ?></big></p></li>
                    <?php
                    }
                    ?>
                </ul>
                <p><strong>Height:</strong><?php echo "" . toFloatDecim($pokemon['height']) ?> meters</p>
                <p><strong>Weight:</strong><?php echo "" . toFloatDecim($pokemon['weight']) ?> kilograms</p>
                <p><strong>Base Exp:</strong><?php echo "" . $pokemon['base_experience'] ?></p>
                <p><strong>Base Happiness:</strong><?php echo "" . $pokemon['base_happiness'] ?></p>
                <?php if (!is_null($pokemon['evolves_from_species_id'])) { ?>
                <p>Evolves from: 
                    <a href=<?php echo "./pokemonDetail.php?name=".$dbh->getInfoAbout($pokemon['evolves_from_species_id'])[0]['identifier']?>>
                        <img src=<?php echo "https://img.pokemondb.net/sprites/sword-shield/icon/".$dbh->getInfoAbout($pokemon['evolves_from_species_id'])[0]['name'].".png" ?> alt="<?php echo $dbh->getInfoAbout($pokemon['evolves_from_species_id'])[0]['identifier'] ?>">
                    </a> <?php  echo ucfirst("".$dbh->getInfoAbout($pokemon['evolves_from_species_id'])[0]['name'])?>
                </p>
                <?php } ?>
            <!-- evolution forward is complicated -->
                <?php
                foreach ($abilities as $abilty) : ?>
                    <p class="ability"><strong><?php echo  ucfirst("" . $abilty['identifier']) ?></strong></p>
                <p><?php echo betterProse($abilty['effect']) ?></p>
                <?php endforeach ?>
            </div>
        </div>
    </div>
    <script>
        function myFunction(merchant, pokeid){
            var merchant = merchant;
            var pokeid = pokeid;
            if(merchant != "null"){
                $.ajax({
                type: "POST",
                url: "custom.php",
                data: {merchant: merchant, pokeid: pokeid },
                success: function (data) {
                    document.getElementById("price").innerHTML = "$".concat(data).concat(".00");
                }
                });
            }
        }
    </script>

    <script>
         $(document).ready(function(){
                var name = document.getElementsByClassName("name")[0].innerText;
                                            console.log(name);
                                            $("button").click(function(){
                                                var merchant = document.getElementById("merchant-select").value;
                                                if(merchant != "null"){ 
                                                $.ajax({
                                                    type: "POST",
                                                    url: "./notification.php",
                                                    data: {pokemonName: name},
                                                    success: function(data, textStatus, jqXHR)
			{
                if(data[0] != "<"){ 
				var data = jQuery.parseJSON(data);
					var data_notif = data.notif;
					for (var i = data_notif.length - 1; i >= 0; i--) {
						var theurl = data_notif[i]['url'];
						var notifikasi = new Notification(data_notif[i]['title'], {
							icon: data_notif[i]['icon'],
							body: data_notif[i]['msg'],
						});
						console.log(notifikasi);
						notifikasi.onclick = function () {
							window.open(theurl); 
							notifikasi.close();     
						};
						setTimeout(function(){
							notifikasi.close();
						}, 5000);
					};
				}
			},
			error: function(jqXHR, textStatus, errorThrown)
			{

			}
                                                });
                                            }
                                            });
                                        });
                                    </script>
    <script src="./js/addPokemon.js" type="text/javascript"></script> 
</body>
</html>
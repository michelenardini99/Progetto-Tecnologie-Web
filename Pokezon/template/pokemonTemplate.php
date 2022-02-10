<head>
    <link rel="stylesheet" type="text/css" href="./css/detail.css" />
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
            
    <div class="container" style= <?php echo "background-color:".$color[0]['color']?> >
        <div class="image">
           <img src=<?php echo "https://assets.pokemon.com/assets/cms2/img/pokedex/full/" . $pokemonID . ".png" ?> alt="image of " <?php echo $pokemon['name']?>>
        </div>
        <div class="name">
            <h2>
                <?php echo "" . ucfirst($pokemon['name']) ?>
            </h2>
        </div>
        <div class="mosseStats">
            <p>
                <b>
                    Height:
                </b>
                <?php echo "" . toFloatDecim($pokemon['height']) ?> meters
            </p>
            <p>
                <b>
                    Weight:
                </b> 
                <?php echo "" . toFloatDecim($pokemon['weight']) ?> kilograms
            </p>
            <p>
                <b>
                    Base Exp:
                </b>
                <?php echo "" . $pokemon['base_experience'] ?>
            </p>
            <p>
                <b>
                    Base Happiness:
                </b>
                <?php echo "" . $pokemon['base_happiness'] ?>
            </p>
            <?php if (!is_null($pokemon['evolves_from_species_id'])) { ?>
                <p>
                    Evolves from: 
                    <a href=<?php echo "./pokemonDetail.php?name=".$dbh->getInfoAbout($pokemon['evolves_from_species_id'])[0]['identifier']?>>
                        <img src=<?php echo "https://img.pokemondb.net/sprites/sword-shield/icon/".$dbh->getInfoAbout($pokemon['evolves_from_species_id'])[0]['name'].".png" ?> alt="">
                    </a> <?php  echo ucfirst("".$dbh->getInfoAbout($pokemon['evolves_from_species_id'])[0]['name'])?>
                </p>
            <?php } ?>
            <!-- evolution forward is complicated -->
            <?php
            foreach ($abilities as $abilty) : ?>
                <p style="text-align: center;">
                    <b >
                    <?php echo  ucfirst("" . $abilty['identifier']) ?>
                    </b>
                </p>
                <p>
                    <?php echo betterProse($abilty['effect']) ?>
                </p>
            <?php endforeach ?>

        </div> <!-- here -->

            <div class="abilityTable">
                <table>
                <tr style="filter: brightness(25%);">
                        <th scope="col">          <!-- col for accessibility -->
                            Identifier
                        </th>
                        <th scope="col">          <!-- col for accessibility -->
                            PP
                        </th>
                        <th scope="col">          <!-- col for accessibility -->
                            Accuracy
                        </th>
                        <th scope="col">          <!-- col for accessibility -->
                            Power
                        </th>
                        <th scope="col">
                            Description
                        </th>
                    </tr>
                    <tbody>
                        <?php
                        foreach ($moves as $move) : ?>
                            <tr>
                                <td>
                                    <?php echo "" . $move['identifier'] ?>
                                </td>
                                <td>
                                    <?php echo "" . $move['pp'] ?>
                                </td>
                                <td>
                                    <?php echo "" . $move['accuracy'] ?>
                                </td>
                                <td>
                                    <?php echo "" . $move['power'] ?>
                                </td>
                                <td>
                                    <?php echo "" . betterProse($move['short_effect'])?>
                                </td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
            </div>
            <div class="merchant">
                <table>
                <tr style="filter: brightness(25%);">
                        <th scope="col">          <!-- col for accessibility -->
                            Merchant
                        </th>
                        <th scope="col">          <!-- col for accessibility -->
                            Price
                        </th>
                        <th scope="col">          <!-- col for accessibility -->
                            Quantity
                        </th>
                        <th scope="col">          <!-- col for accessibility -->
                            Description
                        </th>
                        <th scope="col">          <!-- col for accessibility -->
                        </th>
                    </tr>
                    <tbody>
                        <?php
                        $id = $dbh->getID($_GET['name'])[0]['id'];
                        $merchant=$dbh->getMerchantsFromPokemon($id);
                         $pokeId = $dbh->getID($_GET['name'])[0]['id'];
                        foreach ($merchant as $m):
                            $info = $dbh->getSinglePokemonFromMerchant($m['codV'],$id);
                            ?>
                            <tr>
                                <td>
                                    <?php echo "" . $m['name'] ?>
                                </td>
                                <td>
                                    <?php echo "" . $info[0]['price'] ?>
                                </td>
                                <td>
                                    <?php echo "" . $info[0]['quantity'] ?>
                                </td>
                                <td>
                                    <?php echo "" . $info[0]['description'] ?>
                                </td>
                                <td>
                                    <?php
                                        $result = $dbh->getActiveUser();
                                        if($result){
                                            $userId = $dbh->getUserId($templateParams['name']);
                                            $orderId = $dbh->getCurrentOrder($userId[0]['id']);
                                            $pokeId = $dbh->getID($_GET['name'])[0]['id'];
                                        }
                                    ?>
                                    <button id="add" type="button">
                                        <a class="addPokemon"  onClick="addPokemon(<?php echo $pokeId ?>, <?php echo $orderId[0]['idOrder'] ?>, <?php echo $m['codV'] ?>);" >Add to shopping-cart</button>
                                    </button>
                                    <script>
                                        $(document).ready(function(){
                                            var name = document.getElementsByClassName("name")[0].innerText;
                                            console.log(name);
                                            $("button").click(function(){ 
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
                                            });
                                        });
                                    </script>
                                </td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
            </div> 

    </div>
    <script src="./js/addPokemon.js" type="text/javascript"></script> 
</body>
</html>
<link rel="stylesheet" type="text/css" href="./css/detail.css" />

<body>
    <div class="container">
        <div class="image">
            <?php
            $pokemonID = $_GET['id'];
            $pokemon = ($dbh->getInfoAbout($pokemonID))[0];
            $abilities = $dbh->getAbilitiesFromID($pokemonID);
            $moves = $dbh->getMovesFromID($pokemonID);
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
            <img src=<?php echo "https://assets.pokemon.com/assets/cms2/img/pokedex/full/" . $pokemonID . ".png" ?> alt="image of " <?php echo $pokemon['name']?>>
        </div>
        <div class="name">
            <?php echo "" . ucfirst($pokemon['name']) ?>
        </div>
        <div class="price">
            prezzo
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
                    <a href=<?php echo "./pokemonDetail.php?id=".$dbh->getInfoAbout($pokemon['evolves_from_species_id'])[0]['id']?>>
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

            <div class="abilityTable">
                <table>
                    <tr>
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
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="shopping-cart">
            carrello
        </div>
    </div>
</body>
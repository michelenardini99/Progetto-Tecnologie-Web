<link rel="stylesheet" type="text/css" href="./css/detail.css"/>
    <body>
        <div class="container">
            <div class="image">
                <?php 
                $pokemonID = $_GET['id'];
                $pokemon = ($dbh->getInfoAbout($pokemonID))[0];
                $moves = $dbh->getMovesFromID($pokemonID);
                $len = strlen($pokemonID);
                if($len == "1"){
                    $pokemonID = "00".$pokemonID;
                }
                elseif ($len == "2"){
                       $pokemonID = "0".$pokemonID;
                }
                ?>
                <img src=<?php echo "https://assets.pokemonID.com/assets/cms2/img/pokedex/full/".$pokemonID.".png" ?> alt="">
            </div>
            <div class="name">
                <?php echo "". ucfirst($pokemon['name'])?>
            </div>
            <div class="price">
                prezzo
            </div>
            <div class="mosseStats">
                <p>
                    Height: <?php echo "".$pokemon['height']?> 
                </p> 
                <p>
                    Weight: <?php echo "".$pokemon['weight']?>
                </p> 
                <p>
                    Base Exp: <?php echo "".$pokemon['base_experience']?>
                </p> 
                <p>
                    Base Happiness: <?php echo "".$pokemon['base_happiness']?>
                </p> 
                <p>
                    Habitat: <?php echo ucfirst("".$pokemon['habitat'])?>
                </p> 
                <?php if (!is_null($pokemon['evolves_from_species_id'])){?>
                <p>
                    Evolves from: <?php echo "".$dbh->getInfoAbout($pokemon['evolves_from_species_id'])[0]['name']?>
                </p> 
                <?php } ?>      <!-- evolution forward is complicated -->
                <p>
                    <?php var_dump($moves)?> <!-- TODO dinamyc table -->
                </p>
            </div>
            <div class="shopping-cart">
            carrello
            </div>
        </div>
    </body>
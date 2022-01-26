<link rel="stylesheet" type="text/css" href="./css/detail.css"/>
    <body>
        <div class="container">
            <div class="image">
                <?php 
                $pokemonID = $_GET['id'];
                $len = strlen($pokemonID);
                if($len == "1"){
                    $pokemonID = "00".$pokemonID;
                }
                elseif ($len == "2"){
                       $pokemonID = "0".$pokemonID;
                }
                $pokemon = ($dbh->getInfoAbout($pokemonID))[0];
                ?>
                <img src=<?php echo "https://assets.pokemonID.com/assets/cms2/img/pokedex/full/".$pokemonID.".png" ?> alt="">
            </div>
            <div class="name">
                <?php echo "".$pokemon['identifier']?>
                identifier
            </div>
            <div class="price">
                prezzo
            </div>
            <div class="mosse">
                mosse e stats
            </div>
            <div class="shopping-cart">
            carrello
            </div>
        </div>
    </body>
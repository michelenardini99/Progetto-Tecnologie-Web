<!DOCTYPE html>
<html lang="it">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><?php echo $templateParams["titolo"]; ?></title>
    <link rel="stylesheet" type="text/css" href="./css/pokeStyle.css" />

	<script
		src="https://code.jquery.com/jquery-3.4.1.min.js"
		type="text/javascript">
	</script>
</head>
<body>
    <header>
        <div>
            <input type="text" placeholder="Search..">
            <a href="">
                Logo
            </a>
            <a href="">
                carrello
            </a>
            <a class='login' href="" > 
                <img src="https://www.clipartmax.com/png/middle/354-3548499_pokemon-trainer-sprite-png-pokemon-trainer-sprite-art.png" alt="" >
            </a>
        </div> 
    </header> 

    <?php if($templateParams['titolo'] == "Pokemon List"){ ?>



    <section>
        <ul class="table" >
            <?php 
                    $pokeList = $dbh->pokeGetter();
                    $cnt = 0;
                    foreach($pokeList as $pokemon):
            ?>
                        <li class="pokemon">
                            <figure>
                                <img src=<?php echo "https://img.pokemondb.net/sprites/sword-shield/icon/".$pokemon['identifier'].".png" ?> alt="">
                            </figure>
                            <div>
                                <h5 style="text-align: center;">
                                <?php echo "".$pokemon['identifier']?>
                                </h5>
                            </div>
                        </li>
              <?php   
            endforeach; ?>
        </ul>
        </section>

    <?php } elseif ($templateParams['titolo'] == "Item List"){  ?> 

    <section>
        <ul class="table">
            <?php 
                    $itemList = $dbh->pokeItemGetter();
                    $cnt = 0;
                    foreach($itemList as $pokeItem):
            ?>
                        <li class="item">
                            <figure>
                                <img src=<?php echo "https://img.pokemondb.net/sprites/items/".$pokeItem['identifier'].".png" ?> alt="">
                            </figure>
                            <div>
                                <h5 style="text-align: center;">
                                <?php echo "".$pokeItem['identifier']?>
                                </h5>
                            </div>
                        </li>
              <?php   
            endforeach; ?>
        </ul>
        </section>











<?php }?>
</body>
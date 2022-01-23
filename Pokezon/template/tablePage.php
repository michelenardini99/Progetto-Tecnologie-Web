<!DOCTYPE html>
<html lang="it">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><?php echo $templateParams["titolo"]; ?></title>
    <link rel="stylesheet" type="text/css" href="./css/pokeStyle.css" />
	<script
		src="https://code.jquery.com/jquery-3.5.1.min.js"
		type="text/javascript">
	</script>
</head>
<body>
<ul class="pokeTable" >
    <?php 
            $pokeList = $dbh->pokeGetter();
            $cnt = 0;
            foreach($pokeList as $pokemon):
                if($cnt++ < 7) {
    ?>
                <li class="pokemon">
                     <figure>
                         <img src=<?php echo "https://img.pokemondb.net/sprites/sword-shield/icon/".$pokemon['identifier'].".png" ?> alt="">
                     </figure>
                     <div>
                         <p style="font-family: sans-serif; text-align: center; color: grey"> 
                             n: <?php echo $pokemon['id']?>
                         </p>
                         <h5 style="text-align: center;">
                         <?php echo "".$pokemon['identifier']?>
                         </h5>
                     </div>
                 </li>
              <?php   
            endforeach; ?>
        </ul>
        </section>

    <?php } elseif ($templateParams['titolo'] == "Item List"){  ?> <!-- Clicked on ITEM page -->

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
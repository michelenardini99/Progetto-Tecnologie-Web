<?php 
    require_once('handler/bootstrap.php');
?>
    <body>
        <header>
        <?php 
            $pokeItemList = $dbh->pokeItemGetter();

            foreach($pokeItemList as $pokeItem):?>
<!--             <ol>
                <li>
                    <?php echo "".$pokeItem['identifier']?>
                </li>
            </ol>
 -->          
                <img src=<?php echo "https://img.pokemondb.net/sprites/items/".$pokeItem['identifier'].".png" ?> alt="">
      <?php endforeach; ?>
       </header>
    </body>
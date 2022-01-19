<?php 
    require_once('handler/bootstrap.php');
?>
    <body>
        <header>
        <?php 
            $pokeList = $dbh->pokeGetter();

            foreach($pokeList as $pokemon):?>
<!--             <ol>
                <li>
                    <?php echo "".$pokemon['identifier']?>
                </li>
            </ol>
 -->          
                <img src=<?php echo "https://img.pokemondb.net/sprites/sword-shield/icon/".$pokemon['identifier'].".png" ?> alt="">
      <?php endforeach; ?>
       </header>
    </body>
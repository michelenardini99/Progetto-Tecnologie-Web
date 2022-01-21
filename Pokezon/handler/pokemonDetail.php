<?php 
    require_once('handler/bootstrap.php');
?>
    <body>
        <header>

        
        <?php 
            $pokeList = $dbh->pokeGetter();

            foreach($pokeList as $pokemon):
                $len = strlen($pokemon['id']);
                if($len == "1"){
                    $pokemon['id'] = "00".$pokemon['id'];
                }
                elseif ($len == "2"){
                       $pokemon['id'] = "0".$pokemon['id'];
                }
                ?>
                <img src=<?php echo "https://assets.pokemon.com/assets/cms2/img/pokedex/full/".$pokemon['id'].".png" ?> alt="">
               
      <?php endforeach; ?>
       </header>
    </body>
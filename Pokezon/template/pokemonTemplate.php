<main>
    <body>
        <div>
            <p>
                <?php 
                $pokemon = $_GET['id'];
                $len = strlen($pokemon);
                if($len == "1"){
                    $pokemon = "00".$pokemon;
                }
                elseif ($len == "2"){
                       $pokemon = "0".$pokemon;
                }
                ?>
            </p>
            <img src=<?php echo "https://assets.pokemon.com/assets/cms2/img/pokedex/full/".$pokemon.".png" ?> alt="">
        </div>
    </body>
</main>
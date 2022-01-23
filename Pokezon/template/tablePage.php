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
                        <h5 style="text-align: center;">
                        <?php echo "".$pokemon['identifier']?>
                        </h5>
                    </div>
                </li>
            <?php } 
            else {
                $cnt=1;
                ?> 
                <br></br>
                <li class="pokemonBreak">
                    <figure>
                        <img src=<?php echo "https://img.pokemondb.net/sprites/sword-shield/icon/".$pokemon['identifier'].".png" ?> alt="">
                    </figure>
                    <div>
                        <h5 style="text-align: center;">
                        <?php echo "".$pokemon['identifier']?>
                        </h5>
                    </div>
                </li>
      <?php  } 
    endforeach; ?>
</ul>
</body>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><?php echo $templateParams["titolo"]; ?></title>
    <link rel="stylesheet" type="text/css" href="./css/index.css" />
	<script
		src="https://code.jquery.com/jquery-3.4.1.min.js"
		type="text/javascript">
	</script>
</head>
<body>
    <main>
             <!-- Slideshow container -->

<div class="slideshow-container">

    <!-- Full-width images with number and caption text -->
<div class="mySlides">
<a href="pokemonDetail.php?id=145">
<img src="../resources/slide1.jpg" id="img1" style="width:100%" alt="image of pokemon in sale">
  <div class="text" id="text1">
      <h1>Zapdos is here!!!!</h1>
      <p><span class="blink" >Zapdos the Legendary Electric / Flying Double-type Pokémon has arrived in the Kalos region, run to get it before it goes extinct</span></p>
  </div>
</a>
</div>

<div class="mySlides">
<a href="pokemonDetail.php?id=146">
   <img src="../resources/slide2.jpg" id="img2" style="width:100%" alt="image of pokemon in sale">
  <div class="text" id="text2">
        <h1>Moltres is here!!!!</h1>
      <p><span class="blink" >Moltres the Legendary Fire / Flying Double-type Pokémon has arrived in the Kalos region, run to get it before it goes extinct</span></p>
  </div>
</a>
</div>

<div class="mySlides">
<a href="pokemonDetail.php?id=147">
    <img src="../resources/slide1.jpg" id="img3" style="width:100%" alt="image of pokemon in sale">
  <div class="text" id="text3">
  <h1>Articuno is here!!!!</h1>
      <p><span class="blink">Articuno the Legendary Ice / Flying Double-type Pokémon has arrived in the Kalos region, run to get it before it goes extinct</span></p>
  </div>
</a>
</div>
</div>

<!-- Not displaying Next and previous buttons -->
<!-- <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>
<br> --> 

<!-- Not displaying The dots/circles -->

<!-- <div style="text-align:center">
<span class="dot" onclick="currentSlide(1)"></span>
<span class="dot" onclick="currentSlide(2)"></span>
<span class="dot" onclick="currentSlide(3)"></span>
</div> -->

<div class="pokemon"> <!-- pokemon random cart -->
        <?php
            $id = $dbh->getRandomPokemon()[0];
?>
<a class = "linkPok"href="pokemonDetail.php?name=<?php echo $id['identifier'] ?>">
    <div class="pokemon">
        <?php
            $pokemon = ($dbh->getInfoAbout($id['id']))[0];
            $types = $dbh->getTypes($id['id']);
            $len = strlen($id['id']);
            if ($len == "1") {
                $id['id'] = "00" . $id['id'];
            } elseif ($len == "2") {
                $id['id'] = "0" . $id['id'];
            }
        ?>
        <img src="<?php echo "https://assets.pokemon.com/assets/cms2/img/pokedex/full/" . $id['id'] . ".png" ?>" alt="image of random suggest pokemon to buy">
        <div class="pokeDescr" id="descr"> 
            <p class="pokeId"><?php echo "N°".$id['id']?></p>
            <h2 class="namePok"><?php  echo "".ucfirst($pokemon['name']) ?></h2>
            <ul class="types">      
                <?php
                    foreach ($types as $type) {
                        $color = $dbh->getColor($type['identifier'])[0];
                ?>
                    <li class="types-name" style="list-style-type: none; background-color: <?php  echo $color['color'] ?>"><p><?php echo $type['identifier'] ?></p></li>
                <?php
                    }
                ?>
            </ul>
        </div>
    </div>
</a>
<div class="shopping-cart">
    <?php 
        if(isset($templateParams['name'])){
        // $userId = $dbh->getUserId($_GET['utente']);
        $userId = $dbh->getUserId($templateParams['name']);
        $pokemonsOrder = $dbh->getPokemonInShop($userId[0]['id']);
        }
        foreach($pokemonsOrder as $pokemon){
            $len = strlen($pokemon['id']);
            if ($len == "1") {
                $pokemon['id'] = "00" . $pokemon['id'];
            } elseif ($len == "2") {
                $pokemon['id'] = "0" . $pokemon['id'];
            }
    ?>
    <div>
        <img src="<?php echo "https://assets.pokemon.com/assets/cms2/img/pokedex/full/" . $pokemon['id'] . ".png" ?>" alt="" width="250" height="250">
        <div class="pokeShop" id="descr">
            <p class="idPokeShop"><?php echo "N°".$pokemon['id']?></p>
            <h2 class="namePokeShop"><?php  echo "".ucfirst($pokemon['identifier']) ?></h2>
        </div>
    </div>
    <?php        
        }
    ?>
</div>
<script src="./js/slideShow.js" type="text/javascript"></script>
<script src="./js/color.js" type="text/javascript"></script>
</main>
</body>

<footer>

 <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
 <script src="./js/mynotif.js"></script>

 --></footer>
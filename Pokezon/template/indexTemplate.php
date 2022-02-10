<head>
    <title><?php echo $templateParams["titolo"]; ?></title>
    <link rel="stylesheet" type="text/css" href="./css/index.css" />
    <link rel="stylesheet" type="text/css" href="./css/footer.css" />
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
<a href="pokemonDetail.php?name=zapdos">
<img src="../resources/slide1.jpg" id="img1" style="width:100%" alt="image of pokemon in sale">
  <div class="text" id="text1">
      <h1>Zapdos is here!!!!</h1>
      <p><span class="blink" >Zapdos the Legendary Electric / Flying Double-type Pokémon has arrived in the Kalos region, run to get it before it goes extinct</span></p>
  </div>
</a>
</div>

<div class="mySlides">
<a href="pokemonDetail.php?name=moltres">
   <img src="../resources/slide2.jpg" id="img2" style="width:100%" alt="image of pokemon in sale">
  <div class="text" id="text2">
        <h1>Moltres is here!!!!</h1>
      <p><span class="blink" >Moltres the Legendary Fire / Flying Double-type Pokémon has arrived in the Kalos region, run to get it before it goes extinct</span></p>
  </div>
</a>
</div>

<div class="mySlides">
<a href="pokemonDetail.php?name=articuno">
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
<div class="pokeList">
<?php
for ($x = 0; $x <= 4; $x++) {
  
?>
<div class="pokemon"> <!-- pokemon random cart -->
        <?php
            $id = $dbh->getRandomPokemon()[0];
?>
<a class = "linkPok"href="pokemonDetail.php?name=<?php echo $id['identifier'] ?>">
    <div class="singlepokemon">
        <?php
            $pokemon = ($dbh->getInfoAbout($id['id']))[0];
            $outOfStocks = $dbh->pokemonOutOfStock($id['id']);
            if($outOfStocks[0]['total'] != 0){
                $display = "display: none;";
            }
            $types = $dbh->getTypes($id['id']);
            $len = strlen($id['id']);
            if ($len == "1") {
                $id['id'] = "00" . $id['id'];
            } elseif ($len == "2") {
                $id['id'] = "0" . $id['id'];
            }
        ?>
        <div class="parent">
        <img class="imgpok" src="<?php echo "https://assets.pokemon.com/assets/cms2/img/pokedex/full/" . $id['id'] . ".png" ?>" alt="image of random suggest pokemon to buy">
        <img class="sold-out"src="../resources\sold-out.png" alt="" style="<?php echo $display ?>">
        </div>
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
</div>
<?php
    }
?>
</div>
<script>
    const scrollContainer = document.querySelector(".pokeList");

    scrollContainer.addEventListener("wheel", (evt) => {
    evt.preventDefault();
    scrollContainer.scrollLeft += evt.deltaY;
});
</script>
<script src="./js/slideShow.js" type="text/javascript"></script>
<script src="./js/color.js" type="text/javascript"></script>
</main>
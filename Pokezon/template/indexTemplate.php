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
<img src="../resources/slide1.jpg" id="img1" style="width:100%">
  <div class="text" id="text1">
      <h1>Zapdos is here!!!!</h1>
      <p>Zapdos the Legendary Electric / Flying Double-type Pokémon has arrived in the Kalos region, run to get it before it goes extinct</p>
  </div>
</a>
</div>

<div class="mySlides">
<a href="pokemonDetail.php?id=146">
   <img src="../resources/slide2.jpg" id="img2" style="width:100%">
  <div class="text" id="text2">
        <h1>Moltres is here!!!!</h1>
      <p>Moltres the Legendary Fire / Flying Double-type Pokémon has arrived in the Kalos region, run to get it before it goes extinct</p>
  </div>
</a>
</div>

<div class="mySlides">
<a href="pokemonDetail.php?id=147">
    <img src="../resources/slide1.jpg" id="img3" style="width:100%">
  <div class="text" id="text3">
  <h1>Articuno is here!!!!</h1>
      <p>Articuno the Legendary Ice / Flying Double-type Pokémon has arrived in the Kalos region, run to get it before it goes extinct</p>
  </div>
</a>
</div>

<!-- Next and previous buttons -->
<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<!-- The dots/circles -->
<div style="text-align:center">
<span class="dot" onclick="currentSlide(1)"></span>
<span class="dot" onclick="currentSlide(2)"></span>
<span class="dot" onclick="currentSlide(3)"></span>
</div>
<script src="./js/slideShow.js" type="text/javascript"></script>
<script src="./js/color.js" type="text/javascript"></script>
        <aside style="text-align: right">
            Carrello
        </aside>

		<aside style="text-align: left">
            Pokemon casuali
        </aside>

		<aside style="text-align: left">
            Item casuali
        </aside>
    </main>
</body>
<footer>
    <p style="text-align: center" >
        Serafino Pokemon Enjoyer
    </p>
</footer>
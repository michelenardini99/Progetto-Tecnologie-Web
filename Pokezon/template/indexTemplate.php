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
     <div>
            <a href="tablePokemon.php">
                Pokemon
            </a>
            <a href="tableItem.php">
                Items
            </a>
            <a href="login.php">
                Login
            </a>


        </div>
    <main>

             <!-- Slideshow container -->

			<div class="slideshow-container">
    <!-- Full-width images with number and caption text -->
<div class="mySlides fade">
  <img src="https://tcg.pokemon.com/assets/img/home/wallpapers/wallpaper-42.jpg" style="width:100%">
  <div class="text">Caption Text</div>
</div>

<div class="mySlides fade">
  <img src="https://tcg.pokemon.com/assets/img/home/wallpapers/wallpaper-41.jpg" style="width:100%">
  <div class="text">Caption Two</div>
</div>

<div class="mySlides fade">
  <img src="https://tcg.pokemon.com/assets/img/home/wallpapers/wallpaper-40.jpg" style="width:100%">
  <div class="text">Caption Three</div>
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
        CAZZO CULO
    </p>
</footer>
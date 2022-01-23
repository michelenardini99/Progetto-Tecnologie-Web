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
    <nav class="navbar">
        <a class="logo" href="index.php">
            <img src="../resources/logo.png" width="187.5" height="150"alt="">
        </a>
        <a class="logoRestrinct" href="index.php">
            <img src="../resources/logoRestrinct.png" width="396,91" height="50"alt="">
        </a>
        <button class="hb-button" id="hb-btn">
            <img src="../resources/navbtn.png" width="60" height="60" alt="">
        </button>
        <ul class="nav-container">
            <a href="index.php">
                <li class="nav-home">
                    <div>
                        <img src="../resources/pokeball.png" width="50" height="50" alt="">
                    </div>
                    <div>
                        <p>Home</p>
                    </div>
                </li>
            </a>
            <a href="tablePokemon.php">
                <li class="nav-poke">
                    <div>
                        <img src="../resources/pokemon.jpg" width="50" height="50" alt="">
                    </div>
                    <div>
                        <p>Pokemon</p>
                    </div>
                </li>
            </a>
            <a href="tableItem.php">
                <li class="nav-item">
                <div>
                        <img src="../resources/item.png" width="50" height="50" alt="">
                    </div>
                    <div>
                        <p>Item</p>
                    </div>
                </li>
            </a>
        </ul>
        <button class="login-button" id="login-btn">
            <img src="../resources/login1.png" width="75" height="75" alt="">
        </button>
        <button class="shop-button" id="shop-btn">
            <img src="../resources/shopping.png" width="75" height="75" alt="">
        </button>
    </nav>
    <script src="navScript.js"></script>
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
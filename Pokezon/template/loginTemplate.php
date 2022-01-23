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
    <main>
        <div>
        <h1 style="text-align: center;">
                Welcome you bastard
            </h1>
        </div>
    <div class="wrapper">
        <div class="logo">
            <img src="https://icon2.cleanpng.com/20171220/kqw/pokeball-png-5a3a4a7e247ce7.9167778215137695981495.jpg" alt=""> </div>
                <div class="text-center mt-4 name"> PokeZone </div>
                <form class="p-3 mt-3">
                <div class="form-field d-flex align-items-center">
                <span class="far fa-user"></span>
             <input type="text" name="userName" id="userName" placeholder="Username"> </div>
        <div class="form-field d-flex align-items-center"> <span class="fas fa-key"></span> <input type="password" name="password" id="pwd" placeholder="Password"> </div> <button class="btn mt-3">Login</button>
        </form>
        <div class="text-center fs-6"> <a href="#">Forget password?</a> or <a href="#">Sign up</a> </div>
    </div>
    </main> 
</body>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><?php echo $templateParams["titolo"]; ?></title>
    <link rel="stylesheet" type="text/css" href="./css/login.css" />

	<script
		src="https://code.jquery.com/jquery-3.4.1.min.js"
		type="text/javascript">
	</script>
</head>
<body>
    <main>
        <div>
        <h1 style="text-align: center;">
                Welcome you bastard
            </h1>
        </div>
    <div class="wrapper">
        <div class="loginLogo">
            <img src="./../resources/icon.png" alt=""> </div>
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
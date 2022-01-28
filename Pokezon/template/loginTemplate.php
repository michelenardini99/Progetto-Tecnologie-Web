<!DOCTYPE html>
<html lang="it">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><?php echo $templateParams["titolo"]; ?></title>
    <link rel="stylesheet" type="text/css" href="./css/login.css" />

    <script src="https://code.jquery.com/jquery-3.4.1.min.js" type="text/javascript">
    </script>

    <script type="text/javascript" src="js/sha512.js"></script>
    <script type="text/javascript" src="js/forms.js"></script>
</head>

<?php
if(isset($_GET['error'])) { 
   echo 'Error Logging In!';
}
?>

<body>
    <main>
        <div>
            <h1 style="text-align: center; margin-top: 20px;">
                Welcome
            </h1>
        </div>
        <div class="wrapper">
            <div class="loginLogo">
                <img src="./../resources/icon.png" alt="">
            </div>
            <div class="text-center mt-4 name"> PokeZone </div>
            <form method="post" action="handler/process_login.php" class="p-3 mt-3">
                <div class="form-field d-flex align-items-center">
                    <span class="far fa-user"></span>
                    <input name="userName" id="userName" type="text" placeholder="Username">
                </div>
                <div class="form-field d-flex align-items-center">
                    <span class="fas fa-key"></span> 
                    <input type="password" name="p" id="pwd" placeholder="Password">
                </div>
                    <input class="btn mt-3" type="button" value="Login" onclick="formhash(this.form, this.form.pwd);" >
            </form>
            <div class="text-center fs-6"> <a href="register.php">Sign up</a> </div>
        </div>
    </main>
</body>
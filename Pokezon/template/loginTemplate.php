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

<body>
    <main>
        <div> 
            <?php 
            if(isset($_GET['error'])):?>

            <h2 style="text-align: center; margin-top: 20px;">
                <?php echo "".$_GET['error'];?> <!-- error Message -->
            </h2>
                <?php endif ?>
        </div>
        <div class="wrapper">           <!-- login element -->
            <div class="loginLogo">
                <img src="./../resources/icon.png" alt="pokezon logo image">
            </div>
            <div class="text-center mt-4 name"> PokeZone </div>
            <form method="post" action="handler/process_login.php" class="p-3 mt-3">
                <div class="form-field d-flex align-items-center">
                    <span class="far fa-user"></span>
                    <input name="userName" id="userName" type="text" placeholder="Username"  aria-label="username placeholder"> <!-- aria label is for accessability form --> 
                </div>
                <div class="form-field d-flex align-items-center">
                    <span class="fas fa-key"></span> 
                    <input type="password" name="p" id="pwd" placeholder="Password" aria-label="password placeholder"> <!-- aria label is for accessability form -->
                </div>
                    <input id="login" class="btn mt-3" type="button" value="Login"  aria-label="login button" onclick="formhash(this.form, this.form.pwd);"> <!-- aria label is for accessability form -->
            </form>
                  <script>
                        // Get the input field

                        var input = document.getElementById("login");

                        // Execute a function when the user releases a key on the keyboard
                        input.addEventListener("keyup", function(event) {
                            console.log("heiiii")
                          // Number 13 is the "Enter" key on the keyboard
                          if (event.keyCode === 13) {
                            // Cancel the default action, if needed
                            event.preventDefault();
                            // Trigger the button element with a click
                            document.getElementById("myBtn").click();
                          }
                        }); 
                    </script>
                <div>
                    <br>
                    <p>
                        Or join this site and <a class="btn mt-3"  href="register.php"> Register</a>
                    </p> 
                        
                </div>
        </div>
    </main>
</body>
</html>
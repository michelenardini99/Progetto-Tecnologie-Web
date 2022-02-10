<head>
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
        <div class="wrapper">
            <div class="loginLogo">
                <img src="./../resources/icon.png" alt="">
            </div>
            <div class="text-center mt-4 name"> PokeZone </div>
            <form method="post" action="handler/registerSession.php" class="p-3 mt-3">
                <div class="form-field d-flex align-items-center">
                    <span class="far fa-user"></span>
                    <input name="email" id="email" type="text" placeholder="Email" aria-label="email placeholder">
                </div>
                <div class="form-field d-flex align-items-center">
                    <span class="far fa-user"></span>
                    <input name="userName" id="userName" type="text" placeholder="Username" aria-label="username placeholder">
                </div>
                <div class="form-field d-flex align-items-center">
                    <span class="fas fa-key"></span> 
                    <input type="password" name="p" id="pwd" placeholder="Password" aria-label="password placeholder">
                </div>
                <div class="dropdown form-field d-flex align-items-center">
                    <input class="submit" list="roles" name="role" id="role" placeholder="Role" aria-label="role placeholder">
                        <datalist id="roles">
                            <option value="Trainer"></option>
                            <option value="Trader"></option>
                            <option value="Merchant"></option>
                            <option value="Druid"></option>
                        </datalist>
                    <span class="fas fa-key"></span> 
                </div>
                <div class="form-field d-flex align-items-center" id="hidden">
                    <span class="fas fa-iban"></span> 
                    <input name="iban" id="iban" placeholder="Iban(for merchant)" aria-label="iban placeholder">
                </div>
                    <input class="btn mt-3" type="button" value="Register" aria-label="register button" onclick="formhash(this.form, this.form.pwd);" >
            </form>
        </div>
    </main>
</body>
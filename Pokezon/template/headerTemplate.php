<link rel="stylesheet" type="text/css" href="./css/nav.css" />
<nav class="navbar">
        <a class="logo" href="index.php">
            <img src="../resources/logo.png" width="187.5" height="150" alt="logo picture of pokeZone">
        </a>
        <a class="logoRestrinct" href="index.php">
            <img src="../resources/logoRestrinct.png" width="396,91" height="50"alt="logo text of pokeZone">
        </a>
        <button class="hb-button" id="hb-btn">
            <img src="../resources/navbtn.png" width="60" height="60" alt="menu button if page restricted">
        </button>
        <ul class="nav-container" id="nav">
            <a href="index.php">
                <li class="nav-home">
                    <div>
                        <img src="../resources/pokeball.png" width="50" height="50" alt="pokeball image to link home page">
                    </div>
                    <div>
                        <p>Home</p>
                    </div>
                </li>
            </a>
            <a href="tablePokemon.php">
                <li class="nav-poke">
                    <div>
                        <img src="../resources/pokemon.jpg" width="50" height="50" alt="gengar image to link pokemon list page">
                    </div>
                    <div>
                        <p>Pokemon</p>
                    </div>
                </li>
            </a>
            <a href="tableItem.php">
                <li class="nav-item">
                <div>
                        <img src="../resources/item.png" width="50" height="50" alt="ampoule image to link items list page">
                    </div>
                    <div>
                        <p>Item</p>
                    </div>
                </li>
            </a>
            <a href="login.php">
                <li class="nav-login">
                <div>
                        <img src="../resources/vera.png" width="75" height="75" alt="trainer image to link login page">
                    </div>
                    <div>
                        <p>
                            <?php 
                                if(isset($_GET['utente'])){
                                    echo "".$_GET['utente'];
                                }else{
                                    echo "Login";
                                }
                            ?>    
                        </p>
                    </div>
                </li>
            </a>
        </ul>
        </a>
        <button class="shop-button" id="shop-btn">
            <img src="../resources/shopping.png" width="75" height="75" alt="cart button to check adedd objects">
        </button>
    </nav>
    <script src="./js/navScript.js"></script>
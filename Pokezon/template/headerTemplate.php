<?xml version="1.0" codifica="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><?php echo $templateParams["titolo"]; ?></title>
    <link rel="stylesheet" type="text/css" href="./css/nav.css" />
    <link rel="shortcut icon" type="image/x-icon" href="./../resources/favicon.png"/>
	<script
		src="https://code.jquery.com/jquery-3.4.1.min.js"
		type="text/javascript">
	</script>
    <title>Home</title>
</head>
<nav class="navbar">
        <a class="logo" href="index.php">
            <img src="../resources/logo.png" width="187" height="150" alt="logo picture of pokeZone">
        </a>
        <a class="logoRestrinct" href="index.php">
            <img src="../resources/logoRestrinct.png" width="397" height="50" alt="logo text of pokeZone">
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
                <?php
                                if(isset($templateParams['name'])){
                                    echo "<a href=\"user.php\">";
                                }else{
                                    echo "<a href=\"login.php\">";
                                }
                            ?>
                <li class="nav-login">
                <div>
                        <?php 
                            if($user = $dbh->getActiveUser()){ ?>
                                <img src= <?php echo "".$user[0]['avatar'] ?>  width="75" height="75" alt="trainer image to link login page">
                                <?php
                            }else{ ?>
                                <img src="../resources/login1.png" width="75" height="75" alt="trainer image to link login page">
                            <?php }?>
                    </div>
                    <div>
                        <p>
                            <?php
                                if(isset($templateParams['name'])){
                                    echo "".$templateParams['name'];
                                }else{
                                    echo "Login";
                                }
                            ?>    
                        </p>
                    </div>
                </li>
            </a>
            <a href="./logOut.php">
                <li class="nav-logout" <?php if(empty($dbh->getActiveUser()) == TRUE){echo "style=display:none;";}?>>
                    <div>
                        <img src="../resources/logout.png" width="30" height="40" alt="lucinda image to logout from pokeZone">
                    </div>
                    <div>
                        <p>LogOut</p>
                    </div>
                </li>
            </a>
        </ul>
        </a>
        <a href="shop.php" title="shop-link">
            <button class="shop-button" id="shop-btn">
                <img src="../resources/shopping.png" width="75" height="75" alt="cart button to check adedd objects">
            </button>
        </a>
    </nav>
<script src="./js/navScript.js"></script>
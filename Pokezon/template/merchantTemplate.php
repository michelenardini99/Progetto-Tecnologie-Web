<link rel="stylesheet" type="text/css" href="./css/merchant.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js" type="text/javascript">
</script>
<body>
    <div class="box">
            <?php 
                if(isset($_GET['filename'])){
                    $dbh->updateAvatar($user[0]['id'],$_GET['filename']);
                    header("Location: ./user.php");
                }
                if(isset($templateParams['name'])){
                    $user = $dbh->getUserID($templateParams['name']);
                }
            ?>
            <img src= <?php echo "".$user[0]['avatar']?> alt="avatar">
            <h2>
                You can change your current avatar, choose another trainer
            </h2>
            <br>
            <form action="./user.php" onSubmit="if(document.getElementById('myFile').value == '') return false;">
            <input type="file" value="Choose a trainer" id="myFile" name="filename" >
            <input type="submit" value="Customize"  placeholder="Customize">
            </form>
        <br>
        <h1>
            <?php 
            if(isset($_GET["name"])){
                $mName = $_GET["name"];
                echo "".$mName;
            } else {
                $mName = $templateParams['name'];
                echo "".$mName;
            }
            ?></h1>
        <div class="link" 
            style=<?php 
                if(isset($_GET["name"])){
                    echo "display:none";
                }
            ?>
        >
            <a href="newArticle.php">Add article</a>
        </div>
        <div class="table">
        <?php 
            $usedPokemonList = $dbh -> getPokemonFromMerchant( $dbh -> getIdMerchant( $mName)[0]['codV']);
           /*  $usedPokemonList = $dbh -> getPokemonFromMerchant($cod); */
        ?>
        <table>
            <thead>
                <th>
                    Pokemon
                </th>
                <th>
                    Name
                </th>
                <th>
                    Price
                </th>
                <th>
                    quantity 
                </th>
                <th>
                    description
                </th>
                <th>

                </th>
            </thead>
            <tbody>
                <?php 
                    foreach($usedPokemonList as $pokmeon): 
                        $name = $dbh-> getName($pokmeon['pokemonId']);
                        $types = $dbh->getTypes($pokmeon['pokemonId']);
                        $color = $dbh->getColor($types[0]['identifier']);
                        $quantity = $dbh->getQuantityFromPokemonMerchant($dbh -> getIdMerchant( $mName)[0]['codV'], $pokmeon['pokemonId']);
                        if($quantity[0]['quantity'] != 0){
                            $display = "display: none;";
                        }
                        ?>
                    <tr style="background-color: <?php echo $color[0]['color'] ?>">
                        <td>
                            <div class="parent"></div>
                                <img src=<?php echo "https://img.pokemondb.net/sprites/sword-shield/icon/".$name[0]['identifier'].".png" ?> class="imgPoke" alt="">
                                <img src="../resources/sold-out.png" class="sold-out" style="<?php echo $display ?> alt="">
                            </div>
                        </td>
                        <td>
                            <p>
                                <?php echo "".$name[0]['identifier']?>
                            </p> 
                        </td>
                        <td>
                            <p>
                                <?php echo "$".$pokmeon['price'].".00"?>
                            </p>
                        </td>
                        <td>
                            <p>
                                <?php echo "".$pokmeon['quantity']?>
                            </p>
                        </td>
                        <td>
                            <p>
                                <?php echo "".$pokmeon['description']?>
                            </p>
                        </td>
                        <td>
                            <a href="user.php" class="removePokemon"  onClick="removePokemon(<?php echo $dbh -> getIdMerchant( $mName)[0]['codV'] ?>, <?php echo $pokmeon['pokemonId'] ?>, <?php echo $pokmeon['quantity'] ?>, <?php echo $pokmeon['price'] ?>)" >Remove Pokemon</button>
                        </td>
                    </tr>
                        
                <?php endforeach;?>
            </tbody>
        </table>
    </div>
    </div>
    <script src="./js/removePokemon.js" type="text/javascript"></script>
</body>
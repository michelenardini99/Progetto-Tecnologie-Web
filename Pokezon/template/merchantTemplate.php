<link rel="stylesheet" type="text/css" href="./css/merchant.css" />

<body>
    <div class="box">
        <img src=<?php echo "../resources/Trainers/trainer0".strval(random_int(1, 76)).".png"?> alt="avatar" class="box-img">
        <h1><?php 
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
            </thead>
            <tbody>
                <?php 
                    foreach($usedPokemonList as $pokmeon): 
                        $name = $dbh-> getName($pokmeon['pokemonId']);
                        $types = $dbh->getTypes($pokmeon['pokemonId']);
                        $color = $dbh->getColor($types[0]['identifier']);
                        ?>
                    <tr style="background-color: <?php echo $color[0]['color'] ?>">
                        <td>
                            <img src=<?php echo "https://img.pokemondb.net/sprites/sword-shield/icon/".$name[0]['identifier'].".png" ?> alt="">
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
                    </tr>
                        
                <?php endforeach;?>
            </tbody>
        </table>
    </div>
    </div>
</body>
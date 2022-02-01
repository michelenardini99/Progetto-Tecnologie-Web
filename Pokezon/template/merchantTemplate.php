<link rel="stylesheet" type="text/css" href="./css/merchant.css" />

<body>
    <div class="box">
        <img src=<?php echo "../resources/Trainers/trainer0".strval(random_int(1, 76)).".png"?> alt="avatar" class="box-img">
        <h1><?php echo "".$templateParams['name']?></h1>
        <a href="newArticle.php">Add article</button>
    </div>
        
    <div class="table">
        <?php 
            $usedPokemonList = $dbh -> getPokemonFromMerchant($cod);
        ?>
        <table>
            <thead>
                <th>
                    Pokemon
                </th>
                <th>
                    ID
                </th>
                <th>
                    Price
                </th>
                <th>
                    description
                </th>
            </thead>
            <tbody>
                <?php 
                    foreach($pokemon as $usedPokemonList): 
                        $name = $dbh-> getID($pokmeon[0]['pokemonId']) ?>
                    <tr>
                        <td>
                            <img src=<?php echo "https://img.pokemondb.net/sprites/sword-shield/icon/".$name.".png" ?> alt="">
                        </td>
                        <td>
                            <p>
                                <?php echo "".$pokmeon[0]['pokemonId']?>
                            </p> 
                        </td>
                        <td>
                            <p>
                                <?php echo "".$pokmeon[0]['price']?>
                            </p>
                        </td>
                        <td>
                            <p>
                                <?php echo "".$pokmeon[0]['quantity']?>
                            </p>
                        </td>
                        <td>
                            <p>
                                <?php echo "".$pokmeon[0]['descr']?>
                            </p>
                        </td>
                    </tr>
                        
                <?php endforeach;?>
            </tbody>
        </table>
    </div>

</body>
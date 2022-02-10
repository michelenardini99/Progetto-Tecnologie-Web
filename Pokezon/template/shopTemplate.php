<head>
    <title><?php echo $templateParams["titolo"]; ?></title>
    <link rel="stylesheet" type="text/css" href="./css/shop.css" />
	<script
		src="https://code.jquery.com/jquery-3.4.1.min.js"
		type="text/javascript">
	</script>
</head>
<body>
    <div class="small-container cart-page">
        
        <table id="myTable">
            <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Subtotal</th>
            </tr>
            <?php 
                $result = $dbh->getActiveUser();
                if($result){
                    $userId = $dbh->getUserId($templateParams["nome"]);
                    $pokemonsOrder = $dbh->getPokemonInShop($userId[0]['id']);
                    $i=0;
                    foreach($pokemonsOrder as $pokemon){
                        $pokemonid=$pokemon['id'];
                        $len = strlen($pokemon['id']);
                        if ($len == "1") {
                        $pokemon['id'] = "00" . $pokemon['id'];
                    } elseif ($len == "2") {
                        $pokemon['id'] = "0" . $pokemon['id'];
                    }
                    $info = $dbh->getSinglePokemonFromMerchant($pokemon['codV'],$pokemonid);
            ?>
            <tr>
                <td>
                    <div class="cart-info">
                        <a href=<?php echo "./pokemonDetail.php?name=".$pokemon['identifier']?> >
                            <img src="<?php echo "https://assets.pokemon.com/assets/cms2/img/pokedex/full/". $pokemon['id'].".png" ?>" alt="<?php echo $pokemon['identifier'] ?>">
                        </a>
                        <div>
                            <a href=<?php echo "./pokemonDetail.php?name=".$pokemon['identifier']?> >
                                <p><?php echo $pokemon['identifier'] ?></p>
                            </a>
                            <p class="<?php echo "valuePokemon".$i ?>">$<?php echo $info[0]['price']?>.00</p>
                            <br>
                            <p id="sold-by"> Sold by: <?php echo "".$info[0]['name']?></p>
                            <a href="./shop.php" class="<?php echo 'remove'.$i ?>" onclick="removePokemon(<?php echo $pokemonid ?>,<?php echo $pokemon['orderId'] ?>);"> Remove</a>
                        </div>
                    </div>
                </td>
                <td><input type="number" value="<?php echo $pokemon['quantity'] ?>" class="<?php echo "quantity".$i ?>" max="<?php echo $info[0]['quantity'] ?>" onchange='updateQuantity(this.value, <?php echo $pokemon['orderId'] ?>, <?php echo $pokemonid ?>, <?php echo $pokemon['codV'] ?>)'></td>
                <td class="<?php echo "totalPokemon".$i ?>"><?php echo $pokemon['value']?></td>
            </tr>
            <?php       
                        $i = $i +1; 
                    }
                
            ?>
                <?php 
                    $itemOrderList = $dbh->getItemInShop($userId[0]['id']);
                    foreach($itemOrderList as $itemOrder){
                ?>
            <tr>
                <td>
                    <div class="cart-info">
                        <a href= <?php  echo "./item.php?name=".$itemOrder['identifier'] ?>>
                        <?php 
                            if(str_starts_with($itemOrder['identifier'], "tm") || str_starts_with($itemOrder['identifier'], "hm") || str_starts_with($itemOrder['identifier'], "tr")){ ?>
                                <img src=<?php echo "https://img.pokemondb.net/sprites/items/tm-normal.png" ?> alt="<?php echo $itemOrder['identifier'] ?>" style="width:75px; height:75px;">
                            <?php } else { ?>
                        <img src=<?php echo "https://img.pokemondb.net/sprites/items/".$itemOrder['identifier'].".png"?> alt="<?php echo $itemOrder['identifier'] ?>" style="width:100px; height:100px;">
                            <?php 
                            } 
                            ?>
                        </a>
                        <div>
                        <a href= <?php  echo "./item.php?name=".$itemOrder['identifier'] ?>>
                            <p><?php echo $itemOrder['identifier']?></p>
                        </a>
                            <p class="<?php echo "valuePokemon".$i ?>">$<?php echo $itemOrder['cost']?>.00</p>
                            <br>
                            <a href="./shop.php" class="<?php echo 'remove'.$i ?>" onclick="removeItem(<?php echo $itemOrder['itemId'] ?>,<?php echo $itemOrder['orderId'] ?>);"> Remove</a>
                        </div>
                    </div>
                </td>
                <td><input type="number" value="<?php echo $itemOrder['quantity'] ?>" class="<?php echo "quantity".$i ?>" onchange='updateQuantityItem(this.value, <?php echo $itemOrder['orderId'] ?>, <?php echo $itemOrder['itemId'] ?>, <?php echo "1" ?>)'></td>
                <td class="<?php echo "totalPokemon".$i ?>"><?php echo $itemOrder['cost']?></td>
            </tr>
                <?php 
                             $i = $i +1;
                        }
                    }
                ?>
        </table>
        <?php if(!sizeof($pokemonsOrder) && !sizeof($itemOrderList)){
            echo "<h2 style=\" text-align: center; font-size: x-large; margin-bottom: 30%; \"> There is no order here </h2>";
        } ?>
        <div class="total-price">
            <table>
                <tr>
                    <td>Total</td>
                    <td class="total"></td>
                </tr>
            </table>
        </div>
        <div>
            <form action="./dataInsert.php">
                <button type="submit" style= "<?php if(!sizeof($pokemonsOrder) && !sizeof($itemOrderList)){echo "display:none";}?>" class="checkout">
                    Go to checkout 
                </button>

            </form>
        </div>
    </div>
    <script>
        function updateQuantity(quantity, orderId, pokeId, codV){
            var order = orderId;
            var quantity = quantity;
            var pokeid = pokeId;
            var codV = codV;
            $.ajax({
                url: './updateQuantity.php',
                type: 'POST',
                data: {order: order, quantity: quantity, pokeid: pokeid, codV: codV},
            });
        }

        function updateQuantityItem(quantity, orderId, itemId, codV){
            var order = orderId;
            var quantity = quantity;
            var itemid = itemId;
            var codV = codV;
            console.log(order);
            console.log(quantity);
            console.log(itemid);
            console.log(codV);
            $.ajax({
                url: './updateQuantityItem.php',
                type: 'POST',
                data: {order: order, quantity: quantity, itemid: itemid, codV: codV},
            });
        }
    </script>
    <script src="./js/shop.js" type="text/javascript"></script>
</body>
</html>
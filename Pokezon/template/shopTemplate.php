<!DOCTYPE html>
<html lang="it">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
                        <img src="<?php echo "https://assets.pokemon.com/assets/cms2/img/pokedex/full/". $pokemon['id'].".png" ?>" alt="">
                        <div>
                            <p><?php echo $pokemon['id'] ?></p>
                            <p><?php echo $pokemon['identifier'] ?></p>
                            <p class="<?php echo "valuePokemon".$i ?>">$<?php echo $info[0]['price']?>.00</p>
                            <br>
                            <a href="./shop.php" class="<?php echo 'remove'.$i ?>" onclick="removePokemon(<?php echo $pokemonid ?>,<?php echo $pokemon['orderId'] ?>)">Remove</a>
                        </div>
                    </div>
                </td>
                <td><input type="number" value="<?php echo $pokemon['quantity'] ?>" class="<?php echo "quantity".$i ?>" max="<?php echo $info[0]['quantity'] ?>"></td>
                <td class="<?php echo "totalPokemon".$i ?>"><?php echo $pokemon['value']?></td>
            </tr>
            <?php       
                    $i = $i +1; 
                }
            ?>
        </table>
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
                <button type="submit" style= <?php if(!sizeof($pokemonsOrder)){echo "display:none";}?>>
                    Go to checkout 
                </button>
            </form>
        </div>
    </div>
    <script src="./js/shop.js" type="text/javascript"></script>
</body>
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
        <table>
            <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Subtotal</th>
            </tr>
            <?php 

                $userId = $dbh->getUserId($templateParams["nome"]);
                $pokemonsOrder = $dbh->getPokemonInShop($userId[0]['id']);
                foreach($pokemonsOrder as $pokemon){
                    $len = strlen($pokemon['id']);
                    if ($len == "1") {
                    $pokemon['id'] = "00" . $pokemon['id'];
                } elseif ($len == "2") {
                    $pokemon['id'] = "0" . $pokemon['id'];
                }
            ?>
            <tr>
                <td>
                    <div class="cart-info">
                        <img src="<?php echo "https://assets.pokemon.com/assets/cms2/img/pokedex/full/". $pokemon['id'].".png" ?>" alt="" width="200" height="200">
                        <div>
                            <p><?php echo $pokemon['identifier'] ?></p>
                            <small>$<?php echo $pokemon['value']?>.00</small>
                            <a href="">Remove</a>
                        </div>
                    </div>
                </td>
                <td><input type="number" value="<?php echo $pokemon['quantity'] ?>"></td>
                <td>$50.00</td>
            </tr>
            <?php        
                }
            ?>
        </table>
    </div>
</body>
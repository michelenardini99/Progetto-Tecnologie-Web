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
                        <img src="<?php echo "https://assets.pokemon.com/assets/cms2/img/pokedex/full/". $pokemon['id'].".png" ?>" alt="">
                        <div>
                            <p><?php echo $pokemon['identifier'] ?></p>
                            <p class="<?php echo "valuePokemon".$i ?>">$<?php echo $pokemon['value']?>.00</p>
                            <br>
                            <?php
                                if(isset($_POST['remove'.$i])){
                                    echo "<script>console.log('Debug Objects: " . "ciao" . "' );</script>";
                                }
                            ?>
                            <a href="" class="<?php echo 'remove'.$i ?>" onclick="deleteFunc()">Remove</a>
                        </div>
                    </div>
                </td>
                <td><input type="number" value="<?php echo $pokemon['quantity'] ?>" class="<?php echo "quantity".$i ?>"></td>
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
    </div>
    <script src="./js/shop.js" type="text/javascript"></script>
</body>
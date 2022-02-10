<?php SESSION_START();?>
<head>
    <title><?php echo $templateParams["titolo"]; ?></title>
    <link rel="stylesheet" type="text/css" href="./css/checkout.css" />
    <script
		src="https://code.jquery.com/jquery-3.5.1.min.js"
		type="text/javascript">
	</script>
</head>
<body>      
<div class='container'>
  <div class='window'>
    <div class='order-info'>
      <div class='order-info-content'>
        <h2>Order Summary</h2>
            <div class='line'></div>
            <?php 
                $userId = $dbh->getUserId($templateParams["name"]);
                $pokemonsOrder = $dbh->getPokemonInShop($userId[0]['id']);
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
         <table class='order-table'>
          <tbody>
           <tr>
              <td>
                  <img  src="<?php echo "https://assets.pokemon.com/assets/cms2/img/pokedex/full/". $pokemon['id'].".png" ?>" alt="<?php echo $pokemon['identifier'] ?>" class='full-width'></img>
              </td>
              <td>
                <br> <p style="font-weight: bold; font-size: 18;"> <?php echo ucfirst($pokemon['identifier']) ?> </p> <br> 
                <br> <p>Quantity: <?php echo $pokemon['quantity'] ?></p> <br>
              </td>
            </tr>
            <tr>
              <td>
                <div class='price'><?php echo "$ ".number_format((float)($info[0]['price']*$pokemon['quantity']), 2, '.', '')?></div>
              </td>
            </tr>
           
          </tbody>
        </table>
        <div class='line'></div>
            <?php       
                }
            ?>

            <?php 
                $itemOrderList = $dbh->getItemInShop($userId[0]['id']);
                    foreach($itemOrderList as $itemOrder):
            ?>
         <table class='order-table'>
          <tbody>
           <tr>
              <td>

                                <?php 
                                    if(str_starts_with($itemOrder['identifier'], "tm") || str_starts_with($itemOrder['identifier'], "hm") || str_starts_with($itemOrder['identifier'], "tr")){ ?>
                                        <img src=<?php echo "https://img.pokemondb.net/sprites/items/tm-normal.png" ?>  alt="<?php echo $itemOrder['identifier'] ?>" width="81.75">
                                <?php } else { ?>
                                        <img src=<?php echo "https://img.pokemondb.net/sprites/items/".$itemOrder['identifier'].".png"?>  alt="<?php echo $itemOrder['identifier'] ?>" width="81.75">
                                <?php }?>
              </td>
              <td>
                <br> <p style="font-weight: bold; font-size: 18;"> <?php echo ucfirst($itemOrder['identifier']) ?> </p> <br> 
                <br> <p>Quantity: <?php echo $itemOrder['quantity'] ?></p> <br>
              </td>
            </tr>
            <tr>
              <td>
                <div class='price'><?php echo "$ ".number_format((float)($itemOrder['cost']*$itemOrder['quantity']), 2, '.', '')?></div>
              </td>
            </tr>
           
          </tbody>
        </table>
        <div class='line'></div>
            <?php       
            endforeach;
            ?>

       <div class='total'>
          <span style='float:left;'>
            <div class='thin dense'>Delivery</div>
            TOTAL
          </span>
          <span style='float:right; text-align:right;'>
            <div id='thin dense'>$4.95</div>
            <div id="totalPrice"></div>
          </span>
        </div>
    </div>
    </div>
        <div class='credit-info'>
          <div class='credit-info-content'>
            <table class='half-input-table'>
              <tr><td>Please select your card: </td><td><div class='dropdown' id='card-dropdown'><div class='dropdown-btn' id='current-card'>Visa</div>
                <div class='dropdown-select'>
                <ul>
                  <li>Master Card</li>
                  <li>American Express</li>
                  </ul></div>
                </div>
               </td></tr>
            </table>
            <img src='https://dl.dropboxusercontent.com/s/ubamyu6mzov5c80/visa_logo%20%281%29.png' height='80' alt="credit-card" class='credit-card-image' id='credit-card-image'></img>
            <label for="cc">Card Number
              <input class='input-field' id="cc" type="tel" inputmode="numeric" pattern="[0-9\s]{13,19}" autocomplete="cc-number" maxlength="19" placeholder="xxxx xxxx xxxx xxxx" onclick="$()" required></input>
            </label>
            <label for="holder">
            Card Holder
              <input class='input-field' id="holder"></input>
            </label>
            <table class='half-input-table'>
              <tr>
                <td>
                  <label for="exp"> Expires
                    <input class='input-field' id="exp" type="month" required></input>
                </td>
                <td>
                  <label for="psw">CVC
                    <input class='input-field' id="psw" type="password" maxlength="3" required></input>
                  </label>
                </td>
              </tr>
            </table>
            <table class='half-input-table'>
              <tr>
                <td>
                  <label for="address"> Address
                    <input class='input-field' id="address" required></input>
                  </label>
                </td>
                <td>
                  <label for="cp">CP
                    <input class='input-field' id="cp" inputmode="numeric" maxlength="5" required></input>
                  </label>
                </td>
              </tr>
            </table>
            <button type="button" class='pay-btn' onClick='removeQuantity(<?php if(!empty($pokemonsOrder)){echo json_encode($pokemonsOrder);} else {echo json_encode($itemOrderList);} ?>);'>Confirm</button>
            <script>
                                        $(document).ready(function(){
                                            $("button").click(function(){ 
                                                $.ajax({
                                                    type: "POST",
                                                    url: "./notification.php",
                                                    data: {checkout: "check"},
                                                    success: function(data, textStatus, jqXHR)
			{
                if(data[0] != "<"){ 
				var data = jQuery.parseJSON(data);
					var data_notif = data.notif;
					for (var i = data_notif.length - 1; i >= 0; i--) {
						var theurl = data_notif[i]['url'];
						var notifikasi = new Notification(data_notif[i]['title'], {
							icon: data_notif[i]['icon'],
							body: data_notif[i]['msg'],
						});
						console.log(notifikasi);
						notifikasi.onclick = function () {
							window.open(theurl); 
							notifikasi.close();     
						};
						setTimeout(function(){
							notifikasi.close();
						}, 5000);
					};
				}
			},
			error: function(jqXHR, textStatus, errorThrown)
			{

			}
                                                });
                                            });
                                        });
                                    </script>
          </div>
        </div>
      </div>
</div>
<script src="./js/recap.js"></script>
<script src="./js/dataInsert.js"></script>
<script src="./js/removeQuantity.js"></script>
</body>
</html>
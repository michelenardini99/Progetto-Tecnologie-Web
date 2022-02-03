<!-- <?php SESSION_START();?>
<body> 
	<script
		src="https://code.jquery.com/jquery-3.4.1.min.js"
		type="text/javascript">
	</script>
    <div class="container">
        <div class="anagrafics">
            <table id="head">
                <thead>
                   <th>
                        Name
                    </th>
                    <th>
                        Surname
                    </th>
                    <th>
                        Email
                    </th>
                    <th>
                        CellPhone
                    </th>
                    
                </thead>
                <tbody id="tbody">
                    <tr>
                       <td>
                        <form action="">
                            <input type="text" name="name" id="name">
                        </form>
                       </td>
                       <td>
                           <form action="">
                               <input type="text" name="surname" id="surname">
                           </form>
                       </td>
                       <td>
                        <form action="">
                            <input type="email" name="email" id="email">
                        </form>
 
                       </td>
                       <td>
                       <form action="">
                            <input type="tel" name="phone" id="phone">
                        </form>
                       </td>
                   </tr>
                </tbody>
            </table>
        </div>
        <div class="address">
            <table>
                <thead>
                    <th>
                        City
                    </th>
                    <th>
                        Address
                    </th>
                    <th>
                        Civic N.
                    </th>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <form action="">
                                <input type="text" name="city" id="city" placeholder="Cesena">
                            </form>
                        </td>
                        <td>
                            <form action="">
                                <input type="text" name="address" id="address" placeholder="via Universita'">
                            </form>
                        </td>
                        <td>
                            <form action="">
                                <input type="number" name="civic" id="civic" placeholder="50">
                            </form>
                        </td>
                    </tr>             
                </tbody>
            </table>
        </div>
        <div class="cardNumber">
            <table>
                <thead>
                    <th>
                        Card-Number
                    </th>
                    <th>
                        Expiration Date
                    </th>
                    <th>
                        Secret Number
                    </th>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <form action="">
                                <input type="text" name="c number" id="cr_number" placeholder="XXXX-XXXX-XXXX-XXXX">
                            </form>
                        </td>
                        <td>
                            <form action="">
                                <input type="date" name="expDate" id="expDate" placeholder="MM/YY">
                            </form>
                        </td>
                        <td>
                            <form action="">
                                <input type="password" name="secr" id="numbe3" maxlength="3">
                            </form>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <script src="./js/recap.js"></script>
</body> -->
<body>
<link rel="stylesheet" type="text/css" href="./css/checkout.css" />

	<script
		src="https://code.jquery.com/jquery-3.4.1.min.js"
		type="text/javascript">
	</script>
            
<div class='container'>
  <div class='window'>
    <div class='order-info'>
      <div class='order-info-content'>
        <h2>Order Summary</h2>
            <div class='line'></div>
            <?php 
                $userId = $dbh->getUserId($templateParams["name"]);
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
         <table class='order-table'>
          <tbody>
           <tr>
              <td>
                  <img  src="<?php echo "https://assets.pokemon.com/assets/cms2/img/pokedex/full/". $pokemon['id'].".png" ?>" class='full-width'></img>
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
                    $i = $i +1; 
                }
            ?>

            <?php 
                $itemOrderList = $dbh->getItemInShop($userId[0]['id']);
                $i=0;
                    foreach($itemOrderList as $itemOrder):
            ?>
         <table class='order-table'>
          <tbody>
           <tr>
              <td>
                    <img src=<?php echo "https://img.pokemondb.net/sprites/items/".$itemOrder['identifier'].".png"?> alt="">
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
            <img src='https://dl.dropboxusercontent.com/s/ubamyu6mzov5c80/visa_logo%20%281%29.png' height='80' class='credit-card-image' id='credit-card-image'></img>
            Card Number
            <input class='input-field' id="cc" type="tel" inputmode="numeric" pattern="[0-9\s]{13,19}" autocomplete="cc-number" maxlength="19" placeholder="xxxx xxxx xxxx xxxx" onclick="$()"></input>
            Card Holder
            <input class='input-field'></input>
            <table class='half-input-table'>
              <tr>
                <td> Expires
                  <input class='input-field' type="month"></input>
                </td>
                <td>CVC
                  <input class='input-field' type="password" maxlength="3"></input>
                </td>
              </tr>
            </table>
            <button class='pay-btn'>Confirm</button>
          </div>
        </div>
      </div>
</div>
<script src="./js/recap.js"></script>
<script src="./js/dataInsert.js"></script>
</body>
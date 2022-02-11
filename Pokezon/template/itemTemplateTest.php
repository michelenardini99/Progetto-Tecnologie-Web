<head>
    <link rel="stylesheet" type="text/css" href="./css/itemTest.css" />
    <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js" type="text/javascript">
	</script>

</head>
<body>
    <?php
        $item = $dbh->getInfoAboutItem($templateParams["titolo"]);
    ?>
    <div class="small-container single-item">
        <div class="row">
            <div class="col-1">
            <?php 
                if(str_starts_with($item[0]['identifier'], "tm") || str_starts_with($item[0]['identifier'], "hm") || str_starts_with($item[0]['identifier'], "tr")){ ?>
                    <img src=<?php echo "https://img.pokemondb.net/sprites/items/tm-normal.png" ?> alt="image of item" width="100px" height="100px">
                <?php } else { ?>
                    <img src= <?php echo "https://img.pokemondb.net/sprites/items/".$item[0]['identifier'].".png"?> alt="image of item" width="100px" height="100px">
                <?php }?>
            </div>
            <div class="col-2">
                <p>Home / Item</p>
                <h1 class="name"> <?php echo "".$item[0]['identifier'];?></h1>
                <h4 id="price"><?php echo "$".$item[0]['cost'].".00";?></h4>
                <h3>Sold by: PokeZone</h2>
                <input id="quantity" type="number" value="1">
                <?php 
                $result = $dbh->getActiveUser();
                    if($result){
                        $userId = $dbh->getUserId($templateParams['name']);
                        $orderId = $dbh->getCurrentOrder($userId[0]['id']);
                    }
                ?>
                <button id="add" type="button">
                    <a class="btn" onClick="addItem('<?php echo "".$item[0]['id']?>' , <?php echo $orderId[0]['idOrder']?>,1);">Add To Cart</a>
                </button>
                <h3>Item Details</h3>
                <p><strong>Effects:</strong><?php echo "".$item[0]['short_effect'];?></p>
            </div>
        </div>
    </div>
    <script>
         $(document).ready(function(){
                var name = document.getElementsByClassName("name")[0].innerText;
                                            console.log(name);
                                            $("button").click(function(){
                                                $.ajax({
                                                    type: "POST",
                                                    url: "./notification.php",
                                                    data: {pokemonName: name},
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
    <script src="./js/addItem.js" type="text/javascript"></script> 
</body>
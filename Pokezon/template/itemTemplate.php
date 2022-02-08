<!DOCTYPE html>
<html lang="it">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><?php echo $templateParams["titolo"]; ?></title>
    <link rel="stylesheet" type="text/css" href="./css/item.css" />

    <script
		src="https://code.jquery.com/jquery-3.5.1.min.js"
		type="text/javascript">
	</script>
</head>

<?php 
        $item = $dbh->getInfoAboutItem($templateParams["titolo"]);
?>

<body>
    <div class="container">
        <?php 
        ?>
        <div class="image">
                                <?php 
                                    if(str_starts_with($item[0]['identifier'], "tm") || str_starts_with($item[0]['identifier'], "hm") || str_starts_with($item[0]['identifier'], "tr")){ ?>
                                        <img src=<?php echo "https://img.pokemondb.net/sprites/items/tm-normal.png" ?> alt="">
                                <?php } else { ?>
                                    <img src= <?php echo "https://img.pokemondb.net/sprites/items/".$item[0]['identifier'].".png"?> alt="image of item">
                                <?php }?>
        </div>
        <div class="name">  
            <?php echo "".$item[0]['identifier'];?>
        </div>
        <div class="price">
                <p>
                    <?php echo "".$item[0]['cost'];?>
                </p>
        </div>
        <div class="description">
            <p>
                <?php echo "".$item[0]['short_effect'];?>
            </p>
        </div>
        <div class="buy">
            <?php 
                $result = $dbh->getActiveUser();
                if($result){
                    $userId = $dbh->getUserId($templateParams['name']);
                    $orderId = $dbh->getCurrentOrder($userId[0]['id']);
                }
            ?>
            
        </div>
        <div class="vendor">
            <p>
                PokeZone
            </p>
        </div>
        <div>
               <button type="button" class="btn">
                <a class="addItem" onClick="addItem('<?php echo "".$item[0]['id']?>' , <?php echo $orderId[0]['idOrder']?>,1);">Add to shopping-cart</button>
                </button>
               <script>
                                        $(document).ready(function(){
                                            var name = document.getElementsByClassName("name")[0].innerText;
                                            $("button").click(function(){ 
                                                $.ajax({
                                                    type: "POST",
                                                    url: "./notification.php",
                                                    data: {itemName: name},
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
    <script src="./js/addItem.js" type="text/javascript"></script> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="./js/mynotif.js"></script>

</body>
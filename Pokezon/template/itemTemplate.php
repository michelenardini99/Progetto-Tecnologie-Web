<link rel="stylesheet" type="text/css" href="./css/detail.css" />
<script
		src="https://code.jquery.com/jquery-3.4.1.min.js"
		type="text/javascript">
</script>

<?php 
    if(isset($_GET["name"])){
        $item = $dbh->getInfoAboutItem($_GET["name"]);
    }


?>

<body>
    <div class="container">
        <?php 
        ?>
        <div class="image">
            <img src= <?php echo "https://img.pokemondb.net/sprites/items/".$item[0]['identifier'].".png"?> alt="image of item">
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
                $userId = $dbh->getUserId($templateParams['name']);
                $orderId = $dbh->getCurrentOrder($userId[0]['id']);
            ?>
            <p>
                <a class="addItem" onClick="addItem('<?php echo "".$item[0]['id']?>' , <?php echo $orderId[0]['idOrder']?>,1);">Add to shopping-cart</button>
            </p>
        </div>
    </div>
    <script src="./js/addItem.js" type="text/javascript"></script> 
</body>
<link rel="stylesheet" type="text/css" href="./css/detail.css" />

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
    </div>
</body>
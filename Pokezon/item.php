<?php 
    require_once('handler/bootstrap.php');

    if(isset($dbh -> getActiveUser()[0]['username'])){
    $templateParams["name"] = ($dbh -> getActiveUser()[0]['username']);
    
}

if(isset($dbh -> getActiveUser()[0]['username'])){
    $templateParams["name"] = ($dbh -> getActiveUser()[0]['username']);
    switch ($dbh -> getUserID($templateParams['name'])[0]['role']) {
        case 'Druid':
            require 'template/druidHeaderTemplate.php';
            break;
        case 'Trader':
            require 'template/druidHeaderTemplate.php';
            break;
        default:
            require 'template/headerTemplate.php';
            break;
    }
} else {
    require 'template/headerTemplate.php'; /* not registered or logged yet */
}


?>
    <body>
        <header>
        <?php 
            $pokeItemList = $dbh->pokeItemGetter();

            foreach($pokeItemList as $pokeItem):?>
<!--             <ol>
                <li>
                    <?php echo "".$pokeItem['identifier']?>
                </li>
            </ol>
 -->          
                <img src=<?php echo "https://img.pokemondb.net/sprites/items/".$pokeItem['identifier'].".png" ?> alt="">
      <?php endforeach; ?>
       </header>
    </body>
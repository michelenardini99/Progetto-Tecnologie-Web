<!DOCTYPE html>
<html lang="it">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><?php echo $templateParams["titolo"]; ?></title>
    <link rel="stylesheet" type="text/css" href="./css/table.css" />
	<script
		src="https://code.jquery.com/jquery-3.5.1.min.js"
		type="text/javascript">
	</script>
</head>

<!-- TODO usabilty on this page -->

<body>
    <section>

<?php if($templateParams['titolo'] == "Pokemon List"){ ?> <!-- Clicked on POKEMON page -->

<form action="" method="get">
<nav class="region-nav"  id="region-nav">
<ul>
    <?php 
            if(isset($_GET["region"])){
                $name = $_GET["region"];
            }
            $regionList = $dbh->getRegionNames();
            foreach($regionList as $region): ?> 
            <li> 
                <a class="region" id="region" href="./tablePokemon.php?region=<?php echo "".$region['identifier']?>">
                <?php echo "".$region['identifier']?>
            </a>
            </li>
            <?php endforeach;?>
</ul> 
</nav>
</form>
    <div class="slideshow-container" style="margin-top: 200px; margin-right: 43%">
  <!-- Full-width images with number and caption text -->
  <div class="mySlides fade">
    <div class="numbertext"></div>
    <img src="../resources/1.png" >
  </div>

  <div class="mySlides fade">
    <img src="../resources/2.png" >
  </div>

  <div class="mySlides fade">
    <img src="../resources/3.png" >
  </div>

  <div class="mySlides fade">
    <img src="../resources/4.png">
  </div>
                <div>
                    <h2>
                        GOTTA BUY 'EM ALL 
                    </h2>
                </div>
        </div>
        <br>
    </div>
    </section>
  <script src="./js/fasterSlideShow.js" type="text/javascript"></script>
    <section>
        </div>
       <ul class="table" >
            <?php
                    if(isset($_GET["region"])){
                        $pokeList = $dbh->getPokemonFromRegionIdentifier($_GET["region"]);
                    } else { 
                        $pokeList = $dbh->pokeGetter();
                    }
                    $cnt = 0;
                    foreach($pokeList as $pokemon):
            ?>
                <li class="pokemon">
                     <!-- qui l href funziona ma rende il nome orribile il nome -->
                     <figure>
                         <a href=<?php echo "./pokemonDetail.php?id=".$pokemon["id"]?>>
                         <img src=<?php echo "https://img.pokemondb.net/sprites/sword-shield/icon/".$pokemon['identifier'].".png" ?> alt="">
                     </figure>
                     <div>
                         <p style="font-family: sans-serif; text-align: center; color: grey"> 
                             n: <?php echo $pokemon['id']?>
                         </p>
                         <h5 style="text-align: center;">
                         <?php echo "".$pokemon['identifier']?>
                         </h5>
                     </div>
                    </a>
                 </li>
              <?php   
            endforeach; ?>
        </ul>
        </section>

    <?php } elseif ($templateParams['titolo'] == "Item List"){  ?> <!-- Clicked on ITEM page -->

<form action="" method="get">
<nav class="item-nav">
<ul>
    <?php 
            if(isset($_GET["category"])){
                $name = $_GET["category"];
            }
            $categories = $dbh->pokeItemCategoriesGet();
            foreach($categories as $category): ?> 
            <li> 
                <a href="./tablePokemon.php?region=<?php echo "".$region['identifier']?>">
                <?php echo "".$category['identifier']?>
            </a>
            </li>
            <?php endforeach;?>
</ul> 
</nav>
</form>
 

    <section>
        <ul class="table">
            <?php 
                    $itemList = $dbh->pokeItemGetter();
                    $cnt = 0;
                    foreach($itemList as $pokeItem):
            ?>
                        <li class="item">
                            <figure>
                                <img src=<?php echo "https://img.pokemondb.net/sprites/items/".$pokeItem['identifier'].".png" ?> alt="">
                            </figure>
                            <div>
                                <h5 style="text-align: center;">
                                <?php echo "".$pokeItem['identifier']?>
                                </h5>
                            </div>
                        </li>
              <?php   
            endforeach; ?>
        </ul>
        </section>
<?php }?>
<script src="./js/regionBar.js"></script>
</body>
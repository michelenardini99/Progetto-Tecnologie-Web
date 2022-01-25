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
<body>
    <section>

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

 <?php if($templateParams['titolo'] == "Pokemon List"){ ?> <!-- Clicked on POKEMON page -->
    <section>
                <!-- shit not working --> 
                <script> 
                    $(document).ready(function(){
                    $("select.selPoke").change(function(){
                    var selectedCountry = $(this).children("option:selected").val();
                    alert("You have selected the country - " + selectedCountry);
                    });
                });
                </script>

        <div class="selPoke" style="width:200px;">  
                <form action="" method="get">
            <p>Choose your region</p>
          <select name="regions" id="regions">
              <?php 
                    $name = $_GET["regions"];
                    $regionList = $dbh->getRegionNames();
                    echo "".$name;
            foreach($regionList as $region): ?> 
                <option value=<?php echo "".$region['identifier']?> >
                    <?php echo "".$region['identifier']?> 
                </option>
              <?php endforeach;?>
          </select>
          <input type="submit" value="Submit">
        </form>
        </div>

       <ul class="table" >
            <?php
                    if(isset($_GET["regions"])){
                        $pokeList = $dbh->getPokemonFromRegionIdentifier($_GET["regions"]);
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
</body>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><?php echo $templateParams["titolo"]."of ".ucfirst($templateParams['name']); ?></title>
    <link rel="stylesheet" type="text/css" href="./css/user.css" />
</head>

<body>
    <?php 
        $user = $dbh->getUserID($templateParams['name']);
    ?>
    <div class="container">
        <div class="user-img">
            <?php 
                if(isset($_GET['filename'])){
                    $dbh->updateAvatar($user[0]['id'],$_GET['filename']);
                    header("Location: ./user.php");
                }
            ?>
            <img src= <?php echo "".$user[0]['avatar']?> alt="avatar">
            <form action="./user.php" onSubmit="if(document.getElementById('myFile').value == '') return false;">
            <input type="file" id="myFile" name="filename">
                
            <input type="submit">
            </form>
        </div>
        <div class="orders">
            <?php $orderList = ($dbh->getOrderFromId($user[0]['id']));?>
            <table>
                <thead>
                    <th>
                        IdOrder
                    </th>
                    <th> 
                        PokemonId
                    </th>
                    <th> 
                        Name
                    </th>
                    <th>
                        Quantity
                    </th>
                    <tbody>
                        <?php 
                            foreach($orderList as $order):
                        ?>
                            <tr>
                               <td>
                                    <?php echo "".$order['idOrder']?>
                               </td>
                                <td>
                                    <?php echo "".$order['pokemonId']?>
                               </td>
                                <td>
                                    <?php echo "".$order['identifier']?>
                               </td>
                                <td>
                                    <?php echo "".$order['quantity']?>
                               </td>
                            </tr>
                        <?php endforeach; ?>
                   </tbody>
                </thead>
            </table>
        </div>
        <div class="orderTable">
            <?php
            $notificationList = ($dbh->getNotifAbout($user[0]['username']));
            ?>
            <table>
                <thead>
                    <th>
                        Message
                    </th>
                    <th> 
                        Time
                    </th>
                    <tbody>
                        <?php 
                            foreach($notificationList as $notification):
                        ?>
                            <tr>
                               <td>
                                    <?php echo "".$notification['notif_msg']?>
                               </td>
                                <td>
                                    <?php echo "".$notification['notif_time']?>
                               </td>
                            </tr>
                        <?php endforeach; ?>
                   </tbody>
                </thead>
            </table>
        </div>
    </div>
</body>
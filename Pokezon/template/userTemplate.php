<link rel="stylesheet" type="text/css" href="./css/user.css" />

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
        <div class="data">
            <?php 
                var_dump($user);
            
            ?>
            <p>
                <?php echo "".$templateParams['name']?>
            </p>
        </div>
        <div class="orderTable">
            
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
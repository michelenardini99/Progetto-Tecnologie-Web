<head>
    <title><?php echo $templateParams["titolo"]." of ".ucfirst($templateParams['name']); ?></title>
    <script
		src="https://code.jquery.com/jquery-3.5.1.min.js"
		type="text/javascript">
	</script>
    <link rel="stylesheet" type="text/css" href="./css/user.css" />
</head>
<body>
    <?php 
        $user = $dbh->getUserID($templateParams['name']);
    ?>
    <div class="container">
        <div class="info">
        <h2>
            <?php echo "".$templateParams['name']?>
        </h2>
        <div class="user-img">
            <?php 
                if(isset($_GET['filename'])){
                    $dbh->updateAvatar($user[0]['id'],$_GET['filename']);
                    header("Location: ./user.php");
                }
            ?>
            <img src= <?php echo "".$user[0]['avatar']?> alt="avatar">
            <p>
                You can change your current avatar, choose another trainer
            </p>
            <br>
            <form action="./user.php" onSubmit="if(document.getElementById('myFile').value == '') return false;">
            <input type="file" value="Choose a trainer" id="myFile" name="filename" aria-label="press to choose a file" >
            <input type="submit" value="Customize"  placeholder="Customize" aria-label="button to confirm new avatar image">
            </form>
        </div>
        <h2>
            Email
        </h2>
        <h3>
            <?php echo "".$user[0]['email']?>
        </h3>
        </div>
        <div class="orders">
            <?php $orderList = ($dbh->getOrderFromId($user[0]['id']));?>
            <table>
                <thead>
                    <th scope="col">
                        IdOrder
                    </th>
                    <th scope="col"> 
                        Name
                    </th>
                    <th scope="col"> 
                        Status
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
                                    <?php echo "".$order['identifier']?>
                               </td>
                               <td>
                                    <?php echo "".$order['status']?>
                               </td>
                            </tr>
                        <?php endforeach; ?>
                        <?php 
                            $itemOrderList = $dbh->getItemOrderFromId($user[0]['id']);
                            foreach($itemOrderList as $order):
                        ?>
                            <tr>
                               <td>
                                    <?php echo "".$order['orderId']?>
                               </td>
                                <td>
                                    <?php echo "".$order['identifier']?>
                               </td>
                               <td>
                                    <?php echo "".$order['status']?>
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
                    <th scope="col">
                        Message
                    </th>
                    <th scope="col"> 
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
            <button type="button" style="height: 10%; border-radius: 20px;" onclick=" window.location.reload();">
                    Clear Notification
            </button>
                <script>
                $(document).ready(function(){
                                            $("button").click(function(){ 
                                                $.ajax({
                                                    type: "POST",
                                                    url: "./notification.php",
                                                    data: {clear: ""},
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
</body>
</html>
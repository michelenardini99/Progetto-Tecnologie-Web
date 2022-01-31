<link rel="stylesheet" type="text/css" href="./css/user.css" />

<body>
    <div class="container">
        <div class="user-img">
            <img src=<?php echo "../resources/Trainers/trainer0".strval(random_int(1, 76)).".png"?> alt="avatar">
        </div>
        <div class="data">
            <?php $user = $dbh->getUserID($templateParams['name']);
                var_dump($user);
            
            ?>
            <p>
                <?php echo "".$templateParams['name']?>
            </p>
        </div>
        <div class="orderTable">
            <table>
                <thead>
                    <th>
                        Order number
                    </th>
                    <th> 
                        total
                    </th>
                    <tbody>
                        <tr>
                            <td>
                                19827958137491872374918374
                            </td>
                            <td>
                                440$
                            </td>
                        </tr>
                        <tr>
                            <td>
                                9804275923874928374092834
                            </td>
                            <td>
                                69$
                            </td>
                        </tr>
                   </tbody>
                </thead>
            </table>
        </div>
        <div class="notify">
            Notification
        </div>
    </div>
</body>
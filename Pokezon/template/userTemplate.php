<link rel="stylesheet" type="text/css" href="./css/user.css" />

<body>
    <?php 
        $user = $dbh->getUserID($templateParams['name']);
    ?>
    <div class="container">
        <div class="user-img">
            <img src= <?php echo "".$user[0]['avatar']?> alt="avatar">
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
            <?php
            var_dump($dbh->getNotifAbout($user[0]['username']));
            ?>

        </div>
    </div>
</body>
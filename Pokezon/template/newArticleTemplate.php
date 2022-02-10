<html lang="it">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><?php echo $templateParams["titolo"]; ?></title>
    <link rel="stylesheet" type="text/css" href="./css/newArticle.css" />

	<script
		src="https://code.jquery.com/jquery-3.4.1.min.js"
		type="text/javascript">
	</script>
</head>
<body>
    <div class="container">
    <div class="title">Add new article</div>
        <form action="./addNewArticleInDb.php" method="get"> 
            <div class="pokemon-detail">
                <div class="input-box">
                <span class="details">Pokemon name</span>
                    <input id=elInput type="text" placeholder="Enter name of pokemon" name="pokemon" required >
                </div>
                <div class="input-box">
                    <span class="details">Price</span>
                    <input type="text" placeholder="Enter price for pokemon" name="price" required>
                </div>
                <div class="input-box">
                    <span class="details">Quantity</span>
                    <input type="number" max="1194" name="quantity" required>
                </div>
                <div class="input-box">
                    <span class="details">Description</span>
                    <textarea rows="4" cols="50" name="description">Description here...</textarea>
                </div>
            </div>
            <div class="button">
                <input type="submit" value="Add article">
            </div>
        </form>
    </div>
</body>
</html>
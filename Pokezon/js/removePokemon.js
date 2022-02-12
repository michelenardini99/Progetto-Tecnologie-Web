function removePokemon(codV,pokeId, quantity, price){
    var codV = codV;
    var quantity = quantity;
    var pokeId = pokeId;
    var price = price;
    var descr = descr;
    console.log(codV);
    console.log(quantity);
    console.log(pokeId);
    console.log(price);
    $.ajax({
        url: './removePokemonFromMerchant.php',
        type: 'POST',
        data: {codV: codV, quantity: quantity, pokeId: pokeId, price: price},
        success: function(data) {
            console.log(data); // Inspect this in your console
        }
    });
}
function addPokemon(pokeId, orderId, m){
    console.log("ciao");
    var order = orderId;
    var merchant = m;
    var pokeid = pokeId;
    console.log(order);
    console.log(merchant);
    console.log(pokeid);

    $.ajax({
        url: './addPokemon.php',
        type: 'POST',
        data: {order: order, merchant: merchant, pokeid: pokeid},
        success: function(data) {
            console.log(data); // Inspect this in your console
        }
    });
}
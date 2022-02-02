function addPokemon(merchant, orderId, info){
    var order = orderId;
    var pokemon = pokemonId;
    var info = info;
    console.log(order);
    console.log(pokemon);
    console.log(info);

    $.ajax({
        url: './addPokemon.php',
        type: 'POST',
        data: {order: order, pokemon: pokemon},
        success: function(data) {
            console.log(data); // Inspect this in your console
        }
    });
}
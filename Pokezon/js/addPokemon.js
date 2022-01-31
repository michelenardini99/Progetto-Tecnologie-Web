function addPokemon(pokemonId, orderId){
    var order = orderId;
    var pokemon = pokemonId;
    console.log(order);
    console.log(pokemon);

    $.ajax({
        url: './addPokemon.php',
        type: 'POST',
        data: {order: order, pokemon: pokemon},
        success: function(data) {
            console.log(data); // Inspect this in your console
        }
    });
}
$(document).ready(function() {
    calc();
});

$(":input").bind('keyup mouseup', function () {
    calc();
});

function calc(){
    var i=0;
    var total=0;
    while($(".quantity".concat(i)).val()){
        $(".totalPokemon".concat(i)).text("$".concat($(".quantity".concat(i)).val()*parseFloat(($(".valuePokemon".concat(i)).text()).substring(1))).concat(".00"));
        total+=parseFloat($(".totalPokemon".concat(i)).text().substring(1));
        i += 1;
    }
    $(".total").text("$".concat(total).concat(".00"));
}

function removePokemon(pokemonId, orderId){

    var order = orderId;
    var pokemon = pokemonId;
    console.log(order);
    console.log(pokemon);

    $.ajax({
        url: './removePokemon.php',
        type: 'POST',
        data: {order: order, pokemon: pokemon},
        success: function(data) {
            console.log(data); // Inspect this in your console
        }
    });
}

function removeItem(itemId, orderId){

    var order = orderId;
    var item = itemId;

    $.ajax({
        url: './removeItem.php',
        type: 'POST',
        data: {order: order, item: item},
        success: function(data) {
            console.log(data); // Inspect this in your console
        }
    });
}


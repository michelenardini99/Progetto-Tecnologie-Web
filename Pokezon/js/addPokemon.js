function addPokemon(pokeId, orderId){
    var order = orderId;
    var quantity = document.getElementById("quantity").value;
    var pokeid = pokeId;
    var merchant = document.getElementById("merchant-select").value;
    console.log(order);
    console.log(merchant);
    console.log(pokeid);
    console.log(quantity);
    if(merchant != "null"){
        $.ajax({
            url: './addPokemon.php',
            type: 'POST',
            data: {order: order, merchant: merchant, pokeid: pokeid, quantity: quantity},
            success: function(data) {
                console.log(data); // Inspect this in your console
            }
        });
    }else{
        alert("Select a merchant");
    }
}
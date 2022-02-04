function removeQuantity(pokemonOrder){
    var order = pokemonOrder;
    order.forEach(myFunction);
    orderId = order[0].orderId
    $.ajax({
        url: './disableOrder.php',
        type: 'POST',
        data: {orderId: orderId},
    });
    window.location.href='https://localhost/Progetto-Tecnologie-Web/Pokezon/index.php';
}

function myFunction(item){
    id = item.id;
    codV = item.codV;
    quantity = item.quantity;
    orderId = item.orderId;
    $.ajax({
        url: './removeQuantity.php',
        type: 'POST',
        data: {id: id, codV: codV, quantity: quantity, orderId: orderId},
    });
}
function addItem(item, orderId, merchId){
    console.log("HELLO");
    var order = orderId;
    var itemId = item;
    var merch = merchId;


    $.ajax({
        url: './addItem.php',
        type: 'POST',
        data: {order: order, itemId: itemId, merch: merch},
        success: function(data) {
            console.log(data); // Inspect this in your console
        }
    });
}
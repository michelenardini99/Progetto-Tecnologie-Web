$(document).ready(function() {
    calc();
});

function calc(){
    var priceTot = document.getElementsByClassName("price");
    var delivery = document.getElementById("thin dense");
    console.log(delivery.textContent.substring(1));
    var total=0;
    for (var i = 0, len = priceTot.length; i < len; i++) {
        total += parseFloat(priceTot[i].textContent.substring(2));
    }
    document.getElementById("totalPrice").innerHTML = "$ "+(parseFloat(total)-parseFloat(delivery.textContent.substring(1)));
}
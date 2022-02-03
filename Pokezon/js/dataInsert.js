$(document).ready(function() {
    calc();
});

function calc(){
    var priceTot = document.getElementsByClassName("price")
    var total=0;
    for (var i = 0, len = priceTot.length; i < len; i++) {
        total += parseFloat(priceTot[i].textContent.substring(2));
    }
    document.getElementById("totalPrice").innerHTML = "$ "+total+".00";
}
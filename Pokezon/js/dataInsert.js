$(document).ready(function() {
    var cc = document.querySelector('#cc');
    console.log(cc);
    cc.addEventListener("input", onChangeTxtCardNumber);
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



function onChangeTxtCardNumber(e) {		
    var cardNumber = cc.value;
 
	  // Do not allow users to write invalid characters
    var formattedCardNumber = cardNumber.replace(/[^\d]/g, "");
    formattedCardNumber = formattedCardNumber.substring(0, 16);
  
    // Split the card number is groups of 4
    var cardNumberSections = formattedCardNumber.match(/\d{1,4}/g);
    if (cardNumberSections !== null) {
        formattedCardNumber = cardNumberSections.join(' ');	
    }
	
    // If the formmattedCardNumber is different to what is shown, change the value
    if (cardNumber !== formattedCardNumber) {
        cc.value = formattedCardNumber;
    }
}
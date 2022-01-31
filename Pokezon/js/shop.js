$( document ).ready(function() {
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

function deleteFunc(){
    $.ajax({url:"handler/deletePokemon.php", success: function(result){
        alert(result);
    }})
}


$( document ).ready(function() {
    var rgb = document.getElementsByClassName("container")[0].style.backgroundColor;
    rgbArr = rgb.substring(4, rgb.length-1).replace(/ /g, '').split(',');
    if ((rgbArr[0]*0.299 + rgbArr[1]*0.587 + rgbArr[2]*0.114) > 130){
        var textColor = '#000000';
    }else{
        var textColor = '#ffffff';
    }
    document.getElementsByClassName("container")[0].style.color = textColor;
    var y = document.getElementsByTagName("td");
    var i;
    for (i = 0; i < y.length; i++) {
        y[i].style.color = textColor;
    }
    var y = document.getElementsByClassName("addPokemon")[0];
    y.style.color = textColor;

});

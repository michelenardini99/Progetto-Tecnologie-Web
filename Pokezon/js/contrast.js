$( document ).ready(function() {
    
    var textColor = getContrastYIQ(document.getElementsByClassName("container")[0].style.backgroundColor);
    document.getElementsByClassName("container")[0].style.color = textColor;
    var y = document.getElementsByTagName("td");
    var i;
    for (i = 0; i < y.length; i++) {
        y[i].style.color = textColor;
    }
    var y = document.getElementsByClassName("addPokemon")[0];
    y.style.color = textColor;

});

function getContrastYIQ(hexcolor){
    hexcolor = hexcolor.replace("#", "");
    var r = parseInt(hexcolor.substr(0,2),16);
    var g = parseInt(hexcolor.substr(2,2),16);
    var b = parseInt(hexcolor.substr(4,2),16);
    var yiq = ((r*299)+(g*587)+(b*114))/1000;
    return (yiq >= 128) ? 'black' : 'white';
}
var map = { normal: "#f2f2f2", fighting: "#d56722",
    flying: "#f2f2f2", poison: "#b97fc9",
    ground: "#f6de3e", rock: "#a38c22",
    bug: "#729f40", ghost: "#7a61a2",
    steel: "#9eb8b9", fire: "#fd7d24",
    water: "#4593c4", grass: "#9bcc4f",
    electric: "#efd435", psychic: "#f466ba",
    ice: "#52c4e8", dragon: "#f16f56",
    dark: "#707070", fairy: "#fdb9ea",
 }

$( document ).ready(function() {
    
    var colors=["img1","img2","img3"];
    for (let i = 1; i <= colors.length; i++) { 
        var img = "img".concat(i);
        var text = "#text".concat(i);
        var rgb = getAverageRGB(document.getElementById(img.replace(/ /g,'')));
        var color="rgb(";
        var res=color.concat(rgb.r,",",rgb.g,",",rgb.b,")");
        $(text.replace(/ /g,'')).css({"background-color": res});
    }

});

function getAverageRGB(imgEl) {

    var blockSize = 5, // only visit every 5 pixels
        defaultRGB = {r:0,g:0,b:0}, // for non-supporting envs
        canvas = document.createElement('canvas'),
        context = canvas.getContext && canvas.getContext('2d'),
        data, width, height,
        i = -4,
        length,
        rgb = {r:0,g:0,b:0},
        count = 0;

    if (!context) {
        return defaultRGB;
    }

    height = canvas.height = imgEl.naturalHeight || imgEl.offsetHeight || imgEl.height;
    width = canvas.width = imgEl.naturalWidth || imgEl.offsetWidth || imgEl.width;

    context.drawImage(imgEl, 0, 0);

    try {
        data = context.getImageData(0, 0, width, height);
    } catch(e) {
        /* security error, img on diff domain */
        return defaultRGB;
    }

    length = data.data.length;

    while ( (i += blockSize * 4) < length ) {
        ++count;
        rgb.r += data.data[i];
        rgb.g += data.data[i+1];
        rgb.b += data.data[i+2];
    }

    // ~~ used to floor values
    rgb.r = ~~(rgb.r/count);
    rgb.g = ~~(rgb.g/count);
    rgb.b = ~~(rgb.b/count);

    return rgb;

}
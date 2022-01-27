$( document ).ready(function() {
    
    var colors=["img1","img2","img3"];
    console.log("lenght: ",colors.length)
    for (let i = 1; i <= colors.length; i++) { 
        var img = "img".concat(i);
        var text = "#text".concat(i);
        var rgb = getAverageRGB(document.getElementById(img.replace(/ /g,'')));
        console.log(rgb);
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
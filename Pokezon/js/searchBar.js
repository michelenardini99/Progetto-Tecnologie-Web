$( document ).ready(function() {
   //var elements = $(this).getElementById("table");

identifiers  = [];
var elements = document.getElementsByClassName("table")[0].children;
    for(let child of elements){
        identifiers.push(child.getAttribute('id'))
    }
    console.log(identifiers);



    
});

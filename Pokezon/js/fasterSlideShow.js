var slideIndex = 0;
showSlides();

function showSlides() { // todo 
  try{
  var i;
  var slides = document.getElementsByClassName("mySlides");
  
  console.log(slides.length);
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
    console.log(slides.length);
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}
  slides[slideIndex-1].style.display = "block";
  setTimeout(showSlides, 500); // Change image every 2 seconds
  } catch (error){
      console.error();
  }
}
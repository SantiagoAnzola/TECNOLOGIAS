// Slider 1 productos

$(document).ready(function() {
    $('#autoWidth').lightSlider({
        autoWidth:true,
        loop:true,
        onSliderLoad: function() {
            $('#autoWidth').removeClass('cS-hidden');
        } 
    });  
  });



//   $('input[type=checkbox]').removeAttr('checked');
// LIKE BUTTOM
var cont=0;
    function like(x) {

    x.classList.toggle("like-yes");
    if(cont%2==0){
      cont+=1;
      console.log("Me gusta")
      
    }else{
      cont-=1;
      console.log("No Me gusta")
    }
    }
var cont1=0;
function dislike(x) {

    x.classList.toggle("like-no");
    
    if(cont1==1){
        cont1-=1;
      x.classList.toggle("like-yes");
      console.log("Me gusta")
    }else{
        cont1+=1;
        x.classList.remove("like-yes")
      console.log("No me gusta")
    }
    
    
  }
// SLIDER 2 ME GUSTA

$(document).ready(function() {
    $('#autoWidth1').lightSlider({
        autoWidth:true,
        loop:true,
        onSliderLoad: function() {
            $('#autoWidth1').removeClass('cS-hidden1');
        } 
    });  
  });

// var parent = document.getElementById("multiSlider");
// var nodesSameClass = parent.getElementsByClassName("item-a");
// console.log(nodesSameClass.length);
// con una clase específica
// var tags_li2 = new Array();
// function dli2(clase) {
// var tags_li2=document.getElementsByTagName('li');
// var n = 0;
// var i;
// for (i=0; i<tags_li2.length; i++) {
// if (tags_li2[i].className==multiSlider) {
// n++;
// }
// }
// alert('La cantidad de <li class="' + clase + '"> en el documento es ' + n);
// }
var testElements = document.getElementsByClassName('multiSlider');
var testDivs = Array.prototype.filter.call(testElements, function(testElement){

    return testElement.nodeName === 'li';
   
});
console.log('El numero de items del slider #2 (MeGusta) es:  '+$('#slidermulti .item').length);

if($(('#slidermulti .item').length)<4){
    getElementByClassName("ISAction").style.display="none !important";
    getElementByClassName("ISNext").style.display="none !important";
    getElementByClassName("ISPrev ").style.display="none !important";
    

}

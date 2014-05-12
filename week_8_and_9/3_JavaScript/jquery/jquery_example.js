$(document).ready(function(){

//RELEASE 0:
  //Link this script and the jQuery library to the jquery_example.html file and
  //analyze what this code does.

  $('body').css({'background-color': 'blue'})

//RELEASE 1:
  //Add code here to select elements of the DOM
  var bodyElement = $('body')

//RELEASE 2:
  // Add code here to modify the css and html of DOM elements
  $('h1').css({'color': 'white', 'border': '10px solid red', 'visibility': 'none'})
  $('#mascot').html('Cicada')
//RELEASE 3: Event Listener
  // Add the code for the event listener here
  $('img').on('mouseover', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://i0.wp.com/www.baltimorefishbowl.com/wp-content/uploads/2013/03/cicada.jpg?resize=500%2C348')
  })

  $('img').on('mouseleave', function(){
    $(this).attr('src', 'http://learnallthewebtech.com/images/dev-boot-camp-logo.png')
  })

//RELEASE 4 : Experiment on your own
 $("#mascot").click(function() {
  $("img").animate({
    opacity: 0.1,
    right: "+=80",
    height: "toggle"
  }, 3000, function() {
  });
});

})  // end of the document.ready function: do not remove or write DOM
  //manipulation below this.

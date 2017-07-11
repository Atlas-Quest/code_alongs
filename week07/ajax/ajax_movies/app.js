


var btn = document.querySelector('button');

btn.addEventListener('click', function(event){
  event.preventDefault();
  console.log('search movie with ajax');

  var movieName = document.querySelector('input').value;

  var inputBox = document.querySelector('input').value;

  var settings = {
    url: 'http://omdbapi.com/?t=' + inputBox + '&apikey=2f6435d9'
  }

  jQuery.ajax(settings).done(function(response) {
    console.log(response.Title);
  })
  console.log('after ajax function call');
});

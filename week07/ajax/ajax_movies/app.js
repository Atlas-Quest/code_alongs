// var btn = document.querySelector('button');

var $btn = $('button');

$btn.on('click', function(event) {

  event.preventDefault();

  var movieName = document.querySelector('input').value;

  var inputBox = document.querySelector('input').value;

  var settings = {
    url: 'http://omdbapi.com',
    data: {
      t: movieName,
      apikey: '2f6435d9'
  }
}
//
// btn.addEventListener('click', function(event){
//   event.preventDefault();
//   console.log('search movie with ajax');
//
//   var movieName = document.querySelector('input').value;
//
//   var inputBox = document.querySelector('input').value;
//
//   var settings = {
//     url: 'http://omdbapi.com',
//     data: {
//       t: movieName,
//       apikey: '2f6435d9'
//     }
//   }

  jQuery.ajax(settings).done(function(response) {
    var newParagraph = document.createElement('p');
    newParagraph.textContent = response.Year
    document.querySelector('.response').append(newParagraph);
  })
  console.log('after ajax function call');
});

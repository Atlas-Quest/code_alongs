
var updateCount = function(event) {

  var uiCard = event.target.closest('.ui-card')
  var countSpan = uiCard.querySelector('.count');
  countSpan.textContent = parseInt(countSpan.textContent) + 1;
  var stars = document.querySelector('.star')

}

document.querySelector('.parent').addEventListener('click', function(event) {
  if (event.target.className === 'star') {
    updateCount(event);
  }

});

// var findParent = document.querySelector('.parent');

function getFavColorAndLeastFavColor() {
  return ['pink', 'red'];
}


// this type of function is called pattern matching/deconstruction
var [favColor, leastFavColor] = getFavColorAndLeastFavColor();

console.log(leastFavColor)

function getPerson() {
  return {
    codeName: 'bitsPlease',
    classNumber: 12
  }
}

var {codeName: code} = getPerson();

console.log(code)

//parallel assignment is what this deconstruction is called in ruby.

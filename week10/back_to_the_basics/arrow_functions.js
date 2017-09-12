const languages = ['ruby', 'php', 'javascript']

// new array of languages upcased

var sayHi = function(firstname, lastname) {
  console.log(firstname + lastname);
}

// this is an arrow function which is part of es6(es2015)
var sayHi = (firstname, lastname) => console.log(firstname + lastname);

var newLanguages = []

// this is an arrow function which is part of es6(es2015)
var newLanguages = languages.map(lang => lang.toUpperCase());

console.log(newLanguages)

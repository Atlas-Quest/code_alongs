// write  function that take 3 parameters
// greeting, first name, last name
// set default values to 'hello', your first name and last name
// if no inout is provided

function greeting(greeting = 'hello', firstname = 'atlas', lastname = 'quest') {
  return greeting + ' ' + firstname + ' ' + lastname
}

function greeting(options = {firstname: 'd'}) {
  return options.greeting + ' ' + options.firstname + ' ' + options.lastname
}

greeting({firstname: 'bits'})

// var greeting = greeting(); // 'hi bits please'
// console.log(greeting)

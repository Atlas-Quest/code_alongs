var fs = require('fs'); // fs is an object

var buffer = fs.readFileSync('ex1.js')

console.log(buffer.toString());

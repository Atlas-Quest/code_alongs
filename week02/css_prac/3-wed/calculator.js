// // document.querySelectorAll('input')[0].value
// //
//
// console.log('one');
// console.log('two');
//
// var btn = document.querySelector('button');
// btn.addEventListener('click', function(){
//   console.log('win');
//   var num1button = document.querySelector('#num1-input');
//   console.log(num1button.value);
// })

//

var btn = document.querySelector('button'); btn.addEventListener('click', function(){
  console.log('win');
  var num1button = document.querySelector('#num1-input');
  console.log(num1button.value);
  var num2button =
  document.querySelector('#num2-input');
  console.log(num2button.value);
})
var num1Input = document.querySelector('#num1-input');
var num2Input = document.querySelector('#num2-input');
var span = document.querySelector('span');

btn.addEventListener('click', function() {

   var num1 = Number(num1Input.value);
   var num2 = Number(num2Input.value);
   var result = num1 + num2;
   span.textContent = result;

 })

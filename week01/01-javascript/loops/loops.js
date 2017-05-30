console.log('ready loopy');

// var num = 1;
//
// for (num = 1; num <=100; num++){
//
//   if (num % 3 === 0){
//   console.log('Cake');
//   }
//   if (num % 5 === 0){
//   console.log('Pudding');
//   }
//   if (num % 3 && 5 === 0){
//   console.log('CakePudding');
//   }
//   else{
//   console.log(num);
//   }
// }

var secretNumber = 42;
var guess = Number(prompt('Enter a number'));

while (secretNumber !== guess) {
  console.log('within while loop');
  guess = Number(prompt('guess again'));
}

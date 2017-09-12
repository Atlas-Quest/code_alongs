var list = [2,4,5,1,8,5,2,3];

function findFirstRepeatedItem(arr) {
  for (let i = 0; i < arr.length; i++) {
    for (let j = i + 1; j < arr.length; j++) {
      if (arr[i] === arr[j]) {
        return arr[i];
      }
    }
  }
  console.log('no repetition found');
}

console.log(findFirstRepeatedItem(list));

var list = [2,4,5,1,8,5,3];

function findFirstRepeatedItem2(arr) {
  var obj = {}

  for (var i = 0; i < arr.length; i++) {
    if (obj[arr[i]] === undefined) {
      obj[arr[i]] = true;
    } else {
      return arr[i];
    }
  }
  console.log('no repetition found')
}

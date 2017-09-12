const hackers = [{
  name: 'kit',
  dangerous: false,
  bankBalance: 2000
}, {
  name: 'javed',
  dangerous: false,
  bankBalance: 3200
}, {
  name: 'sam',
  dangerous: true,
  bankBalance: 7900
}, {
  name: 'adrian',
  dangerous: true,
  bankBalance: 9500
}];

// write some code to get the total amount dangerous hackers make including GST

var sum = 0

var dangerHackers = function() {
  for (var i = 0; i < hackers.length; i++) {
    if (hackers[i].dangerous === true) {
      sum += hackers[i].bankBalance + (0.1 * hackers[i].bankBalance)
    }
  }
  return sum
}

console.log(dangerHackers());




var total = hackers
  .filter(function(hacker){
    return hacker.dangerous
  }) // return dangerous hackers
  .map(function(hacker) {
    return hacker.bankBalance * 1.1
  }) // balance with gst as an arr
  .reduce(function(total, value) {
    return total + value
  });



  var total = hackers
    .filter(hacker => hacker.dangerous === true) // return dangerous hackers
    .map(hacker => hacker.bankBalance * 1.1) // balance with gst as an arr
    .reduce((total, value) => {
      return total + value
    });

function dangerHacker(hacker) {
  return hacker.dangerous === true
}

function balanceWithGST(hacker) {
  return hacker.bankBalance * 1.1;
}

function sumOfHackers(total, val) {
  return total + val
}

var total = hackers
  .filter(dangerHacker)
  .map(balanceWithGST)
  .reduce(sumOfHackers)

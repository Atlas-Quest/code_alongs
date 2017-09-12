// make objects
// point objects
// { x: 3, y: 4 }

function createPoint(x, y) {
  return { x: x, y: y }
}

createPoint(3, 4)
createPoint(2, 2)


//constructor functions
// use with new keyword
//caps to denote its a constructor function
function Point(x, y) {
  this.x = x;
  this.y = y;
}

var newPoint = new Point();
//{x: 3, y: 4}


class Point {

  constructor(x, y) {
    this.x = x;
    this.y = y;
  }
}

var newSecondPoint = new Point(2, 3);

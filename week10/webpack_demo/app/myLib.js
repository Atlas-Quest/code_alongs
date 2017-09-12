var stuff = 'noone else can see except for this file'
var url = 'http://www.github.com/epoch'
var _ = require('lodash');

module.exports = {
  doSomething: function() {
    console.log(_.sample([1,2,3,4]));
    console.log('do something else');
  }
}

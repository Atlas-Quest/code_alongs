// How you work out where 'this' is referring to is how it is being called


// rule 1. default binding

  function doSomething() {
    console.log(this);
  }

  doSomething() //global

//rule 2. implicit binding

  var cohort = {
    name: 'bitsPlease',
    size: function() {
      console.log(this)
    }
  }


  cohort.size() // the cohort object ----- just like ruby

  var count = cohort.size
  count() // global

// rule 3. explicit rule

  var cohort2 = {
    name: 'ux',
    size: function() {
      console.log(this)
    }
  }

  count.call(cohort2)


// rule 4. hard binding rule

  count.bind(cohort2) // same as:

  var newCount = count.bind(cohort2)
  newCount() // cohort2

// rule 5. constructor function

  function Person() {
    this.firstname = 'bits'
  }

  var p = new Person()
  var q = new Person()

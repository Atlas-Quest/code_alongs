require 'pry'
# in python dictionary -
# similar object literal in js
# hash
# not objects so you can't use object notation

# inspired by JSON - Javascript Object Notation
song = {
  title: 'call me maybe',
  artist: 'jackson'
}

# old syntax
# song = {
#   :title => 'call me maybe',
#   :artist => 'jackson'
# }

# you can use a variable

wdi_class = {
  'name' => 'bitsPlease',
  :students => ['a','b','c'],
  :fav_color => {
    name: 'mistyrose'
  }
}

#  like an array, so WHY??
list = {
  0 => 'thing'
}
# arrays are ordered
list = ['thing']

binding.pry

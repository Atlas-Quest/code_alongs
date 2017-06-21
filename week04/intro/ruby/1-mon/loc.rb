require 'pry'

binding 'pry'

line count = File.read(app.js).split("\n").length + 1

puts "#{line_count} lines"

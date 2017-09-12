require 'pry'

def leap_year?(year)
  year = year.to_i
  year % 4 == 0 && year % 100 != 0 || year % 400 == 0
end

if leap_year?(2000) == true
  puts 'yay'
end

leap_year?('2000')

def test(expected, actual)
  if expected == actual
    puts 'yay'
  else
    puts 'nay'
  end
end

test true, leap_year?(2000)

test true, leap_year?(2001)

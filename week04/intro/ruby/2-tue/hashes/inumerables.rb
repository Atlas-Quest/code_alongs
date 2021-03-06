require 'pry'

languages = ['ruby','php','python']

lucky_numbers = [1,7,21]

#  in js we call it higher order functions
#  inumerables in short is something you can count

# ruby block
languages.each do |lang|
  puts lang
end

total = 0
lucky_numbers.each do |num|
  total = total + num
  puts total
end
binding.pry

song = {
  title: 'call me maybe',
  artist: 'jackson'
}

song.each do |key_value_pair|
  puts key_value_pair
end


languages.find do |lang|
  if lang == 'ruby'
    lang
  end
end

new_arr = []

# map as transform
upcased_languages = languages.map do |lang|
  lang.capitalize
end

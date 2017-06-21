require 'pry'
# A
a = ["Anil", "Erik", "Jonathan"]
# A: Q.1
a[1]
# A: Q.2
a.push('Vanessa')
# B
h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
# B: Q.1
h[1]
# B: Q.2
h[:two]
# B: Q.3
h['two']
# B: Q.4
h[3] = "Three"
# B: Q.5
h[:four] = 4
# C
is = {true => "It's true!", false => "It's false"}
# C: Q.1
"It's true!"
# C: Q.2
"It's false"
# C: Q.3
"It's false"
# C: Q.4
nil
# C: Q.5
nil
# D
users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}
# D: Q.1
users["Jonathan"][:twitter]
# D: Q.2
users["Erik"][:favorite_numbers].push 7
# D: Q.3
users.store "Vanessa", {:twitter => "atlas-quest", :favorite_numbers => [12,24,36],}
# D: Q.4
users["Erik"][:favorite_numbers]
# D: Q.5
users["Erik"][:favorite_numbers].min
# D: Q.6
users["Anil"][:favorite_numbers].map{ |num| num if num % 2 == 0 }.compact
=> [12, 14]
# D: Q.7
all_nums = []

users.each do |name,val|
  all_nums.concat val[:favorite_numbers]
end

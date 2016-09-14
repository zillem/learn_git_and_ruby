first, second, third = ARGV
undefined = "undefined"
first||= undefined
second||= undefined
third||= undefined

lazy = "variable is: "

puts "Your first #{lazy}#{first}"
puts "Your second #{lazy}#{second}"
puts "Your third #{lazy}#{third}"

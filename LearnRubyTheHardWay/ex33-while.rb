i = 0
numbers = []

while i < 6
  puts "\tAt the top i is #{i},"
  numbers.push(i)

  i += 1
  print "Numbers now: ", numbers
  puts "\n\tAt the bottom i = #{i}."
end

puts "The numbers: "
numbers.each {|num| print num, " "}

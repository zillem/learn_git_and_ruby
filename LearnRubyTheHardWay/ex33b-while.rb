numbers = []

#for i in (0..5)
#  puts "\tAt the top i is #{i},"
#  numbers.push(i)
#  print "Numbers now: ", numbers
#  puts "\n\tAt the bottom i = #{i}."
#end

(0..5).each {|i| numbers.push(i); print "i at the top ", i, "\n"}

#while i < 6
#  puts "\tAt the top i is #{i},"
#  numbers.push(i)
#
#  i += 1
#  print "Numbers now: ", numbers
#  puts "\n\tAt the bottom i = #{i}."
#end

puts "The numbers: "
numbers.each {|num| print num, " "}

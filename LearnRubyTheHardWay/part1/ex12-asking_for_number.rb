print "Give me a number... "
number = gets.chomp.to_i
bigger = number + 100

puts "A bigger number is #{bigger}"

print "Give me another number... "
another = gets.chomp.to_i
smaller = another / 100

puts "#{smaller} is a smaller number."
puts "#{number} - #{another} = #{number - another}"

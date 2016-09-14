def add(a,b)
  puts "ADDING #{a} + #{b} = #{a + b}"
  return a + b
end

def substract(a, b)
  puts "SUBTRACTING #{a} - #{b} = #{a - b} "
  return a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b} = #{a * b}"
  return a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b} = #{a / b}"
  return a / b
end

puts "Let's do some calculation!"

age = add(30, 5)
height = substract(78, 4)
weight = multiply(90, 2)
iq = divide(270, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight} IQ: #{iq}"

# A puzzel for extra credit
puts "Here is a puzzle"
what = add(age, substract(height, multiply(weight, divide(iq, 2))))

puts "\nAnswer = #{what}. It would be confusing by hand"
puts "\nI'll write it out for you"
puts "Calculate: #{age} + (#{height} - (#{weight} * (#{iq} / 2)))"

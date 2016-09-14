people = 30
cars = 40
trucks = 15

if cars > people
  puts "More cars than people."
elsif car < people
  puts "More people than cars."
else
  puts "We can't decide..."
end

if trucks > cars
  puts "Too many trucks!"
elsif trucks < cars
  puts "We should take trucks."
else
  puts "We still can't decide..."
end

if people > trucks
  puts "Alright, let's just take the trucks"
else
  puts "Let's not go anywhere!"
end

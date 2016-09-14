puts "How many people?"
people = gets.chomp.to_i
cats = 30
dogs = 15

if people < cats
  puts "Too many cats. (#{cats})"
end

puts "More people is better" if people > cats
puts "The world is drooled by dogs. (#{dogs})" if people < dogs
puts "Humans rule doggies" if people > dogs

dogs += 5


puts "People are equal to dogs" if people == dogs

puts "More or equal amount of dogs to humans." if people <= dogs

puts "Less or equal dogs to people." if people >= dogs

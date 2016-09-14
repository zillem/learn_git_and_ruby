ten_things = "Apples Oranges Crows Telephone Light Sugar"
stuff = ten_things.split(' ')

puts "Wait there are not then things, there are only #{stuff.length}, lets fix that" if stuff.length < 10
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Tits"]

while stuff.length < 10
  next_one = more_stuff.shift
  puts "Adding: #{next_one}"
  stuff.push(next_one)
  puts "Now there are #{stuff.length} items."
end

puts "\n\nThere we go: \n#{stuff}"
puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-2]
print stuff
puts "\n", stuff.pop
puts stuff.shift
puts stuff.join[' ']
puts stuff[1..5].join("#")
print stuff

count = [1, 2, 3, 4, 5, 6]
fruits = ['apples', 'orangjes', 'pears', 'apriconts']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first for-loop goes through a list
# in a more traditional style found in other languages
for i in count
  puts "This is count #{i}"
end

# for loops are not the Ruby way.
# Ruby prefers a little bit better way

fruits.each do |i|
  puts "A fruit open type: #{i}"
end

# We can also go through mixed lists
# note this is yet another style, exactly like above
# but a different syntax (way to write it).
change.each {|i| puts "I got #{i}"}

# building list, an empty one first
elements = []

# fill elements with numbers 1 to 5
(0..5).each do |i|
  puts "adding #{i} to the list."
  # pushes the i var on the end of the list
  elements << i
  #elements.push(i)
end

#print the list
elements.each {|i| puts "Element was: #{i}" }

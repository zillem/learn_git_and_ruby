filename = ARGV.first

puts "We're going to erase #{filename}"
puts "if you don't want that hit ctrl+c (^C)."
puts "If you are OK press ENTER"

$stdin.gets

puts "Opening file"
target = open(filename, "w")

puts "Not Truncating the file.  Goodbye!"
target.truncate(0)

puts "Give me three lines"

print "Give me Line 1: "
line1 = $stdin.gets.chomp
print "Give me line 2: "
line2 = $stdin.gets.chomp
print "Give me line 3: "
line3 = $stdin.gets.chomp

lines = line1 + "\n" + line2 + "\n" + line3

puts "Writing to file"
target.write(lines)


puts "CLOSING FILE..."
target.close()

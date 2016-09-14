input_file = ARGV.first

def print_all(f)
  puts f.read, "\n"
end

def rewind(f)
  f.seek(8)
end

def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}\n"
end

current_file = open(input_file)

puts "\t\tFirst let's print the whole file:\n"
print_all(current_file)

puts "\t\tNow let's rewind, kind of like a tape\n\t<<< <<<\n"
rewind(current_file)

puts "\t\tLet's print the first three lines\n"
current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

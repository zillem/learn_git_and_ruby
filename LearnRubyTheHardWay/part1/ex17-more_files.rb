from_file, to_file = ARGV
puts "Will copy form #{from_file} to #{to_file}..."

# we could do these two on one line, how?
in_file = open(from_file)
in_data = in_file.read

puts "The input file (#{from_file}) = #{in_data.length} bytes long."

puts "Does the output file exist? #{File.exist?(to_file)}"
puts "Ready for write > hit ENTER. Hit ctrl+c to abort."

$stdin.gets

out_file = open(to_file, 'w')
out_file.write(in_data)

puts "WRITE COMPLETE"

out_file.close
in_file.close

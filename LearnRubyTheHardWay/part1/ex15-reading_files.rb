#file = ARGV.first
file = "ex15-input.txt"


txt = open(file)
puts "Here's your filename #{file}"
print txt.read

txt.close()

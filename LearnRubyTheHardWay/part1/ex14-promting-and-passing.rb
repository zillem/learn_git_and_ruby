user_name = ARGV.first #get the first argument

prompt = '> '

puts "Hi #{user_name}"
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}?"
print prompt

likes = $stdin.gets.chomp

puts "Where do you live #{user_name}?"
print prompt
lives = $stdin.gets.chomp

# comma's in puts is like using it again
puts "What kind of computer do you have #{user_name}?"
print prompt
computer = $stdin.gets.chomp

puts """
Alright so you said #{likes} about liking me.
You live in #{lives}, must be close.
And you have a #{computer} computer.
"""

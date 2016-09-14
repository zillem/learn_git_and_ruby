puts "Let's practice everyting learned so far."
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

# the <<END is a "heredoc"". See Student Questions.
poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \nthe needs of love
nor comprehend passion from intuition
and requires an explanation
\n\twhere there is none.
END

line = "----------"
puts line
puts poem
puts line

five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"
puts "I assume it's correct, is it? ==> #{five == 5}"

def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of : #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

start_point /= 10
puts "\nWe can also do it this way:"
puts "We'd have %s beans, %d jars, and %d crates" % secret_formula(start_point)

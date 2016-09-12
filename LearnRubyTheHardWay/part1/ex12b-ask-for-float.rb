print "Please give me $103.4, I will give some back right away"
print "/nHow much will you give me?  "

money = gets.chomp.to_f
puts "Thank you for $#{money.round(2)}"

percentage = 0.1
return_money = money * percentage
rational = return_money.to_r
puts "This is what you get back $#{return_money.round(2)}"
#puts " as a rational = #{rational}"

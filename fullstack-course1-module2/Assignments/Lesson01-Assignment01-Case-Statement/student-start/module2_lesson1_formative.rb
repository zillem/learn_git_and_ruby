some_var = "false"
another_var = "nil" 

puts case
  when some_var == "pink elephant" 
    "Don't think about the pink elephant!"
  when another_var.nil? 
    "Question mark in the method name?"
  when some_var == false 
	"Looks like this one should execute"
  else
    "I guess nothing matched... But why?"
end

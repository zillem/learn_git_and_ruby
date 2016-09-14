require "./ex25-even_more_practice.rb"

sentence = "All good things come to those who wait."

#prints all words
words = Ex25.break_words(sentence)
print words

sorted_words = Ex25.sort_words(words)
puts "\n"
print sorted_words
puts "\n"

#prints the first word and the last word
puts "\n"
Ex25.print_first_word(words)
Ex25.print_last_word(words)
puts "\n"

#print th first and last sorted word
Ex25.print_first_word(sorted_words)
Ex25.print_last_word(sorted_words)

#pritn first and last word of the sentence unsorted and sorted
puts "\n"
Ex25.print_first_and_last(sentence)
puts "\n"
Ex25.print_first_and_last_sorted(sentence)

# Collections exercises - Exercise 9

# Write a method to titleize a string

words = "the flintstones rock"

# My solution:

words_array = words.split(' ')

words_array.map! do |word|
  word.capitalize!
end

words = words_array.join(' ')

puts words

# Launch School solution:

words.split.map { |word| word.capitalize }.join(' ')   # Same logic, more succinct
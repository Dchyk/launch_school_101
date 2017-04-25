# Easy 1 Question 6 - Reverse it (part 2)

# Write a method that takes one argument, a string containing one or more words, 
# and returns the given string with all five or more letter words reversed. 
# Each string will consist of only letters and spaces. 
# Spaces should be included only when more than one word is present.

# input 
# - a string of one or more words
# 
# output
# - a string 
# - no spaces unless there are multiple words present
#
# algorithm
# - split the string so we can save each word as an element of an array
# - iterate over the array, checking each word for length
# - if a word's length is >= 5, reverse that word
# - join the array back into a string
# - print the string to the screen

def reverse_words(string)
  words_array = string.split

  words_array.each do |word|
    if word.length >= 5
      word.reverse!
    end
  end
  
  words_array.join(' ')
end





# Examples: 

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
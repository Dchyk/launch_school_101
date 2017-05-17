# Easy 5 Exercise 4 - Letter Swap

# Given a string of words separated by spaces, write a method that takes 
# this string of words and returns a string in which the first and last 
# letters of every word is swapped.

# You may assume that every word contains at least one letter, and that 
# the string will always contain at least one word. You may also assume 
# that each string contains nothing but words and spaces.

# input
# - a string
#
# output
# - a string with letters swapped and spaces retained
#
# algorithm
# - split string into an array of words at the spaces
# - iterate over the array of strings and set string[0] to be string[1],
#   and string[-1] to string [0]. 
# - string[0], string[-1] = string[-1], string[0]
# - join the array together with spaces between words. 

def swap(string)
  words = string.split.each do |word| 
    word[0], word[-1] = word[-1], word[0]
  end
  words.join(' ')
end




# Examples

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
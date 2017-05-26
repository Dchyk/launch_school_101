# Easy 5 Exercise 6 - Letter counter (part 1)

# Write a method that takes a string with one or more space separated words and
# returns a hash that shows the number of words of different sizes.

# Rules: Words consist of any string of characters that do not include a space.

# input
# - a string of one or more words
#
# output
# - hash 
#
# rules
# - words are separated in the string by spaces
# 
# algorithm
# - split the input string at spaces, forming an array
# - initialize an empty has
# - iterate through the array of words
# - starting with the first word, count the number of chars
# - hash[number_of_chars] += 1
# - return the hash

require 'pry'

def word_sizes(string)
  characters = {}

  string.split(' ').each do |word| 
    if characters.has_key?(word.size)
      characters[word.size] += 1 
    else
      characters[word.size] = 1
    end
  end

  characters
end


# Examples

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}

puts word_sizes('Four score and seven.')
puts word_sizes('Hey diddle diddle, the cat and the fiddle!')
puts word_sizes("What's up doc?")
puts word_sizes('')
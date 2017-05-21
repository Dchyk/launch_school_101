# Easy 5 Exercise 5 - Clean up the words

# Given a string that consists of some words and an assortment of non-alphabetic 
# characters, write a method that returns that string with all of the non-alphabetic 
# characters replaced by spaces. If one or more non-alphabetic characters occur in a 
# row, you should only have one space in the result (the result should never have 
# consecutive spaces).

# input 
# - a string of any type of characters
#
# output
# - a string with all non-alphabetical characters removed
# 
# rules
# - any non-alphabetic character should be replaced with a space
# - the output string should have no consecutive spaces
# 
# algorithm
# - create an array containing all non-alphabetic characters? 
# - - is there a way to check for non alphabetic chars? maybe easier to check for alphabetics instead
# - iterate through each character in the string, and if it's included
#   in the array of non-alphabetics, replace it with a space
# - iterate through the array and check for multiple consecutive spaces, 
#   and if they are found replace with 1 space / delete extras.
# - return the resulting string

ALPHABETICS = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

def cleanup(string)

  new_array = string.each_char.map do |char|
    if !ALPHABETICS.include?(char)
      char = ' '
    else
      char
    end
  end

  new_array.join.squeeze(' ')
end

# Examples

puts cleanup("---what's my +*& line?") == ' what s my line '
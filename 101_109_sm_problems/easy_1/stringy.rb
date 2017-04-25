# Easy 1 Question 7 - Stringy Strings

# Write a method that takes one argument, a positive integer, 
# and returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

# input
# - an integer greater than zero
#
# output 
# - a string 
#
# algorithm
# - create an empty string to hold the 1's and 0's
# - Iterate through a range of 1 up to the input integer, starting with 1, 
#   and for each iteration print current_number % 2 using p so it's all on one line.

def stringy(number)
  num_string = ''

  (number / 2).times do |num|
    num_string << '10'
  end

  (number % 2).times do |num|
    num_string << '1'
  end

  num_string

end






# Examples:

puts stringy(6) 
puts stringy(9)
puts stringy(4)
puts stringy(7)

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
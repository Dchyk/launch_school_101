# Easy 1 Question 9 - Sum of Digits

# Write a method that takes one argument, a positive integer, 
# and returns the sum of its digits.

# input 
# - a positive integer
#
# output
# - a positive integer
#
# algorithm
# - split the positive integer into an array of integers, 
#   sum those integers together, and return the result. 

def sum(number)
  number.digits.sum
end



# Examples

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
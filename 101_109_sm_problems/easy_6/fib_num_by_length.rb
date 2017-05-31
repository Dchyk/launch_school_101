# Easy 6 Exercise 3 - Fibonacci Number Location By Length

# Write a method that calculates and returns the index of the first 
# Fibonacci number that has the number of digits specified as an argument.
#  (The first Fibonacci number has index 1.)

# input
# - an integer, representing the number of digits in a fibonacci number
#
# output
# - an integer, representing the index of the first fibonacci number in 
#   the fibonacci sequence that has the number of digits specified by the
#   input integer
#
# rules
# - the fibonacci series starts with 1, 1, and then from the 3rd number on
#   in the sequence, each number is equal to the sum of the 2 previous nums.
# - the first fibonacci number has index 1
# - the number of digits in a number can be determined by dividing it by 
#   10 until there is no remainder. 
# - another way to count the number of digits would be to convert a number to
#   a string, and then count the characaters. num.to_s.chars.count
#
# algorithm
# - pass in index_num as a method paramater
# - set a variable called fibonacci_index to 1
# - set a variable called current_fibonacci_num to 1
# - set a variable called previous_fibonacci_num to 0 
# - create a while loop with a condition tellig it to run until 
#   current_fibonacci_num.to_s.chars.count == input_number,
#   and then on each iteration to set current_fibonacci_num += previous_fibonacci_num
#   and set                           fibonacci_index += 1
# - Finally the method should return the fibonacci_index variable. 

require 'pry'

def find_fibonacci_index_by_length(digits)
  fibonacci_index        = 1
  this_fibonacci_num     = 0 
  previous_fibonacci_num = 0
  current_fibonacci_num  = 1

  until this_fibonacci_num.to_s.chars.count == digits
    this_fibonacci_num = current_fibonacci_num + previous_fibonacci_num
    previous_fibonacci_num = current_fibonacci_num
    current_fibonacci_num = this_fibonacci_num
    fibonacci_index += 1
  end

  fibonacci_index
end



# Examples

find_fibonacci_index_by_length(2) == 7
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847
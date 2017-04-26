# Easy 1 Question 8 - Array Average

# Write a method that takes one argument, an array containing integers, 
# and returns the average of all numbers in the array. 
# the array will never be empty and the numbers will always be positive integers.

# input
# - an array of integers
# 
# output
# - a positive integer
#
# algorithm
# - add all of the numbers in the input array together, and then 
#   divide that number by the number of elements in the array. 

def average(array)
  total = 0

  array.each do |num|
    total = total + num
  end

  total / array.size
end

# LS solution

def average_ls(numbers)
  sum = numbers.reduce { |sum, number| sum + number}
  sum / numbers.count
end



# Examples

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
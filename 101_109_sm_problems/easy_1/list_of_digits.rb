# Easy 1 - 3 List of Digits

# Write a method that takes one argument, a positive integer, 
# and returns a list of the digits in the number.

# input 
# - a positive integer
#
# output
# - an array of integers
# 
# algorithm
# - validate that input is an integer greater than zero?
# - split the integer into each of its digits, and save as an array of integers 
# - return the array


# one way:

def digit_list(positive_integer)
  positive_integer.digits.reverse!
end

# another way - brute force

def digit_list_two(positive_integer)
  list = []
  array_of_integer_strings = positive_integer.to_s.split('')
  array_of_integer_strings.each do |number|
    list << number.to_i
  end
  list 
end


puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]

puts "------------------------------------"

puts digit_list_two(12345) == [1, 2, 3, 4, 5]
puts digit_list_two(7) == [7]
puts digit_list_two(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list_two(444) == [4, 4, 4]
puts digit_list_two(432123) == [4, 3, 2, 1, 2, 3]
puts digit_list_two(777777) == [7, 7, 7, 7, 7, 7]

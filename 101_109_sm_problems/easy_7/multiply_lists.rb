# Easy 7 Exercise 8 - Multiply Lists

# input
# - two arrays, each lists of integers
# 
# output
# - a new array containing the products of each pair of numbers that have the
#   same index in the input arrays
# - each input array has the same number of elements

def multiply_list(array1, array2)
  array1.map.with_index { |num, index| num * array2[index] }
end

# Solution with #zip

def multiply_list2(array1, array2)
  array1.zip(array2).map { |sub_arr| sub_arr.inject(:*) }
end


# Examples

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
puts multiply_list([7, 8, 9], [10, 11, 12])
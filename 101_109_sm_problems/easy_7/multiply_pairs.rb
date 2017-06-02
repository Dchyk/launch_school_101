# Easy 7 Exercise 9 - Multiply All Pairs

# input
# - two arrays
#
# output rules
# - output an array 
# - iterate though each element in the first array, and multiply it by
#   each element in the second array, putting each return value into a new
#   array, then sort the array with the return values in ascending order. 


def multiply_all_pairs(array1, array2)
  all_multiples = []

  array1.each do |arry1_el|
    array2.each do |arry2_el|
      all_multiples << arry2_el * arry1_el
    end
  end

  all_multiples.sort
end

# Examples

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
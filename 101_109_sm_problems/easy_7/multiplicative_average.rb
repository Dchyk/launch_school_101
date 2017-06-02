# Easy 7 Exercise 7 - Multiplicative Average

# input
# - an array of integers
#
# output rules
# - iterate through the array and multiply all the numbers together,
#   then divide the result by array.size, and print the result rounded
#   to 3 decimal places

def show_multiplicative_average(arr)
  average = (arr.inject(:*)).to_f/arr.size
  puts format('%.3f', average)
end



# Examples

puts show_multiplicative_average([3, 5])
# The result is 7.500

puts show_multiplicative_average([6])
# The result is 6.000

puts show_multiplicative_average([2, 5, 7, 11, 13, 17])
#The result is 28361.667
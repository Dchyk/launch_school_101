# Easy 6 Exercise 7 - Halvsies

# input
# - an array
#
# output
# - two arrays 
#
# rules
# - each output array == 1) the first half and the 2) second half of the
#   input array
# - if the array contains an odd number of elements, the middle element
#   should be placed in the first half Array. 
#
# algorithm
# - take the length of the input array and divmod by 2, then add the div and mod results
#   together to get the first_half_size, while the div number will be the second_half_size. 
# - take the length of the input array, and iterate through it length/2 times, 
#   pushing elements from the beginning of the array on each iteration into the "first half" array
#   while index <= first_half_size - 1 
# - else, 

# iterate through the input array. 
# while first half size <= index - 1, push elements into first half array. Else, push elements into second
# half array.

def halvsies(array)
  second_half, middle_element = array.size.divmod(2)
  first_half_size = second_half + middle_element
  output_array = []
  first_half_array = []
  second_half_array = []

  array.each_with_index do |el, idx|
    if idx <= first_half_size - 1
      first_half_array << el
    else
      second_half_array << el
    end
  end

  output_array << first_half_array << second_half_array
end





# Examples

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]
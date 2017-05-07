# Easy 4 Exercise 6 - Running Totals

# Write a method that takes an Array of numbers, and returns an Array with the 
# same number of elements, and each element has the running total from the original Array.

# input
# - an array of integers
#
# output
# - an array with the same number of integers
#
# algorithm
# - iterate through the input array, mapping the result of (array[current index] + array[current index - 1])
# - to the new array
# - Makes sense to use a While loop, controlled by current_array.length, with a next to skip the first
# - element (if index == 0, next)

def running_total(array)

  total = []
  running_total = 0

  array.each_with_index do |element, index|
    if index == 0 
      running_total = element                  # This is totally superfluous, since running_total is = 0 at first
    else
      running_total = element + running_total
    end
    total << running_total
  end

total

end




# Examples

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []
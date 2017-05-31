# Easy 6 Exercise 6 - Combining Arrays

# input
# - two arrays
#
# output 
# - one array that is the two input arrays combined, with duplicates 
#   removed

# algorithm
# - iterate through each input array and push each value into a new
#   array, then call uniq! on this array to remove duplicates.


# Examples

def merge(arr1, arr2)
  combined_arr = []

  combined_arr << arr1 << arr2 

  combined_arr.flatten.uniq!
end

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
#=> true

def merge2(arr1, arr2)
  arr1.zip(arr2).flatten.sort.uniq!
end

merge2([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
#=> true

def merge3(arr1, arr2)
  combined_arr = []

  arr1.each { |el| combined_arr << el }
  arr2.each { |el| combined_arr << el }

  combined_arr.uniq
end

merge3([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
#=> true

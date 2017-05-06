# Exercise 13

# Given the following data structure, return a new array containing the same 
# sub-arrays as the original but ordered logically according to the numeric 
# value of the odd integers they contain.


# Return a new array, so use map or select
# Within map, use sort on each subarray - but need to calculate the odd integers
# OR just sort in descending order?

# sort_by the highest odd number?

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

new_array = arr.sort { |a,b| b <=> a }

#=> [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

new_array 


# The sorted array should look like this:

[[1, 8, 3], [1, 6, 7], [1, 4, 9]]

arr.sort_by do |sub_array|
  sub_arr.select do |num|
    num.odd?
  end
end



# Easy 6 Exercise 9 - Does My List Include This?

# input
# - array, search value
#
# output
# - true or false
#
#

def include?(array, search_value)
  array.each { |el| return true if el == search_value }
  false
end

# Further exploration:

# Alternate 1

def include2?(array, search_value)
  for i in 0..array.size - 1
    return true if array[i] == search_value
  end
  false
end

# Alternate 2

def include3?(array, search_value)
  !array.select { |el| el == search_value }.empty?
end



puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false

puts include2?([1,2,3,4,5], 3)
puts include2?([1,2,3,4,5], 6)
puts include2?([], 3)
puts include2?([nil], nil)
puts include2?([], nil)

puts include3?([1,2,3,4,5], 3)
puts include3?([1,2,3,4,5], 6)
puts include3?([], 3)
puts include3?([nil], nil)
puts include3?([], nil)

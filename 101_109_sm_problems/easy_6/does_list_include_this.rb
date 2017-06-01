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

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
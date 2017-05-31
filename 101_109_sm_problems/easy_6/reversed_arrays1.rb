# Easy 6 Exercise 3 - Reversed Arrays (part 1)

# Reverse an array's elements without using Array#reverse!
# Return the same array

# input
# - an array
#
# output
# - the input array (same object) with elements reversed


def reverse!(array)
  idx = -2

  if array.empty?
    return array
  end

  while idx.abs <= array.size
    array << array.delete_at(idx)
    idx -= 1
  end

  array
end




# Examples

list = [1,2,3,4]
puts result = reverse!(list) # => [4,3,2,1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b c d e)
puts reverse!(list) # => ["e", "d", "c", "b", "a"]
puts list == ["e", "d", "c", "b", "a"]

list = ['abc']
puts reverse!(list) # => ["abc"]
puts list == ["abc"]

list = []
puts reverse!(list) # => []
puts list == []
# Easy 6 Exercise 4 - Reversed Arrays (Part 2)

# input
# - an array
#
# output
# - a new array with the same elements as input array, in reverse order

def reverse(array)
  reversed_array = []
  idx = -1

  while idx.abs <= array.size
    reversed_array << array[idx]
    idx -= 1
  end

  reversed_array
end



puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b c d e)) == %w(e d c b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

puts list = [1, 2, 3]                      # => [1, 2, 3]
puts new_list = reverse(list)              # => [3, 2, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 2, 3]                     # => true
puts new_list == [3, 2, 1]                 # => true
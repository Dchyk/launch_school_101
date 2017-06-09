# Medium 2 Exercise 9 - Bubble Sort

# input
# - an array
#
# output
# - the same array sorted
#
# algorithm
# - compare the item at index 0 with the item at index 1.
#   If the item at 0 is > than the item at 1, swap them. 
#   While there are more items, repeat this with the next two indices, 1 
#   becoming the left and 2 becoming the right, for example. 
#
#   

require 'pry'
# Attempt 1"
# def bubble_sort!(arr)

#   max_index = arr.size - 1

#   arr.each_with_index do |_, idx|
#     if idx < max_index && arr[idx] > arr[idx + 1]
#         left      = 0
#         right     = 1
#         while right <= max_index
#           if arr[left] > arr[right]
#             arr[left], arr[right] = arr[right], arr[left]
#           end
#           left += 1
#           right += 1
#         end
#         binding.pry
#     end
#   end

# arr
# end

# After reading the algorithm and psuedo code for bubble sort:


def bubble_sort!(array)
  n = array.size

  loop do
    swapped = false
    for i in 1..(n - 1) do
      if array[i - 1] > array[i]
        array[i - 1], array[i] = array[i], array[i - 1]
        swapped = true
      end
    end
    break if swapped == false 
  end

  array
end


# Examples

array = [6, 2, 7, 1, 4]

puts bubble_sort!(array)

array = [6, 2, 7, 1, 4]
puts bubble_sort!(array)

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
puts bubble_sort!(array)

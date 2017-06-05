# Medium 1 Exercise 1 - Rotation (Part 1)

def rotate_array(array)
  rotated = []

  for i in 1..(array.length - 1) do
    rotated << array[i]    
  end

  rotated << array[0]
end

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

puts x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]   
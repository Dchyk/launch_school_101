# Medium 1 Exercise 1 - Rotation (Part 1)

def rotate_array(array)
  rotated = []

  for i in 1..(array.length - 1) do
    rotated << array[i]    
  end

  rotated << array[0]
end





def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

p rotate_rightmost_digits(735291, 1)
p rotate_rightmost_digits(735291, 2)
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
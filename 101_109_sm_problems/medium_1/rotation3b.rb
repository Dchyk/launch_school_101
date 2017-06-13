# Medium 1 Exercise 3 - Rotation (Part 3)

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

def max_rotation(number)
  digit = number.to_s.chars.size
  rotated = number

  while digit >= 1
    rotated = rotate_rightmost_digits(rotated, digit)
    digit -= 1
  end

  rotated
end




# Examples

p max_rotation(735291) #== 321579
p max_rotation(3)#  == 3
p max_rotation(35)#  == 53
p max_rotation(105)#  == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146)#  == 7_321_609_845

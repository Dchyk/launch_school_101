# Medium 2 Exercise 6 - Tri-angles

# input
# - 3 angles 
#
# output
# - a symbol
#
# rules
# - return :invalid unless sum of 3 angles == 180 || angles includes a 0
# - if angles includes a 90, return :right
# - if angles contains a value greater than 90, return :obtuse
# - if all values of angles are < 90, return acute. 


def triangle(*angles)
  return :invalid if angles.inject(:+) != 180 || angles.include?(0)
  return :right if angles.include?(90)
  return :obtuse if angles.any? { |angle| angle > 90}
  return :acute if angles.all? { |angle| angle < 90 }
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid
# Medium 2 Exercise 5 - Triangle Sides

# input
# - 3 integers
#
# output 
# - a symbol
#

# rules
# - for the 3 integers: 
# - the sum of the 2 smallest values must be greater than the largest value,
# - IF not, the triangle is invalid
# - all integers must be greater than 0, or the triangle is invalid.
# - IF the above are true, then
# - - IF all 3 integers are equal, return :equilateral
# - - IF 2 of the ingers are equal, and 1 is different, return isosceles
# - - IF all 3 integers are different, return :scalene


def triangle(*sides)
  sides.sort!

  if sides[0..1].sum <= sides[2] || sides.include?(0)
    return :invalid
  else
    sides.each do |side|
      return :equilateral if sides.count(side) == 3
      return :isosceles if sides.count(side) == 2
    end
    :scalene
  end
end

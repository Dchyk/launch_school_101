# Easy 9 Exercise 3 - Always return negative

# input
# - a number
#
# output rules
# - if number is negative or 0, return the number
# - if number is greater than zero, return the number - itself twice

def negative(num)
  if num <= 0 
    return num
  else
    return num - (num * 2)
  end
end


# Examples

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby
# Easy 1 Question 10 - What's My Bonus?

# Write a method that takes two arguments, a positive integer and a boolean, 
# and calculates the bonus for a given salary. 
# If the boolean is true, the bonus should be half of the salary. 
# If the boolean is false, the bonus should be 0.

# input 
# - a positive integer
# - a boolean
#
# output 
# - the input integer / 2, or 0 

def calculate_bonus(number, boolean)
  if boolean
    number / 2
  else
    0
  end
end



# Examples

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
# Easy 8 Exercise 9 - Convert number to reversed array of digits

# input
# - integer

# output rules
# - reverse the digits, but drop zeros
#

def reversed_number(integer)
  integer.to_s.reverse.to_i
end

# Examples

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # Note that zeros get dropped!
puts reversed_number(1) == 1
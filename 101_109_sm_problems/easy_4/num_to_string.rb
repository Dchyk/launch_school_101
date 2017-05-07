# Easy 4 Exercise 9 - Convert a number to a string

# input
# - an integer
#
# output
# - a string representation of that integer
#
# algorithm
# - need a lookup table (hash) with string values for each integer
# - need to break the number down such that we know what each character will be
# - rules for breaking the number down
# -- reverse the rules from the previous exercise? Divide by 10, and subtract the 
# -- current value, and so on? 
# -- Step 1: Break the number down into single integers
# -- current number % 10 == digit
# -- current number / 10 == next number
# -- Step 2: Convert each integer into a character
# -- Step 3: Concatenate the characters into a string and return it


def integer_to_string(integer)
  
  characters = []
  
  if integer == 0
    characters << '0'
  else
    while integer != 0
      characters << integer % 10      # insert current digit
      integer = integer / 10 
    end
  end

  characters.reverse.join
end




# Examples: 

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
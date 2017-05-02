# Easy 4 - Problem 1 - Short Long Short

# Write a method that takes two strings as arguments, 
# determines the longest of the two strings, and then 
# returns the result of concatenating the shorter string, 
# the longer string, and the shorter string once again. 
# You may assume that the strings are of different lengths.

# input 
# - two strings
#
# output
# - one string
#
# algorithm
# - call length on each input string - if string 1 is shorter then
# concatenate string 1 + string 2 + string 1, if string 2 is shorter, 
# 

def short_long_short(string1, string2)
  big_string = ''

  if string1.length < string2.length
    big_string = string1 + string2 + string1
  else
    big_string = string2 + string1 + string2
  end

  big_string
end



# Test cases

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
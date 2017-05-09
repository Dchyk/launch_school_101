# Easy 5 Exercise 1 - ASCII String Value

# Write a method that determines and returns the ASCII value of a string
# that is passed in as an argument.
# The ASCII value is the sum of the ASCII values of every character in the string
# Use String#ord to determine ASCII value of a character

# input
# - a string
#
# output
# - an integer
#
# algorithm
# - iterate through the string's characters
# - look up the ASCII value for each character, and add it to the
#   running total
# - return the total after all characters have been added

def ascii_value(string)
  value = 0 

  string.each_char { |char| value += char.ord }

  value
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0

# Further exploration:

char.ord.mystery == char

# mystery is Integer#chr

# If you try to call #chr on a string with multiple characters, it seems 
# to chop off any characters after the first one. 


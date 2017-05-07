# Easy 4 Exercise 7 - Convert a string to a number

def string_to_integer(string)
  integer_strings = {
    '0' => 0,
    '1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9
  }

  string_as_chars = string.chars

  string_as_integers_arr = []

  string_as_chars.each do |character|
    string_as_integers_arr << integer_strings[character]
  end

  string_as_integers_arr

  converted_integer = 0

  idx = -1

  while idx.abs <= string_as_integers_arr.length    # start from the last element in the array, -1, and continue
    converted_integer = converted_integer + (string_as_integers_arr[idx]*(10**(idx.abs - 1)))
    idx -= 1
  end

  converted_integer
end

# input
# - a string 
#
# output
# - the integer representation of the string
#
# algorithm
# - split the string into characters, convert each character to the corresponding 
#   integer, then concatenate the integer back together?
# - The question is, how to detect what characer represents each integer.
# - Since we want to match something with something else, a hash seems like a good
#   solution.
#
# - I've gotten as far as an array of integers. Now how to create the correct integer 
#   from this data structure? 
# - I'm stuck. Do I need to start over? 
#
# - How could I convert a string into the right size integer? 
# - Rules
# --1 digit  = the 1s place    - *1     = 10**0
# --2 digits = the 10s place   - *10    = 10**1
# --3 digits - the 100s place  - *100   = 10**2
# --4 digits = the 1000s place - *1000  = 10**3

# Examples

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
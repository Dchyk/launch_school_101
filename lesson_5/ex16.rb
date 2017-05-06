# Lesson 5 Exercise 16

# Each UUID consists of 32 hexadecimal characters, 
# and is typically broken into 5 sections like this 
# 8-4-4-4-12 and represented as a string.

# input
# - abcdef, 0123456789 (hexadecimal)
#
# output 
# - a string
# - broken up into 5 sections separated by "-"
# - 8-4-4-4-12
#
# algorithm
# - select a hexadecimal value at random
# - repeat this X number of times for the given section - 
#     - 8 times for the first, then 4 times, 4 times, 4 times, and 
#     - finally 12 times. 
# - save each iteration of this random selection to a new string
# - After the 2nd round, and each subsequent round, append an "-"
#   to the returned string of hexadecimals, and then concatenate this 
#   to the running total string
# - After the final string is returned, return the entire running total 
#   string
#
#
# Observations
# - Since the smallest set of hexadecimals is 4, and 8 and 12 are multiples,
# - we can extract the random generation to a method that generates 4, 
# - and then simply call this method 2 times, and 3 times for 8 and 12 length strings.
# But, this might not be what the question is calling for. (asks for "a method" that 
# generates one UUID)

hexadecimals = 'abcdef0123456789'   # Define valid hexadecimal values

def generate_four_hexes
  hexadecimals = 'abcdef0123456789'
  rand_hexes = ''
  4.times do |x|
    rand_hexes << hexadecimals[rand(16)]
  end
  rand_hexes
end

def generate_uuid
  uuid = ''

  2.times { uuid << generate_four_hexes}
  
  uuid << '-'

  3.times do 
    uuid << generate_four_hexes
    uuid << '-'
  end

  3.times do
    uuid << generate_four_hexes
  end

  uuid
end

# Example outputs of generate_uuid:

# 034c6538-1ed8-f314-ae1c-e53a34f8a9d5
# bf824045-7d2e-15b0-d259-128ce998e030
# 
# Note - I 
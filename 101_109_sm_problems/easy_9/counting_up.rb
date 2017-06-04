# Easy 9 Exercise 4 - Counting Up

# input
# - an integer
# 
# output rules
# - for 1 up to the input integer, concatenate a number into a new array.

def sequence(limit)
  sequence = []

  (1..limit).each do |i|
   sequence << i
  end

  sequence
end

# Examples

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
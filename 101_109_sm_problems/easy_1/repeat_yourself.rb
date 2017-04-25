# Easy 1 - Repeat Yourself

# Write a method that takes two arguments, a string and a positive integer, 
# and prints the string as many times as the integer indicates.

# input: 
# - a string
# - a positive integer
#
# output:
# - at least one string
#

def repeat(string, integer)
  integer.times do 
    puts string
  end
end

repeat('Hello', 3)

puts "--------"

repeat('Goodbye', 5)
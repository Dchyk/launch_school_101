# Easy 1 Question 4 - How many?

# Write a method that counts the number of occurrences 
# of each element in a given array.

# input
# - an array of elements
# 
# output
# - an integer 
#
# algorithm
# - Starting with the first value in the array, iterate through all values in the 
#   array comparing them to this value. 
#   Initialize a variable to hold a count.
#   If the saved value and the comparison value
#   are equal, increment the counter by 1. 
#   Once all elements in the array have been compared, print the element and 
#   the counter value to the screen.
#   Move to the next index value in the array and repeat the above process.
#   Stop when all values in the array have been compared/counted.

def count_occurrences(input_array)
  input_array.uniq.each do |word|
    puts "#{word}: #{input_array.count(word)}"
  end
end





vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
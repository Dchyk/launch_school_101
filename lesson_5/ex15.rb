# Lesson 5 Exercise 15

# Given this data structure write some code to return an array which contains 
# only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# input
# - an array of nested hashes
#
# output
# - an array 
#
# algorithm/rules
# - we want to return an array based on a criteria, so #select seems like the
#   the right method to use
#
# - Iterate through the arr items 

# inner_1 = {a: [1, 2, 3]}
# inner_2 = {b: [2, 4, 6], c: [3, 6], d: [4]}
# inner_3 = {e: [8], f: [6, 10]}

new_array = arr.map do |inner_hash|    # This works, but returns a blank hash 
  inner_hash.select do |key, value|
    value.all? { |num| num.even? }
  end
end

new_array.reject! { |value| value.empty? }  # Have to remove the empty array {}  

#=> {:b=>[2, 4, 6], :d=>[4]}, {:e=>[8], :f=>[6, 10]}]

# In the above code, I misunderstood the question. This returns all key-value pairs where the 
# values are all even integers, instead of only each HASH where ALL the values are even. 

# Note: the reason I got off on the wrong track here is that I didn't properly understand by outputs.
# Had I started with the proper output #=> [{:e=>[8], :f=>[6, 10]}] I could have reasoned differently.
# Also, I didn't break down the blocks correctly. The most important thing to remember is that #select
# only needs to be on the outermost block, then each inner most block that iterates through the nested 
# data structure, need focus only on returning a value of truthy back upward to the block above it, since
# #select uses this value to select an element or not. 

# correct: 

arr.select do |hash| # look at each hash within the array, and select if the block is truthy
  hash.all? do |key, value| # does the following block return true for each hash?
    value.all? do |number|  # does the following block return true for each array of integers (hash value)
      number.even?          # does the following block return true for each integer inside the array being tested (is it even?)
    end                     # Each inner block must return true back up the line to #select in order for the nested
  end                       # hash to be selected by #select. 
end

#=> [{:e=>[8], :f=>[6, 10]}]

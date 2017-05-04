# Lesson 5 - Exercise 1

# How would you order this array of number 
# strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

puts "--Before--"

puts arr

# first, need to convert each string to an integer
# then, sort b <=> a so they are descending.


arr.map! { |element| element.to_i}.sort! { |a, b| b <=> a}

puts "--After--"

puts arr
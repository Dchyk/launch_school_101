# Lesson 5 Exercise 7

# Given this code, what would be the final values of a and b? 
# Try to work this out without running the code.

a = 2
b = [5, 8]
arr = [a, b] #=> [2, [5,8]]

arr[0] += 2 #=> [4, [5,8]]
arr[1][0] -= a #=> [4, [1,8]]  wrong... arr # => [4, [3, 8]]

# The value of b did change because b is an array and we are modifying that array 
# by assigning a new value at index 0 of that array.
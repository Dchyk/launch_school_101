# Medium 1 Exercise 8 - Fibonacci Numbers (Recursion)

# input
# - an integer representing the nth fibonacci number
#
# output
# - the nth fibonacci number
#
# algorithm
# - compute fibonacci numbers n times, and return the result
# - the fibonacci series starts with 1 and 1, and then each number is the sum
#   of the two previous numbers. 
# - 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89
# rules
# - return 1 if n == 1 or n == 2 
# - if n > 2, return (one_previous) + (two_previous)


# F(1) = 1
# F(2) = 1
# F(n) = F(n - 1) + F(n - 2) where n > 2

# F(5) = F(5 - 1 ) + F(5 - 2)  = 
# F(5) = F(4)      + F(3)      = 

def fibonacci(n)
  return 1 if n == 1 || n == 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765
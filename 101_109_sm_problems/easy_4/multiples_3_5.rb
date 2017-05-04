# Easy 4 Exercise 4 - Multiples of 3 and 5

# Write a method that searches for all multiples of 3 or 5 that lie between 
# 1 and some other number, then computes the sum of those multiples. 
#
# For instance, if the supplied number is 20, the result should be 98 
# (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
#
# input
# - an integer > 1
#
# output
# - an integer
#
# rules 
# - for 1 up to the number, test for whether 3 or 5 can be modulus without a remainder
# - If a number passes this test, then add them to the running total
# - return the running total. 

def multisum(number)
  (1..number).select { |num| (num % 3 == 0) || (num % 5 == 0) }.sum
end

# Test cases

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168
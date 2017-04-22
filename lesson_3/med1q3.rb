# Medium 1 Question 3

def factors(number)
  dividend = number
  divisors = []
  begin
    break if number <= 0 # My proposal for exiting the loop gracefully
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end

# Bonus 1
# What is the purpose of the number % dividend == 0 ?

# This is checking if there is a remainder with number is divided by dividend - 
# no remainder means the number IS divisible by dividend,
# while a remainder means number is not divisible by dividend.


# Bonus 2
# What is the purpose of the second-to-last line in the method 
# (the divisors before the method's end)?

# Placing this as the last line means that the method will
# return the value of the divisors array 

# Launch school solution:

# Use a while condition for the loop:

while dividend > 0 do
  divisors << number / dividend if number % dividend == 0
  dividend -= 1
end
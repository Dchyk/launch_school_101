# Medium 1 Question 2

# The result of the following statement will be an error:

puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?

# You can't use the String method "+" to combine a string with an integer

# One way to fix would be using string interpolation:

puts "the value of 40 + 2 is #{40+2}"

# Another way to fix it would be to call to_s on (40+2):

puts "the value of 40 + 2 is " + (40 + 2).to_s

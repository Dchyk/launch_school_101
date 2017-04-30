# Easy 3 Question 5 - Squaring an argument

def multiply(num1, num2)
  num1 * num2
end

def square(number)
  multiply(number, number)
end

puts square(5) == 25
puts square(-8) == 64

# Further exploration

def to_the_nth_power(number, power)
  multiply(multiply(number, number), power)
end

puts to_the_nth_power(5, 2)
puts to_the_nth_power(5, 5)
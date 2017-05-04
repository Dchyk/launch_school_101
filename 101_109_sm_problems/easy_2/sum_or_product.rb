# Easy 2 Question 8 - Sum or product of consecutive integers

# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product of all numbers 
# between 1 and the entered integer.

# inputs
# - a positive integer
# - a one character string
#
# output
# - a positive integer

VALID_OPERATORS = ['s', 'p']

number = 0
operator = ''
sum = 0
product = 1
loop_counter = 1

loop do 
  puts '>> Please enter an integer greater than 0:'
  number = gets.chomp.to_i
  break if number > 0
  puts 'Invalid input: the number has to be greater than zero!'
end

loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operator = gets.chomp
  break if VALID_OPERATORS.include?(operator)
  puts "Invalid input: you can only enter 's' or 'p'!"
end

if operator == 's'
  while loop_counter <= number
    sum += loop_counter
    loop_counter += 1
  end
  puts "The sum of the integers between 1 and #{number} is #{sum}."
else
  while loop_counter <= number
    product *= loop_counter
    loop_counter += 1
  end
  puts "The product of the integers between 1 and #{number} is #{product}"
end

# Easy 3 Exercise 1 - Searching 101

# Write a program that solicits 6 numbers from the user, then prints a message
#  that describes whether or not the 6th number appears amongst the first 5 numbers.

# input 
# - 5 numbers, saved in an array
# - 1 integer not saved in the array
# output
# - a string and conditional statement
# 
# algorithm
# - iterate through the array, and return true if it includes? number 

def print_question(num)
  puts "=> Please enter the #{num} number:"
end

numbers_array = []

print_question("1st")

numbers_array << gets.chomp.to_i

print_question("2nd")

numbers_array <<  gets.chomp.to_i

print_question("3rd")

numbers_array <<  gets.chomp.to_i

print_question("4th")

numbers_array <<  gets.chomp.to_i

print_question("5th")

numbers_array <<  gets.chomp.to_i

print_question("last")

last_number = gets.chomp.to_i

if numbers_array.include?(last_number)
  puts "The number #{last_number} appears in #{numbers_array}"
else
  puts "The number #{last_number} does not appear in #{numbers_array}"
end



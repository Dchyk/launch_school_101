# Easy 2 Question 5 - Greeting a user

# Write a program that will ask for user's name. 
# The program will then greet the user. 
# If the user writes "name!" then the computer yells back to the user.

# input
# - a string with users name
# 
# output
# - a string with the user's name, or an upcased string with the user's name 

puts "What is your name?"

user_name = gets.chomp

if user_name[-1] == '!'
  user_name = name.chop # removes the '!''
  puts "HELLO #{user_name.upcase}. WHY ARE WE SCREAMING?"
else 
  puts "Hello #{user_name}."
end


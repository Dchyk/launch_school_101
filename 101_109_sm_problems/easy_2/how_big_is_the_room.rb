# Easy 2 Question 2 - How big is the room?

# Build a program that asks a user for the length and width 
# of a room in meters and then displays the area of the room 
# in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

def square_meters(w, l)
  w * l
end



puts "Enter the length of the room in meters:"

length = gets.chomp.to_f

puts "Enter the width of the room in meters:"

width = gets.chomp.to_f

puts "The area of the room is #{square_meters(width, length)} square meters (#{(square_meters(width, length)*10.7639).round(2)} square feet.)"

# It feels like bad practice to put so much calculation inside of string interpolation...
# next time I'm going to create variables outside the string to hold the results.
#
# Also the method square_meters seems unnecessary

# RE Launch school solution:
# We use a constant, SQMETERS_TO_SQFEET to store the conversion factor between 
# square meters and square feet. 
# This is good practice any time you have a number whose meaning is not 
# immediately obvious upon seeing it.
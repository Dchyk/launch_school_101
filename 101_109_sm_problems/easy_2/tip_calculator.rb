# Easy 2 Question 3 - Tip calculator

# Create a simple tip calculator. 
# The program should prompt for a bill amount and a tip rate. 
# The program must compute the tip and then display both the tip 
# and the total amount of the bill.

p "What is the bill?"

bill = gets.chomp.to_f

p "what is the percentage?"

percentage = (gets.chomp.to_f)/100

tip = bill * percentage

total_bill = bill + tip

puts "The tip is: $#{tip}"
puts "The total is $#{total_bill}"
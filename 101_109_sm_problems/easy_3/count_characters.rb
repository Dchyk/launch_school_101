# Easy 3 Question 3 - Count characters

# count chars in input string, but don't count spaces

# input
# - a string
#
# output
# - an integer
#
# algorithm
# - for 0 up to string length, count characer if != ' '

puts "Please write word or multiple words:"

input_string = gets.chomp

char_count = 0

for idx in 0..(input_string.length)-1
  if input_string[idx] != ' '
    char_count += 1
  end
end

puts "There are #{char_count} characters in '#{input_string}'."

# Launch school solution:

print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."
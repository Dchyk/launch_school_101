# Easy 5 Exercise 10 - Print in box

# Write a method that will take a short line of text, 
# and print it within a box.

# input
# - a string
#
# output
# - a box with the input string in it
#
# rules 
# - the box will be 5 rows high
# - the 1st and 5th rows of the box will be a string of 4 chars to start +--+
# - The 2nd, 3rd and 4th rows will be a string of 4 chars |  |
# - The text input will go in the 3rd row
# 
# algorithm
# - get length of input string, set it equal to chars
# - create 1st row string '+-' + '-'*chars + -+
# - create 2nd row string '| ' + ' '*chars + ' |'
# - create 3rd row string '| ' + input string + ' |'
# - create 4th row string '| ' + ' '*chars + ' |'
# - create 5th row string '+-' + '-'*chars + -+
# - 1st and 5th are the same string, 2nd and 4th are the same string

def print_in_box(str)
  first_row    = '+-' + '-'*str.length + '-+'
  second_row   = '| ' + ' '*str.length + ' |'
  third_row    = '| ' + str + ' |'
  fourth_row   = second_row
  fifth_row    = first_row

  puts first_row
  puts second_row
  puts third_row
  puts fourth_row
  puts fifth_row

end

# Example

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box('Here is some text in a box!')
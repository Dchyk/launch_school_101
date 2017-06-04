# Easy 8 Exercise 10 - Get the Middle Character

# input
# - a string
#
# output rules
# - if string.length.odd? then string[string.length / 2]
# - if string.length.even? then string[(string.length / 2), 2]

def center_of(string)
  middle_char = ''
  if string.length.odd?
    middle_char = string[string.length / 2] 
  elsif string.length.even?
    middle_char = string[(string.length / 2) - 1, 2] 
  end
  middle_char
end

# Examples

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
# Easy 3 Question 8

# Write a method that returns true if the string passed 
# as an argument is a palindrome, false otherwise. 

# input
# - string
#
# output
# - true or false
#
# algorithm
# - compare a string to a reversed version of itself and return true if they are the same

def palindrome?(word)
  reversed_word = word.reverse
  if reversed_word == word
    true
  else
    false
  end
end

# Test cases:

puts palindrome?('madam')
puts palindrome?('Madam')          # (case matters)
puts palindrome?("madam i'm adam") # (all characters matter)
puts palindrome?('356653')
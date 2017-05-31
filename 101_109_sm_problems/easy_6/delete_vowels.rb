# Easy 6 Exercise 2 - Delete vowels

# Write a method that takes an array of strings, and returns an array of the
# same string values, except with the vowels (a, e, i, o, u) removed.

# input
# - an array of strings
#
# output
# - an array of strings with vowels removed
#
# algorithm
# - iterate through the input array and map the value of each element,
#   minus the vowels, into a new array.
# - since each element in the array is a string, we need to iterate 
#   through each character in the string and check if it's vowel,
#   and delete it. 
# - Return the new string, to the new array. 
#
# Rules
# - the block in #map should have a way to delete all vowels 

VOWELS = %w(a e i o u)

def remove_vowels(arr)
  arr.map do |str|
    str.chars do |char|
      str.delete!(char) if VOWELS.include?(char.downcase)
    end
  end
end




# Examples

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
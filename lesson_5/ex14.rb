# Lesson 5 Exercise 14 

# Given this data structure write some code to return an array containing 
# the colors of the fruits and the sizes of the vegetables. 
# The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# input
# - a nested hash where the fruit/vegetable name is the key (strings), and info is an
#   inner hash. In the inner hash, the keys are symbols, and the :type and :size
#   values are strings, while the :colors values are arrays. 
#
# output
# - an array
#
# rules
# - Iterate through the hash keys
# - For each hash key, iterate through its value, the inner hash
# - If :type = 'fruit', then get the value of :colors, capitalize the strings, 
#   and push it into an array (need to iterate through the array and capitalize each string)
# - If :type = 'vegetable', then get the value of :size, upcase the string,
#   and push it to an array

new_array = []

hsh.each do |fruit_or_veg, info|
  if info[:type] == 'fruit'
    new_array << info[:colors].each { |word| word.capitalize! }
  elsif info[:type] == 'vegetable'
    new_array << info[:size].upcase
  end
end

puts new_array 



[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
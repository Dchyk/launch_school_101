# Easy 1 Question 5 - Reverse It (part 1)

# Write a method that takes one argument, a string, 
# and returns the same string with the words in reverse order.
# 
# input 
# - string
#
# output 
# - string
#
# algorithm
# - split the input string into words and save them in an array so we can iterate.
# - Then, iterate through the array, pop-ing off the last array element each time
# - and pushing it into a new string. 
# - Finally, print the string to the screen.

def reverse_sentence(sentence_string)

  if sentence_string.length == 0
    return ''
  else
    sentence_array = sentence_string.split(' ')
    reversed_sentence_string = ''
      while sentence_array.size > 0
        reversed_sentence_string << sentence_array.pop
          if sentence_array.size > 0
            reversed_sentence_string << ' '
          end
      end  
  end
  reversed_sentence_string
end



# Examples

puts reverse_sentence('')
puts reverse_sentence('Hello World')
puts reverse_sentence('Reverse these words')
puts reverse_sentence('A man, a plan, a canal, panama')

puts "------------------------------------"

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'              # Need to account for the spaces between words somehow
puts reverse_sentence('Reverse these words') == 'words these Reverse' # Need to account for the last word not having a space after it
puts reverse_sentence('A man, a plan, a canal, panama') == 'panama canal, a plan, a man, A'

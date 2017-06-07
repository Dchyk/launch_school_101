# input
# - a string
#
# output
# - a string, with integers swapped in for number words

# algorithm
# - split the input string into an array of words, then iterate over this array.
# - map the array into a new array, swapping integers for integer words,
#   then join this mapped array back into a string as the return value.


def word_to_digit(string)
  no_periods = string.split('.')

  new_sentence = no_periods.map do |sentence|
    sentence.split.map do |word|
      case word
      when 'zero'
        '0'
      when 'one'
        '1'
      when 'two'
        '2'
      when 'three'
        '3'
      when 'four'
        '4'
      when 'five'
        '5'
      when 'six'
        '6'
      when 'seven'
        '7'
      when 'eight'
        '8'
      when 'nine'
        '9'
      else
        word
      end
    end.join(' ')
  end

  new_sentence.map do |sentence|
    sentence + '.'
  end.join(' ')
end

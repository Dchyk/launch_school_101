# Medium 2 Exercise 2 - Now I Know my ABCs

# input
# - a string
#
# output rules
# - true if each letter appears only once per block
#
# algorithm
# - [['B', 'O'], ['X', 'K']]

# blocks = [['B', 'O'], ['X', 'K']]

front = 'BXDCNGRFJHVLZ'
back  = 'OKQPATESWUIYM'

blocks = {}

front.chars.each_with_index do |letter, index|
  blocks[letter] = back[index]
end

back.chars.each_with_index do |letter, index|
  blocks[letter] = front[index]
end

BLOCKS = blocks

def block_word?(string)

  letters = string.upcase.chars

  letters.each do |char|

    if letters.include?(BLOCKS[char])
      return false
    else
      return true
    end

  end


end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true
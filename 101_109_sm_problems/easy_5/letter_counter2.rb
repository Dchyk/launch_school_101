# Easy 5 Exercise 7 - Letter Counter 2

# For this I simply checked the Ruby-doc.org string documentation, and finding 
# nothing immediately useful, I googled "ruby strip non alphanumeric",
# and found in Stack overflow a regex gsub to use, and added that to the solution.


def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.gsub(/[^0-9a-z]/i, '').size] += 1
  end
  counts
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

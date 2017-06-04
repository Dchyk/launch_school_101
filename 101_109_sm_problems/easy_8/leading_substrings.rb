# Easy 8 Exercise 3 - Leading Substrings

def substrings_at_start(string)
  strings = []
  chars = 1

  while chars <= string.size
    strings << string[0, chars]
    chars += 1
  end

strings
end

# Examples

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
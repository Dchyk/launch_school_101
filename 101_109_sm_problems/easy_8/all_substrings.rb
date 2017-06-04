# Easy 8 Exercise 4 - All substrings

def substrings_at_start(string)
  strings = []
  chars = 1

  while chars <= string.size
    strings << string[0, chars]
    chars += 1
  end

strings
end

def substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << substrings_at_start(string[index..string.size - 1])
  end
  result
end

puts substrings('abcde')

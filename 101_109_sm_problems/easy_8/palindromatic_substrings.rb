# Easy 8 Exercise 5 - Palindromatic Substrings

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

def palindromes(string)
  substrings(string).flatten.select do |sub_str| 
    sub_str.size > 1 && sub_str == sub_str.reverse
  end 
end


puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

puts palindromes('abcd')
puts palindromes('madam')
puts palindromes('hello-madam-did-madam-goodbye')
puts palindromes('knitting cassettes')
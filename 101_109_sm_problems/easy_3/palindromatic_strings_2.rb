# Easy 3 Question 9 - Palindromatic strings part 2

# Case insensitive 

def real_palindrome?(word)
  word.downcase.gsub(/[^\w\s\d\s+]/, '').gsub(/[[:space:]]/, '') == word.downcase.gsub(/[^\w\s\d]/, '').gsub(/[[:space:]]/, '').reverse
end

puts real_palindrome?('madam')
puts real_palindrome?('Madam')
puts real_palindrome?("Madam, I'm Adam")
puts real_palindrome?('356653')
puts real_palindrome?('356a653')
puts real_palindrome?('123ab321')

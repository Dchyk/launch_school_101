# Easy 8 Exercise 9 - Double Char (Part 2)

CONSONANTS = 'bcdfghjklmnpqrstvwxyz'

def double_consonants(string)
  doubled_consonants = ''

  string.chars.each do |char|
    if CONSONANTS.include?(char.downcase)
      doubled_consonants << char*2
    else
      doubled_consonants << char
    end
  end 

  doubled_consonants
end

# Examples

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""

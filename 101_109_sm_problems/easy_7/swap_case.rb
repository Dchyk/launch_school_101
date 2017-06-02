# Easy 7 Exercise 4 Swap Case

def swapcase(string)
  swapped = string.split('').map do |char|
    if char.upcase == char && char.downcase == char
      char
    elsif char.upcase == char
      char.downcase
    elsif char.downcase == char
      char.upcase
    end
  end
  swapped.join
end

# Examples

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
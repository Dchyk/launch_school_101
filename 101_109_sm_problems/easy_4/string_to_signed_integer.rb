# Wrote this out to make sure I understand the Launch school solution

# It accomplishes the same thing as my code, but in a much more direct way. 


def string_to_signed_integer(string)
  integer_strings = {
    '0' => 0,
    '1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9
  }
  
  negative = false

  if string[0] == '-'
    negative = true
    string.delete!('-')
  elsif string[0] == '+'
    negative = false
    string.delete!('+')
  else
    negative = false
  end

  digits = string.chars.map { |char| integer_strings[char] }

  value = 0

  digits.each { |digit| value = value * 10 + digit }

  if negative 
    value = value-(value*2)
  else
    value
  end

  value

end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
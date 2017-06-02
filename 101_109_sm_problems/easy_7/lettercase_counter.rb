def letter_case_count(string)
  letter_count = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if char.downcase == char && char.upcase == char
      letter_count[:neither] += 1
    elsif char.downcase == char
      letter_count[:lowercase] += 1
    elsif char.upcase == char
      letter_count[:uppercase] += 1
    end      
  end

  letter_count
end


# Examples

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

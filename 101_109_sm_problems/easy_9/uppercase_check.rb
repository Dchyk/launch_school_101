# Easy 9 Exercise 5 - Uppercase Check

def uppercase?(string)
  upper_case = []

  upper_case = string.chars.select do |char|
    char.upcase == char 
  end

  if upper_case.join('') == string
    return true
  end

  false
end

# Examples

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true
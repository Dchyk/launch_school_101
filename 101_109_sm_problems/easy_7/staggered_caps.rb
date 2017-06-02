 # Easy 7 Exercise 5 - Stagger Caps pt. 1

def staggered_case(string)
  staggered = string.chars.map.with_index do |char, index|
    if index.even?
      char.upcase
    elsif index.odd?
      char.downcase
    end
  end
  staggered.join
end

# Examples
  
puts staggered_case('I Love Launch School!')
puts staggered_case('ALL_CAPS')
puts staggered_case('ignore 77 the 444 numbers')

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
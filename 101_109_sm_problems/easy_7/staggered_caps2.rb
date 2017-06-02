# Easy 7 Exercise 6 - Staggered Caps Pt. 2



def staggered_case(string)
  current_char_num = 0 
  staggered = []

  string.chars.each do |char|
    if !('a'..'z').include?(char.downcase)
      staggered << char
    elsif current_char_num.even?
      staggered << char.upcase
      current_char_num += 1
    else
      staggered << char.downcase
      current_char_num += 1
    end
  end
  staggered.join
end

puts staggered_case('I Love Launch School!') # == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') # == 'IgNoRe 77 ThE 444 nUmBeRs'

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS' 
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
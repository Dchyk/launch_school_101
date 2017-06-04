# Easy 8 Exercise 8 - Double Char (Part 1)

def repeater(string)
  doubled = ''

  string.chars.each do |char|
    doubled << char*2
  end 

  doubled
end

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''
# Easy 3 Exercise 6 - exclusive "or"

# write a method named xor that takes two arguments, and returns true 
# if exactly one of its arguments is true, false otherwise.

def xor?(one, two)
  (one && !two) || (two && !one)
end

puts xor?(5.even?, 4.even?) 
puts xor?(5.odd?, 4.odd?) 
puts xor?(5.odd?, 4.even?) 
puts xor?(5.even?, 4.odd?) 
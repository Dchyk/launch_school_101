# Easy 7 Exercise 10 - The End is Near but Not Here

def penultimate(string)
  words = string.split
  words[-2]
end

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'
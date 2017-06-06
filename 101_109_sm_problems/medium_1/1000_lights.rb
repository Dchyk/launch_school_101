# Medium 1 Exercise 4 - 1000 Lights

# input
# - a 1000 element array of "false" indicating the lights are all off
# 1000.times { array << false }

# outout
# - the same array, with true and false indicating which lights are turned
# after 1000 iterations 
#
# algorithm
# - create an array of 1000 falses
# - for i in (1..1000) do 



# 1000.times { array << false }

require 'pry'

array = []

1000.times { array << false}

p array

1.upto(1000) do |counter|
  idx = counter
  while idx <= array.size
    array[idx - 1] = !array[idx - 1]
    idx += counter
  end
  p array
end

array.each_with_index do |status, index|
  puts "Light #{index + 1} is on." if status == true
end
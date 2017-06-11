# input 
# - an integer n 
#
# output
# - an integer
#
# algorithm
# - sum all integers up to n, then square this number. 
# - then sum the squares of all integers up to n, and subtract this 
#   number from the first number

def sum_square_difference(n)  
  (1..n).inject(:+)**2 - (1..n).map { |num| num**2 }.inject(:+)
end

puts sum_square_difference(3)
puts sum_square_difference(10)
puts sum_square_difference(1)
puts sum_square_difference(100)
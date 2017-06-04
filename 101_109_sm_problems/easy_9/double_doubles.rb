# Easy 9 Exercise 2 - Double doubles

# input 
# - an integer
#
# 

def first_half(string)
  string[0..((string.size / 2) - 1)]
end

def second_half(string)
  string[(string.size / 2), (string.size / 2)]
end

def even_digits?(num)
  num.size.even?
end

def is_double?(num)
  even_digits?(num) && first_half(num) == second_half(num)
end


def twice(num)
  result = 0
  string_num = num.to_s

  if is_double?(string_num)
    result = num 
  else
    result = num * 2
  end

  result
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10

puts twice(37)
puts twice(44)
puts twice(334433)
puts twice(444)
puts twice(107)
puts twice(103103)
puts twice(3333)
puts twice(7676)
puts twice(123_456_789_123_456_789)
puts twice(5)
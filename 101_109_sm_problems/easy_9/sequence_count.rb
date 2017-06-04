# Easy 9 Exercise 8 - Sequence count

def sequence(count, first_num)
  sequence = []

  (1..count).each do |num|
    sequence << num * first_num
  end

  sequence
end

# Example

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
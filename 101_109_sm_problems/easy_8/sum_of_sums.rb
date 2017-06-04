# Easy 8 Exercise 1 - Sum of Sums

def sum_of_sums(array)
  idx = array.length - 1
  sum = 0

  while idx >= 0
    sum += array[0..idx].inject(:+)
    idx -= 1
  end

  sum
end

# Examples

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

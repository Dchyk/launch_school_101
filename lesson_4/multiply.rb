# Double numbers

my_numbers = [1, 4, 3, 7, 2, 6]

def multiply(numbers, criterion)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] *= criterion

    counter += 1
  end

  numbers 
end

puts multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]

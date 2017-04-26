# Double numbers

my_numbers = [1, 4, 3, 7, 2, 6]

def double_numbers(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] = numbers[counter] * 2

    counter += 1
  end

  numbers 
end

puts "=> Before the method, this is the value of my_numbers:"

puts my_numbers

puts "=> After the method:"

double_numbers(my_numbers)

puts my_numbers
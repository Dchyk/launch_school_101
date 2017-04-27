# Easy 2 Question 7 - Even numbers

# Print all odd numbers from 1 to 99, inclusive. 
# All numbers should be printed on separate lines.

for number in (1..99) 
  puts number if number % 2 == 0
end


puts "-----method 2-----"

start_num = 1

end_num = 99

while start_num <= end_num
  if start_num % 2 == 0 
    puts start_num
  end
  start_num += 1
end

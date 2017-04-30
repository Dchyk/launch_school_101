# Easy 3 Question 2

puts "==> Enter the first number:"

first_number = gets.chomp.to_i

puts "==> Enter the second number:"

second_number = gets.chomp.to_i

puts "#{first_number} + #{second_number} = #{first_number+second_number}"
puts "#{first_number} - #{second_number} = #{first_number-second_number}"
puts "#{first_number} * #{second_number} = #{first_number*second_number}"
puts "#{first_number} / #{second_number} = #{first_number/second_number}"
puts "#{first_number} % #{second_number} = #{first_number%second_number}"
puts "#{first_number} ** #{second_number} = #{first_number**second_number}"

# Edge cases...

# We could validate input and not allow a 0 for the second number
# Also, if we wanted to use floats, could conver intput by calling "to_f"
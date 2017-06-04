# Easy 8 Exercise 6 - Fizzbuzz

def fizzbuzz(start_num, end_num)
  (start_num..end_num).each do |num|
    if num % 5 == 0 && num % 3 == 0
      puts "FizzBuzz" 
    elsif num % 5 == 0 
      puts "Buzz"
    elsif num % 3 == 0 
      puts "Fizz"
    else
      puts num
    end
  end
end

fizzbuzz(1, 15)
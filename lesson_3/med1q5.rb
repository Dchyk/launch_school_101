# Medium 1 Question 5

# What's wrong with this code?

# Answer: limit is not defined within the method scope and can't be accessed.
# It needs to be passed in as an argument - so I added fib_limit

limit = 15

def fib(first_num, second_num, fib_limit)
  while second_num < fib_limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"
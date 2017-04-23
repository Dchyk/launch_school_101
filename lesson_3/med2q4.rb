# Medium 2 Question 4

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"  # => "pumpkinsrutabaga" - because << mutates the caller, the string object referenced by both
                                                    # my_string and a_string_param is modified directly. Therefore, my_string shows the modified
                                                    # version after tricky_method_two is invoked.
 
puts "My array looks like this now: #{my_array}"    # => ["pumpkins"] - because = never modifies the caller, a new array object is created inside
                                                    # tricky_method_two and is set to the the values to the right. 
                                                    # Outside the method again, my_array continues to reference ["pumpkins"]
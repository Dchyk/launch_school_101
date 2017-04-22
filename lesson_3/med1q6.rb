# Medium 1 Question 6

# How can we refactor this exercise to make the result easier to predict 
# and easier for the next programmer to maintain?

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

# We coul divide into 2 methods and rename them:

def mutate_array(an_array_param)
  an_array_param << "rutabaga"
end

def return_new_string(a_string_param)
  a_string_param += "rutabaga"
end


my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

# or using my new methods:

mutate_array(my_array)

return_new_string(a_string_param)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Launch school solution:

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"             # String#+ method
  an_array_param += ["rutabaga"]           # Array#concat or Array#+ method (does not mutate the caller)

  return a_string_param, an_array_param    # Explicit return of values
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)  # Set my_string and my_array equal to the values returned by no_so_tricky_method
                                                                 # Multiple assignments on one line?

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

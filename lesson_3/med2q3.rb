# Medium 2 Question 3

# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"   # => "pumpkins" - because assignment operators do not mutate the caller,
                                                     # a new string object was created inside the method, which the internal 
                                                     # a_string_param now references. But the external reference of my_string
                                                     # is unchanged

puts "My array looks like this now: #{my_array}"     # => ["pumpkins", "rutabaga"] - because << mutates the caller, the original 
                                                     # my_array is modified, so my_array now points to the modified array. 
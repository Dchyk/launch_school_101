# Medium 1 Question 10

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the output of this code:

puts bar(foo)

# We invoke the method bar, passing in foo as a parameter
# foo has a default parameter of "no", but this doesn't matter, 
# because foo returns "yes" since that's the only expression it contains.

# Therefore, we're invoking method, passing it the value "yes" 

# bar checks if a parameter is being passed, and if it doesn't, is set to "no" by default
# Since the parameter "yes" IS passed in as an argument, then bar
# checks if param == "no"
# Since param is != "no", bar returns "no"



# Hard 1 Question 3

# What will be printed by each of these code groups?

def mess_with_vars(one, two, three)
  one = two                     # one now points to "two" within the method
  two = three                   # two now points to "three" within the method
  three = one                   # three now points to "one" within the method
                                # This shouldn't effect the variables outside 
                                # the method, even though they have the same names. 
                                # Methods can't access variables in another scope.



end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"           # => "one"
puts "two is: #{two}"           # => "two"
puts "three is: #{three}"       # => "three"

# B

puts "---------------"
puts "Set B"
puts "---------------"

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

# Should be the same result as set A, because 
# the method still can't access variables in other
# scopes to affec their assignments. 

puts "one is: #{one}"           # => "one"
puts "two is: #{two}"           # => "two"
puts "three is: #{three}"       # => "three"

# C

puts "---------------"
puts "Set C"
puts "---------------"

def mess_with_vars(one, two, three)
  one.gsub!("one","two")        # Because we passed in a reference to "one" via
                                # the variable one, and are using a mutating method gsub!
                                # on the original object, this should change the object
                                # referenced by one outside the method as well (for all these)

  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"           # => "two"
puts "two is: #{two}"           # => "three"
puts "three is: #{three}"       # =>  "one"
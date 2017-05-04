# Easy 2 Question 9 - String Assignment

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name # => should print out BOB, BOB since both variables 
                     #    are pointing to the object 'Bob,'' and upcase! 
                     #    is a destructive method that mutates the caller. 
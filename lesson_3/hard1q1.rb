# Hard 1 Question 1

# What do you expect to happen when the greeting variable is 
# referenced in the last line of the code below?

if false                    # "False" will evaluate to false, so the
  greeting = “hello world”  # greeting should be set to "hello world"
end

greeting                    # Nothing will be displayed because there's no 
                            # p or puts.

                            # Howeever, the above logic of mine was wrong. 
                            #
                            # The If statement seems to have evaluated to true,
                            # so the variable was not set and returned nil.

if false
  puts "this returned a true value"
else
  puts "this returned a false value"  # This is returned, therefor "if false"
end                                   # must have evaluated to "true"

# Further notes: 
#
# I got tripped up by the true / false...
# the actual point of this exercise was that 
# if you initialize a local variable within an IF block,
# even if that if block doesn't get exectued, 
# the local variable is initialized to nil. 
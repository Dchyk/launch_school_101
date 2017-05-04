# Hard 1 Question 2

# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]     # informal_greeting and greetings[:a] now reference the same object
                                      # This is indexed assignment, which mutates the caller, unlike
                                      # 'normal' assignment which creates a new object and points the variable at it. 

informal_greeting << ' there'         # This modifies the same object as greetings[:a] because greetings[:a]
                                      # and informal_greeting both reference this same object.

puts informal_greeting  #  => "hi there"
puts greetings          # => :a => "hi"   # Wrong - greetings[:a] was modified!
                                          # The correct answer is that greetings now
                                          # outputs ":a => 'hi there'"                                           
# Medium 1 Question 4

#  "Take your pick. Do you like << or + for modifying the buffer?"

# Answer: << seems like the right method because it pushes an object
# on to the end of "buffer" itself and returns the same array.
# Whereas, "+" returns a new array built by concatenation, 
# so it is creating a new object each time that buffer then points at

# Put another way, buffer itself will be modified by rolling_buffer1, so the
# input array that was passed in will be different after rolling_buffer1 returns

# rolling_buffer2 will not alter the callers input argument input_array

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element # Mutates the caller                        
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element] # Does not mutate the caller
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
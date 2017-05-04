# Hard 1 Question 4

# 1. Not returning a false condition
# 2. Not handling the case that IP address components != 4

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")  # Take an input string and break it apart
                                                 # at the periods, creating an array of the elements, and
                                                 # set dot_separated_words to reference this array



  while dot_separated_words.size > 0 do          # Iterate through dot_separated_words, popping off 
                                                 # the last element and testing, until all numbers have been
                                                 # removed from the array/ there are no elements to pop off.  
    word = dot_separated_words.pop

    break unless is_an_ip_number?(word)          # If the tested number is a valid IP number, continue the loop.
                                                 # Otherwise, break the loop.  
  end

  return true                                    # Returns true - seemingly, no matter what else happens with the
                                                 # while loop above.    

end

# My attempt at a solution:

def is_string_valid_ip?(input_string)

  dot_separated_words = input_string.split(".")

  is_valid = ''                                      # Initialize a variable to hold return value of true or false

                                         
    if dot_separated_words.size == 4                 # IF IP address has proper number of elements, enter the loop
      while dot_separated_words.size > 0 do          # Iterate through dot_separated_words, popping off 
                                                     # the last element and testing, until all numbers have been
                                                     # removed from the array/ there are no elements to pop off.  
        word = dot_separated_words.pop

        if !is_an_ip_number?(word)                   # If tested number is NOT an valid IP address, then return false 
          is_valid = false                           # and exit the loop. Otherwise keep testing. 
          break
        end

        is_valid = true                                          
      end
    else                                             # IF IP address did not have 4 elements, do this   
      is_valid = false  
    end

  is_valid                                          # Return the value of is_valid from the entire method.                                    
end

def dot_separated_ip_address?(input_string)

  dot_separated_words = input_string.split(".")

  is_valid = nil

    if dot_separated_words.size == 4
      while dot_separated_words.size > 0 do
        word = dot_separated_words.pop
        if !is_an_ip_number?(word)
          is_valid = false
          break
        else
          is_valid = true
        end
      end
    else
      is_valid = false
    end

  is_valid
end
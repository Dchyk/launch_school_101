# Easy 9 Exercise 7 - Name Swapping



def swap_name(full_name)
  arr = full_name.split 

  "#{arr[1]}, #{arr[0]}"
end



# Example

swap_name('Joe Roberts') == 'Roberts, Joe'
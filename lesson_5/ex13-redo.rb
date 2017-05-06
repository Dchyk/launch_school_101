arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by do |element|
  element.select do |num|    # The tricky part of this question is that you need to notice
    num.odd?                 # that there is only 1 odd integer in each sub array that is different.
  end                        # Since they all start with 1, and they are compared to each other in
end                          # an element-wise order, they are equal to start. ( 1 <=> 1)
                             # So, there is only other one odd integer in each. 
                             # Therefore, we can use #select to spotlight odd integers, and it will
                             # sort only according to THIS integer. 


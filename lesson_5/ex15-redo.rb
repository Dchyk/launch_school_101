arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr = [
  {a: [1, 2, 3]}, 
  {b: [2, 4, 6], c: [3, 6], d: [4]}, 
  {e: [8], f: [6, 10]}
]

arr[0][:a]


arr.select do |element|        # Select each element for which the following block returns true
  element.all? do |key, value| # Iterate through each element in the outer array, which is a hash, and check them all!
    value.all? do |num| 
      num.even? # Check each value of each key-value pair to see if all of them are even integers
    end
  end
end



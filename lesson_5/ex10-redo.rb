arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

arr.map do |element|
  elements = {}                # We need to get a hash back into the array that will
                               # will be returned by #map, so initialize it here
  element.each do |key, value| # Iterate through the key-value pairs in each inner hash
    elements[key] = value + 1  # Add one to each value, and assign it to the new hash we're
  end                          # going to return 

  elements                     # Return the new hash to map to be put into a new array
end

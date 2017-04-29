# Collections exercises - Exercise 4

# Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages_array = ages.to_a.flatten     # Convert ages to an array, then flatten to a 1 dimensional array                           

names_only, ages_only = ages_array.partition do |name_or_age|    # Split ages_array into 2 new arrays,
  name_or_age.is_a?(String)                                      # 1 with only strings and 1 else (will be integers)
end

minimum_age = ages_only.sort.shift                               # Sort integers array, then pop off the first element,
                                                                 # which will be the smallest number/age.
puts minimum_age

# Much easier Launch School way:

ages.values.min                    # Find the minimum value from the ages hash using Hash#values 
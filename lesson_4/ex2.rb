# Collections practice - Exercise 2

# Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total_ages = 0

ages.each {|_, value| total_ages += value}    # '_' in place of 'key' here, to indicate the key won't be used

puts total_ages
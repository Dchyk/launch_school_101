# Collections practice - Exercise 1

# Turn this array into a hash where the names are the keys and the values 
# are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = flintstones.each_with_object({}) do |value, hash|
  hash[value] = flintstones.index(value)
end

puts flintstones_hash
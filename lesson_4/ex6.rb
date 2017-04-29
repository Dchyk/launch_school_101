# Collections exercises - Exercise 6

# Amend this array so that the names are all shortened to 
# just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# My solution:

flintstones.each do |name|
  name.slice!(3, name.length)
end

puts flintstones

# Launch School solution

flintstones.map! do |name|         # Normally .map returns a new array, but using '!' here
  name[0, 3]                       # causes it to mutate (and return) the original array
end
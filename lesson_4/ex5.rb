# Collections exercises - Exercise 5

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

# flintstones.each_with_index do |name, index|
#  puts index if name.start_with?('Be')
# end

flintstones.each_with_index.any? do |name, index|
  if name.start_with?('Be')
    puts index
  end
end

# Launch school solution:

flintstones.index { |name| name[0, 2] == "Be" }    # Return the index of name if the 2 characers in the name value, starting at zero index, are equal to 'Be'
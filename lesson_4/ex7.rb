# Collections exercises - Exercise 7

# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

# My solution:

character_count = {}

statement.split('').each do |character|
  character_count[character] = statement.split('').count(character)
end

puts character_count

# Launch school solution:

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end
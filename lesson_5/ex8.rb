# Lesson 5 Exercise 8

# Using the each method, write some code to output 
# all of the vowels from the strings.

hsh = {first: ['the', 'quick'], 
  second: ['brown', 'fox'], 
  third: ['jumped'], 
  fourth: ['over', 'the', 'lazy', 'dog']
}

hsh.each do |_, value|
  value.each do |word|
    idx = 0
    while idx <= word.length
      if ['a','e','i','o','u'].include?(word[idx])
        puts word[idx]
      end
      idx += 1
    end
  end
end




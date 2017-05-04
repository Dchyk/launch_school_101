sentence = "The rain in Spain falls planetarium mainly on the plain."

sentence_array = sentence.split(' ')

puts sentence_array

idx = 0

current_value = sentence_array[idx]

while idx < sentence_array.length
  if current_value.length <= sentence_array[idx].length
    current_value = sentence_array[idx]
  end
  idx += 1
end

puts current_value
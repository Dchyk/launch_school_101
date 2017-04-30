array = ['123', '456', '789', '101_112']

odd_integers = []

array.each do |num_string|
  if num_string.to_i.odd?
    odd_integers << num_string
  end
end

puts "Original array: #{array}"

puts "Odd integers: #{odd_integers}"
# Medium 2 Question 5

# How could the unnecessary duplication in this method be removed?

# def color_valid(color)
#  if color == "blue" || color == "green"
#    true
#  else
#    false
#  end
# end

# One way to simplify: 

def color_valid?(color)
  color == "blue" || color == "green"
end

puts "blue: #{color_valid?("blue")}"
puts "------------------"
puts "orange: #{color_valid?("orange")}"
puts "------------------"
puts "green: #{color_valid?("green")}"

# Another way to simplify:

def color_valid(color)
  case color
  when "blue", "green"
    true
  else
    false
  end
end

puts "blue: #{color_valid("blue")}"
puts "------------------"
puts "orange: #{color_valid("orange")}"
puts "------------------"
puts "green: #{color_valid?("green")}"
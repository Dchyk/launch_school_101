# Easy 2 Question 4 - When will I retire?

# input
# - integer
#
# output
# - current year, year + (retirement age - age), (retirement age - age)

CURRENT_YEAR = 2017

# current_year = Time.now.year

puts "What is your age?"

current_age = gets.chomp.to_i

puts "At what age would you like to retire?"

retirement_age = gets.chomp.to_i

retirement_year = CURRENT_YEAR + (retirement_age - current_age)

years_left = retirement_year - CURRENT_YEAR

puts "It's #{CURRENT_YEAR}. You will retire in #{retirement_year}."
puts "You have only #{years_left} years of work to go!"
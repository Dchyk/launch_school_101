# Easy 4 Exercise 2 - What Century is That?

# Write a method that takes a year as input and returns 
# the century. The return value should be a string that 
# begins with the century number, and ends with st, nd, rd, or th 
# as appropriate for that number.

# input
# - an integer
#
# output
# - an integer + string
#
# algorithm
# - (year -1) % 10 = century 
# - new centuries start with -01 - so exception for 00
# - year % 10 = last number of century
# - apply rules to match the proper ending integer with the 2 letter abbreviation:
# - 1 - st
# - 2 - nd
# - 3 - rd
# - 0, 4-9 - th
# - except 11, 12, 13 - th
# 

def century(year)
  century_number = 0
  suffix = ''


  if year.to_s.end_with?('00')
    century_number = year/100
  else
    century_number = (year/100) + 1
  end

  century_last_digit = century_number % 10

  if century_last_digit == 1
    if century_number == 11 || century_number % 100 == 11
      suffix = 'th'
    else
      suffix = 'st'
    end
  elsif century_last_digit == 2
    if century_number == 12 || century_number % 100 == 12
      suffix = 'th'
    else
      suffix = 'nd'
    end
  elsif century_last_digit == 3
    if century_number == 13 || century_number % 100 == 13
      suffix = 'th'
    else
      suffix = 'rd'
    end
  else
    suffix = 'th'
  end

  century_with_suffix = century_number.to_s + suffix 

end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'

puts "----Years----"

puts century(2000) 
puts century(2001) 
puts century(1965) 
puts century(256) 
puts century(5) 
puts century(10103) 
puts century(1052) 
puts century(1127) 
puts century(11201) 
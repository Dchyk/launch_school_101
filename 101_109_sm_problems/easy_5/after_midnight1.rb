










# input
# - a positive or negative integer representing seconds
#
# output
# - a time in the format hours:minutes
# - maximum is 23:59
# - minimum is 00:00
#
# rules
# - negative numbers are subtracted from 00:00 in base 60
# - positive numbers are added to 00:00 in base 60
# - 1440 seconds in 24 hours
# - minutes are 00 through 59
# - hours are 00 through 23
# 
#
# algorithm
# - if the input number is greater than 1440, subtract 1440
# - if the input number is less than 1440, add 1440. Repeat until the number is positive.
# - divide the number by 60 to get the hours
# - modulus the number by 60 to get the minutes

require 'pry'

def time_of_day(num)
hours   = 0
minutes = 0
hours_string = ''
minutes_string = ''

  while num >= 1440
    num -= 1440
  end

  while num < 0 
    num += 1440
  end

  if num == 0
    hours_string = "00"
    minutes_string = "00"
  else
    hours   = num/60
    minutes = num%60
  end

  if hours <= 9 
    hours_string = "0#{hours}"
  else
    hours_string = hours.to_s
  end

  if minutes <= 9
    minutes_string = "0#{minutes}"
  else 
    minutes_string = minutes.to_s
  end

  "#{hours_string}:#{minutes_string}"
end



# Examples


puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"

puts time_of_day(0)
puts time_of_day(-3)
puts time_of_day(35)
puts time_of_day(-1437)
puts time_of_day(3000)
puts time_of_day(800)
puts time_of_day(-4231)
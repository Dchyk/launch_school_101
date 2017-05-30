# Easy 5 Exercise 3 - After Midnight (part 2)

# Write two methods that each take a time of day in 24 hour format, and return 
# the number of minutes before or after midnight, respectively. 
# Both methods should return a value in the range 0..1439

# input
# - a string in the format '00:00'
# 
# output
# - an integer between 0 and 1439
#
# rules/algorithm
# - first split the input string at the colon so we have two 2-digit integers

def after_midnight(time)
  hours, minutes = time.split(':')

  minutes_after_midnight = hours.to_i * 60 + minutes.to_i

  if minutes_after_midnight == 1440
    0
  else
    minutes_after_midnight
  end
end

def before_midnight(time)
  minutes_before_midnight = 1440 - after_midnight(time)

  if minutes_before_midnight == 1440
    0
  else
    minutes_before_midnight
  end
end

# Examples

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0

puts after_midnight('00:00')
puts before_midnight('00:00')
puts after_midnight('12:34')
puts before_midnight('12:34')
puts after_midnight('24:00')
puts before_midnight('24:00')
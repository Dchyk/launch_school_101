# Easy 6 Exercise 1 - Cute angles

# input 
# - a float between 0 and 360
#
# output
# - a string showing degrees, minutes and seconds
#
# rules
# - the degree will be the input float truncated
# - to get the minutes, we need that truncated bit - so the input float
#   modulus 1, rounded to 3, times 60 to get the minutes
# - now the minutes should be truncated as well to get a 2 digit number
#  - to get the seconds, 
#
#
# algorithm
# - truncate the input float and set as the degrees
# - take the input float, modulus by 1 to get the decimals, multiply this number
#   by 60 to get the minutes, and save this value to be used for the seconds 
#   calculation - and then truncate this number and return to get the final minutes
#   number. 
#   If the minutes are <= 9, add a leading 0 to the number in the returned string. 
# - Take the saved minutes number, and modulus by 1 to get the decimals, then multiply
#   this number by 60 to get the seconds, and truncate this number - this will be the final number
#   of seconds. 
# - If the seconds are <= 9, add a leading 0 to the number in the returned string. 

DEGREE = "\x00\xB0"

def dms(int)
  degrees = int.truncate
  minutes = ((int%1)*60).truncate
  seconds = ((((int%1)*60)%1)*60).truncate

  minutes_str = minutes.to_s + "'"
  seconds_str = seconds.to_s + '"'

  minutes_str = "0#{minutes_str}" if minutes <= 9
  seconds_str = "0#{seconds_str}" if seconds <= 9 

  "#{degrees}°" + minutes_str + seconds_str 
end



# Examples 

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
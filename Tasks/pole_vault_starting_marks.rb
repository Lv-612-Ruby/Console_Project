def starting_mark(height)
  m = (10.67 - 9.45) / (1.83 - 1.52)
  res1 = ((m * height + 10.67 - m * 1.83) * 100) / 100
  res = res1.round(2)
  return res
end

puts starting_mark(1.52) #9.45
# puts starting_mark(1.83) #10.67
# puts starting_mark(1.22) #8.27
# puts starting_mark(2.13) #11.85
# puts starting_mark(1.75) #10.36
#
# You are given the following two guidelines to begin with:
# (1) A vaulter with a height of 1.52 meters should start at 9.45 meters on the runway.
# (2) A vaulter with a height of 1.83 meters should start at 10.67 meters on the runway.
#
#
# You will receive a vaulter's height in meters
# (which will always lie in a range between a minimum of 1.22 meters and a maximum of 2.13 meters).
# Your job is to return the best starting mark in meters, rounded to two decimal places.
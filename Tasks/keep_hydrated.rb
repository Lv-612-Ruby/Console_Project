def litres(time)
  l = time * 0.5
  return l.floor
end

puts litres(2) #1
# puts litres(1) #0
# puts litres(10) #5
# puts litres(1.4) #0
# puts litres(12.3) #6
# puts litres(0.82) #0
# puts litres(11.8) #5
# puts litres(1787) #893
# puts litres(0) #0
# puts litres(5.5) #2
#
# Nathan loves cycling.
#
# Because Nathan knows it is important to stay hydrated, he drinks 0.5 litres of water per hour of cycling.
#
# You get given the time in hours and you need to return the number of litres Nathan will drink, rounded to the smallest value.
#
# For example:
#
# time = 3 ----> litres = 1
#
# time = 6.7---> litres = 3
#
# time = 11.8--> litres = 5


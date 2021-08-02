def new_avg(arr,navg)
  sum = 0
  for el in arr
    sum += el     #find sum of array
  end

  resault =  (arr.count + 1) * navg - sum #looking for last donation
  if resault >= 0 # check if last donation isnot negative
    puts "new_avg(#{arr},#{navg}) should return #{resault}" #if true
  else
    puts "new_avg(#{arr},#{navg})" # if false
    puts "should raise "
  end

end
new_avg([14, 30, 5, 7, 9, 11, 15],92)
puts()
new_avg([14, 30, 5, 7, 9, 11, 15],2)

def replicate(times, number)
  arr = Array.new
  count = 0

  while times > count
    arr.append(number)
    count += 1
  end
  puts "---------------------"
  return arr

end


puts replicate(3,5) #[5, 5, 5] -- right answer
puts replicate(5,1) #[1, 1, 1, 1, 1] -- right answer
puts replicate(0,12)  #[] -- right answer
puts replicate(-1,12) # [] -- right answer
puts replicate(8,0) #[0, 0, 0, 0, 0, 0, 0, 0]-- right answer
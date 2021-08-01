def replicate(times, number)
  arr = Array.new
  count = 0

  while times > count
    arr.append(number)
    count += 1
  end
  return arr

end

puts ("input: 3, 5 ")
print "Output: "
print replicate(3,5) #[5, 5, 5] -- right answer
# puts replicate(5,1) #[1, 1, 1, 1, 1] -- right answer
# puts replicate(0,12)  #[] -- right answer
# puts replicate(-1,12) # [] -- right answer
# puts replicate(8,0) #[0, 0, 0, 0, 0, 0, 0, 0]-- right answer
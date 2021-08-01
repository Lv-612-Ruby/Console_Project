
#kata 7
#https://www.codewars.com/kata/recursive-replication
#
#
#You need to design a recursive function called replicate which will receive arguments times and number.
# The function should return an array containing repetitions of the number argument.
# For instance, replicate(3, 5) should return [5,5,5].
# If the times argument is negative, return an empty array.
# As tempting as it may seem, do not use loops to solve this problem.


def replicate(times, number)
  arr = Array.new
  count = 0

  while times > count
    arr.append(number)
    count += 1
  end
  arr
end

puts ("Input: 3, 5 ")
print "Output: "
print replicate(3,5) #[5, 5, 5] -- right answer
# puts replicate(5,1) #[1, 1, 1, 1, 1] -- right answer
# puts replicate(0,12)  #[] -- right answer
# puts replicate(-1,12) # [] -- right answer
# puts replicate(8,0) #[0, 0, 0, 0, 0, 0, 0, 0]-- right answer
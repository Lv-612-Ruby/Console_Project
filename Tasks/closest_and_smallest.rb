#kata 5
#https://www.codewars.com/kata/5868b2de442e3fb2bb000119
#we need to get a weight it's the sum of  digits
#the smallest difference of weights ie that are the closest
# with the smallest weights
# and with the smallest indices (or ranks, numbered from 0) in strng
# #weights are 4, 6, 16, 18, 2 (ie 2, 4, 6, 16, 18)sorted
# # 2000 and 103 have for weight 2 and 4, their indexes in strng are 4 and 0.

def closest(strng)
  return [] if strng.empty?

  nums = strng.split # Create array nums
  i = 0
  l = []
  l1 = []
   for n in nums do
     l += [[n.chars.map(&:to_i) #create new list for each nums by 1 index
             .reduce(&:+), i, n.to_i, ]] # Sum all num
     i += 1
   end

   arr = l.sort
   t = (1...arr.length).map { |i| [arr[i][0]-arr[i-1][0], i] }.min[1] #calculate the difference
  [arr[t - 1], arr[t]] #rights displays
end

puts "Input: 103 123 4444 99 2000"
print "Output: "
print closest("103 123 4444 99 2000") #[[2, 4, 2000], [4, 0, 103]]







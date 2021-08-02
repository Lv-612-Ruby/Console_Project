#kata 8
#https://www.codewars.com/kata/to-square-root-or-not-to-square-root
#
#Write a method, that will get an integer array as parameter and will process every number from this array.
# Return a new array with processing every number of the input-array like this:
#
# If the number has an integer square root, take this, otherwise square the number.
# [4,3,9,7,2,1] -> [2,9,3,49,4,1]

def square_or_square_root(arr)
  result = Array.new
  for x in arr
    root = x ** 0.5 #take the square

    if (Math.sqrt(x) % 1).zero?
      result.append(root)
    else
      result.append(x**2)
    end
  end
  result
end

puts "Input: input: 4, 3, 9, 7, 2, 1 "
print "Output: "
p square_or_square_root([4, 3, 9, 7, 2, 1 ]) #[2, 9, 3, 49, 4, 1] -- right answer
# puts square_or_square_root([100, 101, 5, 5, 1, 1]) #[10, 10201, 25, 25, 1, 1] -- right answer
# puts square_or_square_root([1, 2, 3, 4, 5, 6] )# [1, 4, 9, 2, 25, 36] -- right answer

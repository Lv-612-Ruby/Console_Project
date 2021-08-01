def square_or_square_root(arr)
  result = Array.new
  for x in arr
    root = x ** 0.5 #(1/2) - why when we use x ** (1/2) we receive int and not right answers; **0.5 and **(1/2) - is not the same?

    if (Math.sqrt(x) % 1).zero?
      result.append(root)
    else
      result.append(x**2)
    end
  end
  puts "----------------------------"
  return result
end


puts square_or_square_root([4, 3, 9, 7, 2, 1 ]) #[2, 9, 3, 49, 4, 1] -- right answer
puts square_or_square_root([100, 101, 5, 5, 1, 1]) #[10, 10201, 25, 25, 1, 1] -- right answer
puts square_or_square_root([1, 2, 3, 4, 5, 6] )# [1, 4, 9, 2, 25, 36] -- right answer

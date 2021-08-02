#https://www.codewars.com/kata/easy-line

def easy_line(n)
  n == 0 ? 1 : factorial(2*n) / factorial(n)**2
end

def factorial(n)
  n == 0 ? 1 : (1..n).inject(:*)
end

puts easy_line(7)  # => 3432
puts easy_line(13) # => 10400600
puts easy_line(17) # => 2333606220
puts easy_line(19) # => 35345263800
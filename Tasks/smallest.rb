#https://www.codewars.com/kata/573992c724fc289553000e95/train/ruby

def smallest(n)
  result = [n]
  size = n.to_s.size
  size.times do |i1|
    size.times do |i2|
      digits = n.to_s
      x = digits.slice!(i1)
      digits.insert(i2, x)
      result = [digits.to_i, i1, i2] if digits.to_i < result.first
    end
  end
  result
end

puts smallest(261235) # => 126235  2  0
puts smallest(209917) # => 29917   0  1
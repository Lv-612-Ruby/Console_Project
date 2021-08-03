#https://www.codewars.com/kata/57e92e91b63b6cbac20001e5/train/ruby

def duty_free(price, discount, holiday_cost)
  totalPrice = holiday_cost / (price * discount * 0.01)
  return totalPrice.to_i
end

puts duty_free(12, 50, 1000) 
# => 166
puts duty_free(17, 10, 500)              
# => 294
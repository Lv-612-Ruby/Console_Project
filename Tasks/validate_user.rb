#https://www.codewars.com/kata/56a3f08aa9a6cc9b75000023/train/ruby

def validate_usr(username)
  username.match?(/^[a-z0-9_]{4,16}$/)
end

puts validate_usr('asddsa') # => true
puts validate_usr('a')      # => false
puts validate_usr('Hass')   # => false
puts validate_usr('')       # => false
puts validate_usr('____')   # => true
#Kata 8 string_to_number

def string_to_number(string)
  string.to_i
end

def run_task
  print 'Enter your string: '
  string = gets.chomp
  puts "Your new number is: #{string_to_number(string)}"
end

puts run_task

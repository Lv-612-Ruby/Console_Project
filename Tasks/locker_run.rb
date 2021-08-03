#Kata 6 Rainfall

def locker_run x
  (1..Math.sqrt(x)).map { |i| i * i} #here we choose an array from 1 to x(variable)
end#and by .map method we define which lockers will be opened after end of the run

def run_task
  print 'Enter total number of lockers:'
  x = gets.chomp.to_i #here we define the x variable dy user input.
  puts "Here is an array filled with the locker numbers of
  those which are open at the end of his run : #{locker_run(x)}"
end

#puts locker_run 100
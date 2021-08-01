require_relative 'menu'
require 'colorize'

loop do
  puts
  puts 'Write your command  '.blue
  input = gets
  console = input.split(' ')
  if console.length == 1
    if console[0] == 'help' or console[0] == 'authors'  or console[0] == 'tasks' or console[0] == 'tests' or console[0] == 'testsAll'  or console[0] == 'exit'
      comand = "Menu." + console[0]
      eval(comand)
    end
  else
      comand = "Menu." + console[0] + "('" + console[1] + "')"
      eval(comand)
    end

end


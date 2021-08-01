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
  elsif console.length > 1
    if console[0] == 'show' or console[0] == 'run' or console[0] == 'runtest' or console[0] == 'test'
      comand = "Menu." + console[0] + "('" + console[1] + "')"
      eval(comand)

    end
  else
    puts 'It is wrong command! Use \'help\' command.'
  end
end
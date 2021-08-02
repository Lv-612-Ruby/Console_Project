require_relative 'menu'
require 'colorize'


begin
  loop do
    puts
    puts 'Write your command  '.blue
    input = gets
    console = input.split(' ')
    if console.length == 1
      if console[0] == 'help' or
         console[0] == 'authors' or
         console[0] == 'tasks' or
         console[0] == 'tests' or
         console[0] == 'link_to_task'

        comand = "Menu." + console[0]
        eval(comand)
      end
    else
        comand = "Menu." + console[0] + "('" + console[1] + "')"
        eval(comand)
      end
  rescue
    "This is the issue"
  end

end
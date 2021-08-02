require 'colorize'
class Menu
  def self.help
    puts "This is the help menu."

    puts "    help - displays all commands"
    puts
    puts "    tasks - displays all tasks".blue
    puts "    tests - displays tests".blue
    puts "    testsAll - displays all tests".blue
    puts
    puts "    runtest file_name – launches the test contained in the file file_name".red
    puts "    runtask file_name – launches the task contained in the file file_name".red
    puts "    show file_name - shows all the code contained in the file task/test file_name".yellow
    puts
    puts "    authors - info about each of contributors"
  end

  def self.authors
    puts File.read("Authors.txt")
  end

  def self.tests
    puts Dir.entries("Tests").reject {|f| File.directory?(f) || f[0].include?('.')}
  end

  def self.tasks
    puts Dir.entries("Tasks").reject {|f| File.directory?(f) || f[0].include?('.')}
  end

  def self.testsAll
    puts File.read("Test.txt")
  end

  def self.run(item)
    item = 'Tasks/' + item
    require_relative item
  end

  def self.runtest(item)
    directorylist = %x[find . -name '*test.rb' | sort]
    all_tests = directorylist.split(' ')
    all_tests.each do |x|
      system("rspec '#{all_tests[all_tests.index(x)]}'") if x.include? item
    end
    end

  def self.show(item)
    if item.include? 'test'
      item = 'Tests/' + item
    else 
      item = 'Tasks/' + item
    end
    file = File.open(item)
    for line in file 
      if line[0] != "#"
        puts line
      end
    end
  end

end
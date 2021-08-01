class Menu
  def self.help
    puts "This is the help menu."
    puts " help - displays all commands"
    puts " tasks - displays all tasks"
    puts " tests - displays tests"
    puts " testsAll - displays all tests"
    puts " test testfile_name - runs the test testfile_name"
    puts " show file_name - shows all the code contained in the file file_name"
    puts " runtask file_name – launches the task contained in the file file_name"
    puts " runtest file_name – launches the test contained in the file file_name"
  end

  def self.tests
    puts Dir.entries("Tests").reject {|f| File.directory?(f) || f[0].include?('.')}
  end

  def self.tasks
    puts Dir.entries("Tasks").reject {|f| File.directory?(f) || f[0].include?('.')}
  end




end
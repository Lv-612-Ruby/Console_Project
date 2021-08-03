require 'rspec/autorun'
class Test
def locker_run x
    (1..Math.sqrt(x)).map { |i| i * i}
  end

  def run_task
    print 'Enter total number of lockers:'
    x = gets.chomp.to_i
    puts "Here is an array filled with the locker numbers of
    those which are open at the end of his run : #{locker_run(x)}"
  end
end

describe Test do
  test = Test.new

    it "test1" do
        expect(test.locker_run(1)).to eq([1])
    end

    it "test2" do
        expect(test.locker_run(10)).to eq([1,4,9])
    end

    it "test3" do
        expect(test.locker_run(50)).to eq([1,4,9,16,25,36,49])
    end
end
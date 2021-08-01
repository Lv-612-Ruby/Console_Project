# Recursive Replication
#
# https://www.codewars.com/kata/recursive-replication

require 'rspec/autorun'

class Test
  def replicate(times, number)
    arr = Array.new
    count = 0

    while times > count
      arr.append(number)
      count += 1
    end
    puts "---------------------"
    return arr

  end
end

describe Test do
  let(:test) { Test.new}

  it test1" do
    expect(test.replicate(3,5)).to eq([5, 5, 5])
  end

  it "test2" do
    expect(test.replicate(5,1)).to eq([1, 1, 1, 1, 1])
  end

  it "test3" do
    expect(test.replicate(0,12)).to eq([])
  end

  it "test4" do
    expect(test.replicate(-1,12)).to eq([])
  end

  it "test5" do
    expect(test.replicate(8,0)).to eq([0, 0, 0, 0, 0, 0, 0, 0])
  end
end
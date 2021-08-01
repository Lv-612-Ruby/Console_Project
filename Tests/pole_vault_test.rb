# To square(root) or not to square(root)
# https://www.codewars.com/kata/to-square-root-or-not-to-square-root

require 'rspec/autorun'

class Test
  def square_or_square_root(arr)
    result = Array.new
    for x in arr
      root = x ** 0.5

      if (Math.sqrt(x) % 1).zero?
        result.append(root)
      else
        result.append(x**2)
      end
    end
    return result
  end
end

describe Test do
  let(:test) { Test.new}

  it "test1" do
    expect(test.square_or_square_root([4, 3, 9, 7, 2, 1 ])).to eq([2, 9, 3, 49, 4, 1])
  end

  it "test2" do
    expect(test.square_or_square_root([100, 101, 5, 5, 1, 1])).to eq([10, 10201, 25, 25, 1, 1])
  end

  it "test3" do
    expect(test.square_or_square_root([1, 2, 3, 4, 5, 6])).to eq([1, 4, 9, 2, 25, 36])
  end

  it "test4" do
    expect(test.square_or_square_root([0, 0, 2])).to eq([0, 0, 4])
  end

end

require 'rspec/autorun'
class Test
 def closest(strng)
  return [] if strng.empty?

  nums = strng.split # Create array nums
  i = 0
  l = []
  l1 = []
   for n in nums do
     l += [[n.chars.map(&:to_i) #create new list for each nums by 1 index
             .reduce(&:+), i, n.to_i, ]] # Sum all num
     i += 1
   end

   arr = l.sort
   t = (1...arr.length).map { |i| [arr[i][0]-arr[i-1][0], i] }.min[1]
  [arr[t - 1], arr[t]]
  
 end
end
 describe Test do
   test = Test.new

  it "right numbers" do
    expect(test.closest("79257 160 44641 146 386224 147 313622 117 259947 155 58")).to eq([[11, 3, 146], [11, 9, 155]])
    expect(test.closest("444 2000 445 544")).to eq([[13, 2, 445], [13, 3, 544]])
    expect(test.closest("239382 162 254765 182 485944 468751 49780 108 54")).to eq([[9, 1, 162], [9, 7, 108]])
    expect(test.closest("54 239382 162 254765 182 485944 468751 49780 108")).to eq([[9, 0, 54], [9, 2, 162]])
  end

  it "Emty str" do
    expect(test.closest("")).to eq([])
  end

  it 'returns error' do
    expect { test.closest(nil) }.to raise_error(NoMethodError)
    expect { test.closest }.to raise_error(ArgumentError)
  end

 end

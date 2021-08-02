require 'rspec/autorun'

class Rain
 def artificial_rain(garden)
  left_section = 0
  longest_section = 0
  current_section = 1
  for item in 1...garden.length
    if garden[item] < garden[item - 1]
      left_section = item
    elsif garden[item] > garden[item-1]
      longest_section = longest_section < current_section ? current_section : longest_section
      current_section = item - left_section
    end
    current_section+=1
  end
  return longest_section > current_section ? longest_section : current_section
end
end

describe Rain do
  let(:rain) { Rain.new }

  it "right numbers" do
    expect(rain.artificial_rain([4, 2, 3, 3, 2])).to eq(4)
  end
  it "right numbers" do
    expect(rain.artificial_rain([1, 2, 1, 2, 1])).to eq(3)
  end
  it "one number" do
    expect(rain.artificial_rain([2])).to eq(1)
  end
  it "bigger array" do
    expect(rain.artificial_rain([4, 8, 9, 6, 4, 6, 7, 8, 3, 5])).to eq(5)
  end
  it "bigger array" do
    expect(rain.artificial_rain([5, 4, 5, 7, 9, 0, 5, 3, 5, 6, 8, 9, 4, 8, 9, 6, 4, 6, 7, 8, 3, 5])).to eq(6)
  end
end
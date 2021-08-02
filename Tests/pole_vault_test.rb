class PoleVault
  def starting_mark(height)
    m = (10.67 - 9.45) / (1.83 - 1.52)
    res1 = ((m * height + 10.67 - m * 1.83) * 100) / 100
    res = res1.round(2)
    return res
  end
end

describe PoleVault do
  let(:mark) { PoleVault.new }

  it "right number" do
    expect(mark.starting_mark(1.52)).to eq(9.45)
  end
  it "bigger number" do
    expect(mark.starting_mark(2.02)).to eq(11.42)
  end
  it "min value" do
    expect(mark.starting_mark(1.22)).to eq(8.27)
  end
  it "max value" do
    expect(mark.starting_mark(2.13)).to eq(11.85)
  end
end
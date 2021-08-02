class KeepHydrated
  def litres(time)
    l = time * 0.5
    return l.floor
  end
end

describe KeepHydrated do
  let(:keep) { KeepHydrated.new }

  it "right number" do
    expect(keep.litres(2)).to eq(1)
  end
  it "big number" do
    expect(keep.litres(2500)).to eq(1250)
  end
  it "zero" do
    expect(keep.litres(0)).to eq(0)
  end
  it "negative number" do
    expect(keep.litres(-5)).to eq(0)
  end
end


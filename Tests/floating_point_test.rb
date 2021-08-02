require 'rspec/autorun'

class FloatingPointApproximation
  def f (x)
    x / (((x + 1)**0.5) + 1)
  end
end

describe FloatingPointApproximation do
  let(:approximation) { FloatingPointApproximation.new }

  it "right numbers" do
    expect(approximation.f(1.4e-09)).to eq(6.999999997549999e-10)
  end
  it "right numbers" do
    expect(approximation.f(2.6e-08)).to eq(1.29999999155e-08)
  end
  it "right numbers" do
    expect(approximation.f(5.0e-06)).to eq(2.499996875007812e-06)
  end
  it "right numbers" do
    expect(approximation.f(2.4e-07)).to eq(1.1999999280000085e-07)
  end
end


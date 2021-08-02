require 'rspec/autorun'
class Converter
 def converter(mpg)
  (mpg*(1.609344/4.54609188)).round(2)
 end
end

describe Converter do
  converter = Converter.new

  it "0" do
    expect(converter.converter(0)).to eq(0)
  end

  it "positive number" do
    expect(converter.converter(2)).to eq(0.71)
  end

  it "big number" do
    expect(converter.converter(2560)).to eq(906.26)
  end

  it "negative number" do
    a = 0
    expect(converter.converter(-2)).to be < a
  end

end

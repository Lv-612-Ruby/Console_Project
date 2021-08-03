require 'rspec/autorun'

require_relative '../Tasks/gap_in_primes'

RSpec.describe '#gap' do

  it "right number 1" do
    expect(gap(2,100,110)).to eq([101, 103])
  end

  it "right number 2" do
    expect(gap(4,100,110)).to eq([103, 107])
  end

  it "right number 3" do
    expect(gap(6,100,110)).to eq(nil)
  end

  it "right number 4" do
    expect(gap(10,300,400)).to eq([337, 347])
  end

  it 'returns error' do
    expect { gap }.to raise_error(ArgumentError)
  end
end
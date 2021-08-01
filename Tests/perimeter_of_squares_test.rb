#https://www.codewars.com/kata/559a28007caad2ac4e000083/train/ruby
# kata 5


require 'rspec/autorun'
require_relative '../Tasks/perimeter_of_squares.rb'

RSpec.describe '#perimeter' do

  it "right number 1" do
    expect(perimeter(7)).to eq(216)
  end

  it "right number 2" do
    expect(perimeter(100)).to eq(6002082144827584333104)
  end

  it "right number 3" do
    expect(perimeter(500)).to eq(2362425027542282167538999091770205712168371625660854753765546783141099308400948230006358531927265833165504)
  end

  it 'returns error' do
    expect { perimeter }.to raise_error(ArgumentError)
  end
end


#https://www.codewars.com/kata/formatting-decimal-places-number-0



require 'rspec/autorun'

class Calculator
  def round(number)
    round = number.round(2) #round with the round function
    #puts "#{number} is rounded #{round}"
    return round
  end
end

describe Calculator do
  let(:calculator) { Calculator.new}

  it "right number  1" do
    expect(calculator.round(4.659725356)).to eq(4.66)
  end


  it "right number  2" do
    expect(calculator.round(173735326.3783732637948948)).to eq(173735326.38)
    end

  it "right number  3" do
    expect(calculator.round(4.653725356)).to eq(4.65)
  end

  it "0 - zero " do
    expect(calculator.round(0)).to eq(0)
  end
end
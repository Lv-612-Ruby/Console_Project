#https://www.codewars.com/kata/wilson-primes

# WILSON = [1, 5, 13, 563, 5971, 558771, 1964215, 8121909, 12326713, 23025711, 26921605, 341569806, 399292158]# right code
# def am_I_Wilson(p)
#   WILSON.include? p
# end

require 'rspec/autorun'
require 'prime'

class Calculator
  def wilson(p)
    if  p.prime? # check if number is prime
      n =  ((1..p-1).reduce(:*) + 1) / (p * p).to_f  #count "n"
      if n % 1   == 0 # check if number is whole
        return true
      else
        return false
      end
    end
  end
end

describe Calculator do
  let(:calculator) { Calculator.new}

  it "right number " do
    expect(calculator.wilson(5)).to eq(true)
  end

  it "not right number " do
    expect(calculator.wilson(4)).to eq(nil)
  end

  it "right big number " do
    expect(calculator.wilson(399292158)).to eq(nil)
  end

  it "0 - zero " do
    expect(calculator.wilson(0)).to eq(nil)
  end
end

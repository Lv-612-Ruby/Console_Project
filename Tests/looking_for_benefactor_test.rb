#Looking for a benefactor
#https://www.codewars.com/kata/looking-for-a-benefactor


require 'rspec/autorun'


class Calculator
  def new_avg(arr,navg)
    sum = 0
    for el in arr
      sum += el     #find sum of array
    end
    resault =  (arr.count + 1) * navg - sum #looking for last donation
    if resault >= 0 # check if last donation isnot negative
      return resault #use 'resaul.ceil' for right answer
    else
      return false# if false

    end
  end


end

describe Calculator do
  let(:calculator) { Calculator.new}

  it "right number 1" do
    expect(calculator.new_avg([14, 30, 5, 7, 9, 11, 16], 90)).to eq(628)
  end

  it "right number 2" do
    expect(calculator.new_avg([14, 30, 5, 7, 9, 11, 15], 92)).to eq(645)
  end

  it "right number 3" do
    expect(calculator.new_avg([14, 30, 5, 7, 9, 11, 15], 92.6)).to eq(650) # ERROR
  end


  it "0 - zero " do
    expect(calculator.new_avg([0], 0)).to eq(0)
  end

end

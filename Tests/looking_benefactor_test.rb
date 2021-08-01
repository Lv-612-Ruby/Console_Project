#https://www.codewars.com/kata/wilson-primes


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

# describe Calculator do
#   let(:calculator) { Calculator.new}
#
#   it "right number 1" do
#     expect(calculator.new_avg([14, 30, 5, 7, 9, 11, 16], 90)).to eq(628)
#   end
#
#   it "right number 2" do
#     expect(calculator.new_avg([14, 30, 5, 7, 9, 11, 15], 92)).to eq(645)
#   end
#
#   it "right number 3" do
#     expect(calculator.new_avg([14, 30, 5, 7, 9, 11, 15], 92.6)).to eq(650) # ERROR
#   end
#
#
#   it "0 - zero " do
#     expect(calculator.new_avg([0], 0)).to eq(0)
#   end
describe 'new_avg' do
  context 'returns right values' do
    it 'returned 9 with arguments ([1,2], 4)' do
      expect(new_avg([1, 2], 4)).to eq(9)
    end
    it 'returned 58430 with arguments [1400.25, 30000.76, 5.56, 7, 9, 11, 15.48, 120.98], 10000)' do
      expect(new_avg([1400.25, 30_000.76, 5.56, 7, 9, 11, 15.48, 120.98], 10_000)).to eq(58_430)
    end
    it 'returned 90 with arguments ([], 90)' do
      expect(new_avg([], 90)).to eq(90)
    end
    it 'returned Integer' do
      expect(new_avg([3, 4], 4).class).to eq(Integer)
    end
    it 'should not raise any errors' do
      expect { new_avg([3, 4], 100_000) }.not_to raise_error
    end
  end
end


end

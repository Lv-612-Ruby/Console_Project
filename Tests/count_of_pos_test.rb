require 'rspec/autorun'
class Test
def count_positives_sum_negatives(lst)
    return [] if lst.nil? || lst.empty?
  
    [lst.reject { |x| x < 1 }.count, (lst.reject { |x| x > -1 }).sum]
  end
end
 
describe Test do
      let(:test) { Test.new}

      it "test1" do
          expect(test.count_positives_sum_negatives([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15])).to eq([10, -65])
      end
      it "test2" do
          expect(test.count_positives_sum_negatives([-1])).to eq([0,-1])
      end
      it "test3" do
          expect(test.count_positives_sum_negatives([0,0,0,0,0,0,0,0,0])).to eq([0,0])
      end
          
      it "test4" do
          expect(test.count_positives_sum_negatives([])).to eq([])
      end
    end
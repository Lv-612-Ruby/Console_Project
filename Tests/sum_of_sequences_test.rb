require 'rspec/autorun'

class SumOfSequences
  def sequence_sum(begin_number, end_number, step)
    return 0 if begin_number > end_number
    begin_number + sequence_sum(begin_number + step, end_number, step)
  end
end

describe SumOfSequences do
  let(:sum) { SumOfSequences.new }

  it "right numbers" do
    expect(sum.sequence_sum(2, 2, 2)).to eq(2)
  end
  it "bigger numbers" do
    expect(sum.sequence_sum(2, 24, 22)).to eq(26)
  end
  it "begin > end" do
    expect(sum.sequence_sum(16, 15, 3)).to eq(0)
  end
    it "negative numbers" do
      expect(sum.sequence_sum(-1, -3, -4)).to eq(0)
    end
end
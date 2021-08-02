 require 'rspec/autorun'
class Where
 def where_is_he(p, bef, aft)
   [p-bef,aft+1].min
 end
end

describe Where do
  where = Where.new

  it "rigth number" do
    expect(where.where_is_he(7,2,3)).to eq(4)
  end

  it "big numbers" do
    expect(where.where_is_he(723,45,599)).to eq(600)
  end

  it "check if he's number is less then count of people" do
    expect(where.where_is_he(5,4,3)).to be > 0 and be < 5
  end

end

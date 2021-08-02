 require 'rspec/autorun'
 class Test
def find_nb(m)
  n, i = 0, 0

  while m > n
    i += 1
    n = n + (i)**3

  end

   if n  != m
     return -1
   else
    return  i
    end

  end
 end


describe Test do
  test = Test.new

  it "rigth number" do
    expect(test.find_nb(4183059834009)).to eq(2022)
  end

  it "return -1" do
    expect(test.find_nb(24723578342962)).to eq(-1)
  end

  it "0" do
    expect(test.find_nb(0)).to eq(0)
  end

  it 'returns error' do
      expect { test.find_nb(nil) }.to raise_error(NoMethodError)
      expect { test.find_nb }.to raise_error(ArgumentError)
    end

end

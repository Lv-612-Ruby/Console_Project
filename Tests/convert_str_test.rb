require 'rspec/autorun'
class Test
    def string_to_number(s)
        s.to_i
      end
end

describe Test do
    test = Test.new

    it "test1" do
        expect(test.string_to_number("1234")).to eq(1234)
    end

    it "test2" do
        expect(test.string_to_number("605")).to eq(605)
    end

    it "test3" do
        expect(test.string_to_number("1405")).to eq(1405)
    end

    it "test4" do
        expect(test.string_to_number("-7")).to eq(-7)
    end
end
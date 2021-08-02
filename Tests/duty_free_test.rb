require 'rspec/autorun'
class Test
def duty_free(price, discount, holiday_cost)
  totalPrice = holiday_cost / (price * discount * 0.01)
  return totalPrice.to_i
end
end

describe Test do
  test = Test.new
  it 'return price' do
    expect(test.duty_free(10, 20, 30)).to eq(15)
    expect(test.duty_free(1, 2, 3)).to eq(150)
    expect(test.duty_free(13, 2, 3)).to eq(11)
    expect(test.duty_free(41, 232, 123)).not_to eq(20)
    expect(test.duty_free(451, 2342, 743)).not_to eq(422)
    expect(test.duty_free(927, 22, 927)).not_to eq(1235)
  end
end
# #kata 6
# #https://www.codewars.com/kata/help-the-bookseller
#

require 'rspec/autorun'


class Where
  def stockList(arr, arr_2)
    arr_2_uniq = arr_2.uniq
    print "Дано : #{arr}"
    new_array = Array.new
    for el in arr
      firstCharakter =  el[0].to_s  #search First Letter
      lastCharakter = el[/\d+/].to_i # search number
      a = [firstCharakter,lastCharakter] #creat array with First Letter and number
      n = new_array.push(a) # creat Multidimensional Arrays
    end
    print "\nНовий : #{array_letters_flatten =  n}"
    print "\nВідсортований : #{array_with_uniq_letters = array_letters_flatten.group_by(&:first).map { |k,v|
      [k, v.map(&:last).reduce(:+)]
    }}"

    print ("\nПошук за  : #{arr_2_uniq} \n")
    print ("Результат: ")

    new_arr_kv = Array.new
    arr_2_uniq.each do |key_arr_2| #find letters second array
      k = key_arr_2
      array_with_uniq_letters.each do |key,value|  #find first letter and number
        if   key == key_arr_2 # looking for the same letters
          v =  value
          kv = [k,v]
          new_arr_kv.push(kv)
        end
      end
    end

    arr_2_uniq.each do |key_arr_2|
      new_arr_kv.each do |key,value|
        if  key != key_arr_2
          value  = 0
          kv = [key_arr_2,value]
          new_arr_kv.push(kv)
        end
        break
      end
    end
    return new_arr_kv.group_by(&:first).map { |k,v|
      [k, v.map(&:last).reduce(:+)]
    }.sort
  end
end
describe Where do
  where = Where.new

  it "check if he's number is less then count of people" do
    expect(where.stockList(["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"],["A", "B"])).to eq([["A", 200], ["B",1140]])
  end

  it "check if he's number is less then count of people" do
    expect(where.stockList(["CBART 20", "CDXEF 50", "BKWRK 25", "BTSQZ 89", "DRTYM 60"],["A", "B", "C", "W"])).to eq([["A", 0], ["B",114], ["C",70], ["W", 0]])
  end
  it 'returns error' do
    expect { where.stockList }.to raise_error(ArgumentError)
  end
  end

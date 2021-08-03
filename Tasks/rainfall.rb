def mean(town, strng)

  return -1 if (numbers=extract_data(town, strng)).nil?

  numbers.sum/12

end




def variance(town, strng)

  return -1 if (numbers=extract_data(town, strng)).nil?

  mean = numbers.sum/12

  variance =numbers.map {|x| (x-mean)**2} .sum/12

end




def extract_data(town,strng)

  data_hash = strng.split("\n").map{ |str| str.split(":") }.to_h

  return nil if data_hash[town].nil?

  numbers = data_hash[town].scan(/\d+.\d+/).map(&:to_f)

end
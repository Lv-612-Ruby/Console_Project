def converter(mpg)
    mpg_to_kpl(mpg).round(2)
  end
    
  def mpg_to_kpl(mpg)
    kilometers_per_mile = 1.609344
    litres_per_gallon   = 4.54609188
    
    mpg * kilometers_per_mile / litres_per_gallon 
  end

  puts converter(12)
  
  puts converter(24)
  
  puts converter(12.74)
def zeros(n)
    (n/4.000000017).floor
  end
  
  def zeros(n)  
    count = 0
    
    while(n >= 5)
      n /= 5
      count += n
    end
    
    count
  end

  def zeros(n)
    n < 5 ? 0 : (n / 5) + zeros(n / 5)
  end

  def zeros(n)
    cnt = 0
    div = 5
    while n / div > 0 do
      cnt += n/div
      div *= 5
    end
    cnt
  end
  
  puts zeros(12)
 
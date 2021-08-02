
  def stockList(arr, arr_2)
    arr_2_uniq = arr_2.uniq.sort
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

  new = new_arr_kv.group_by(&:first).map { |k,v|
   [k, v.map(&:last).reduce(:+)]
    }.sort
   puts()

    new.each do |key,value|
      print "(#{key} : #{value}) - "

    end

  end



 stockList(["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"],["A", "B", "Z", "Q", "C"])

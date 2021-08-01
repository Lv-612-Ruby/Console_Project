def perimeter(n)
      perimeter = 0
      number = [0, 1]
      for el in 2..n + 1
        number.append( number[el-1] + number[el-2] )
        perimeter = (number) * 4
      end
      perimeter
      sum = 0
      for el in perimeter
        sum += el
      end
      return sum
end

